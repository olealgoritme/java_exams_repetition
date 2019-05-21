package com.lemon;

import com.lemon.Stable;

public abstract class Animal {


    private String name;
    private String generation;
    private int age;
    private Stable stable;
    
    public Animal() {
    }

    public Animal(String name, String generation) {
        this.name = name;
        this.generation = generation;
    }
    public Animal(String name, String generation, int age) {
        this.name = name;
        this.generation = generation;
        this.age = age;
    }
    
    public Animal(String name, String generation, int age, Stable stable) {
        this.name = name;
        this.generation = generation;
        this.age = age;
        this.stable = stable;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setGeneration(String generation) {
        this.generation = generation;
    }
    
    public void setAge(int age) {
        this.age = age;
    }

    public void setStable(Stable stable) {
        this.stable = stable;
    }
    
    public String getName() {
        return this.name;
    }

    public String getGeneration() {
        return this.generation;
    }

    public int getAge() {
        return this.age;
    }

    public Stable getStable() {
        return this.stable;
    }

    @Override
    public String toString() {

        String stableString = (stable != null) ? stable.toString() : "";

        return "My name is " + this.name
            + ", generation of " + this.generation
            + ", and I am " + this.age + ". " + stableString;
    }
}
