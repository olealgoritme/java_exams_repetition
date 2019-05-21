#!/bin/bash

function compileAll() {
    compileAggregation
    compileCompiletime
    compileRuntime
}

function compileAggregation() {
    echo ""
    echo "[ --- Compiling Aggregation --- ]"
    echo ""
    rm -rf com/aggregation/*.class
    ./java_compile_jar.sh com/aggregation/TestAnimal.java
    echo ""
    echo "[ --- END Aggregation --- ]"
    echo ""
}

function compileCompiletime() {
    echo "[ --- Compiling Compiletime --- ]"
    echo ""
    rm -rf com/polymorphism/compiletime/*.class
    ./java_compile_jar.sh com/polymorphism/compiletime/CompileTimePolymorphism.java
    echo ""
    echo "[ --- END Aggregation --- ]"
    echo ""
}

function compileRuntime() {
    echo ""
    echo "[ --- Compiling Runtime --- ]"
    echo ""
    rm -rf com/polymorphism/runtime/*.class
    ./java_compile_jar.sh com/polymorphism/runtime/RuntimePolymorphism.java
    echo ""
    echo "[ --- END Runtime --- ]"
    echo ""
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
                        compileAggregation
                        exit 1
                        ;;
                -c|--compiletime)
                        compileCompiletime
                        exit 1
                        ;;
                -r|--runtime)
                        compileRuntime
                        exit 1
                        ;;
        esac
done


