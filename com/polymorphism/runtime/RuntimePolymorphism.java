package com.polymorphism.runtime;

public class RuntimePolymorphism {

    public RuntimePolymorphism() {
        System.out.println("Instantiating class: " + this.getClass().getName());
    }

    public void speakUp() {
        System.out.println("Speak up!");
    }


    public static void main(String[] args) {
        
        RuntimePolymorphism poly = new RuntimePolymorphism();
        poly.speakUp();
        
        MethodOverriding method = new MethodOverriding();
        method.speakUp();
    }
}

class MethodOverriding extends RuntimePolymorphism {
    
    @Override
    public void speakUp() {
        System.out.println("Overriding speakUp() method = RUN TIME POLYMORPHISM");
    }
}

