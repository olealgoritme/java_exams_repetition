package com.lemon;

import com.lemon.Animal;

public class Lion extends Animal {


    public Lion() {
    }

    public Lion(String name, String generation) {
        super(name, generation);
    }

    public Lion(String name, String generation, int age) {
        super(name, generation, age);
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
