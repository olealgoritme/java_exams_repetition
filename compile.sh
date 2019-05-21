#!/bin/bash

function compileAll() {
./java_compile_jar.sh com/aggregation/TestAnimal.java
./java_compile_jar.sh com/polymorphism/compiletime/CompileTimePolymorphism.java
./java_compile_jar.sh com/polymorphism/runtime/RuntimePolymorphism.java
}

function compileAggregation() {
    ./java_compile_jar.sh com/aggregation/TestAnimal.java
}

function compileCompiletime() {
    ./java_compile_jar.sh com/polymorphism/compiletime/CompileTimePolymorphism.java
}

function compileRuntime() {
    ./java_compile_jar.sh com/polymorphism/compiletime/CompileTimePolymorphism.java
}

function showHelp() {
echo "------------------------------------"
echo "java jar compiler v1.3.3.7"
echo " "
echo "$0 [options]"
echo " "
echo "options:"
echo "-h, --help             What you are looking at.."
echo "-a, --aggregation      Compiles aggregation package"
echo "-c, --compiletime      Compiles compiletime package"
echo "-r, --runtime          Compiles runtime package"
echo " "
echo "-olealgo@2019"
echo "------------------------------------"
}


# no args
if [ $# -eq 0 ]
 then
 echo "Compiling all packages.."
 compileAll
fi

# with args / options
while test $# -gt 0; do
    case "$1" in -h|--help)
                        showHelp
                        exit 1
                        ;;

                -a|--aggregation)
                        echo "Compiling Aggregation.."
                        compileAggregation
                        exit 1
                        ;;

                -c|--compiletime)
                        echo "Compiling Compiletime.."
                        compileCompiletime
                        exit 1
                        ;;

                -r|--runtime)
                        echo "Compiling Runtime.."
                        compileRuntime
                        exit 1
                        ;;
        esac
done

