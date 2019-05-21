package com.polymorphism.compiletime;

public class CompileTimePolymorphism {

    public CompileTimePolymorphism() {
        System.out.println("Instantiating class: " + this.getClass().getName());
    }

    public void speakUp() {
        System.out.println("Method overloading = COMPILE TIME POLYMORPHISM");
    }

    public void speakUp(String sayWhat) {
        System.out.println(sayWhat + " = COMPILE TIME POLYMORPHISM"); 
    }

    public void speakUp(String sayWhat, int times) {
        for(int i = 0; i < times; i++) {
            this.speakUp(sayWhat);
        }
    }


    public static void main(String[] args) {
        CompileTimePolymorphism compile = new CompileTimePolymorphism();
        compile.speakUp();
        compile.speakUp("OPS!");
        compile.speakUp("WE DID IT!", 6);
    }
}


