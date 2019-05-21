#!/bin/bash

filepath=$1 # entire path including filename
filename=$(basename -- "$filepath") # only filename from file path
file_extension="${filename##*.}"
mainclass="${filename%.*}" # gets filename without extension
folder=$(dirname "${filepath}") # dir name without files

# compile class files first
# full com/package/Main.class

javapkg="${folder////.}" #replaces / with .
#javapkg="${javapkg#?}" # removes first char

echo "[INFO] Input directory: " $folder
echo "[INFO] Compiling java package: " $javapkg
echo "[INFO] Main: " $mainclass "." $file_extension

# compile Main class file in package directory com/company/Main.java
javac $filepath

# create jar file of all class files in com/package/
jaroutput="$javapkg.jar"
jar cf $jaroutput $folder
echo "[INFO] Compilg and running java JAR pkg: " $jaroutput
echo "[CMD] java -cp $jaroutput $javapkg.$mainclass"
echo "-----------------------------------------------------"
java -cp $jaroutput $javapkg.$mainclass

