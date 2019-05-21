#!/bin/bash
# -olealgo@2019


function runAll() {
    # running aggregation package
    java -cp com.aggregation.jar com.aggregation.TestAnimal

    # running compile time polymorphism (method overriding)
    java -cp com.polymorphism.compiletime.jar com.polymorphism.compiletime.CompileTimePolymorphism

    # running runtime polymorphism (method overloading)
    java -cp com.polymorphism.runtime.jar com.polymorphism.runtime.RuntimePolymorphism
}

function runAggregation() {
    # running aggregation package
    java -cp com.aggregation.jar com.aggregation.TestAnimal
}

function runCompiletime() {
    # running compile time polymorphism (method overriding)
    java -cp com.polymorphism.compiletime.jar com.polymorphism.compiletime.CompileTimePolymorphism
}

function runRuntime() {
    # running runtime polymorphism (method overloading)
    java -cp com.polymorphism.runtime.jar com.polymorphism.runtime.RuntimePolymorphism
}

function showHelp() {
echo "------------------------------------"
echo "java jar runner v1.3.3.7"
echo " "
echo "$0 [options]"
echo " "
echo "options:"
echo "-h, --help             What you are looking at.."
echo "-a, --aggregation      Runs aggregation package"
echo "-c, --compiletime      Runs compiletime package"
echo "-r, --runtime          Runs runtime package"
echo " "
echo "-olealgo@2019"
echo "------------------------------------"
}


# no args
if [ $# -eq 0 ]
 then
 echo "Running all packages.."
 runAll
fi

# with args / options
while test $# -gt 0; do
    case "$1" in -h|--help)
                        showHelp
                        exit 1
                        ;;

                -a|--aggregation)
                        echo "Running Aggregation.."
                        runAggregation
                        exit 1
                        ;;

                -c|--compiletime)
                        echo "Running Compiletime.."
                        runCompiletime
                        exit 1
                        ;;

                -r|--runtime)
                        echo "Running Runtime.."
                        runRuntime
                        exit 1
                        ;;
        esac
done

