package com.aggregation;

import com.aggregation.Animal;
import com.aggregation.Feedable;

public class Goat extends Animal implements Feedable {

    private String favoriteFood;
    
    public Goat() {
        super();
    }

    public Goat(String name, String generation) {
        super(name, generation);
    }
    
    public Goat(String name, String generation, int age) {
        super(name, generation, age);
    }

    public Goat(String name, String generation, int age, String favoriteFood) {
        super(name, generation, age);
        this.setFavoriteFood(favoriteFood);
    }

    public void setFavoriteFood(String favoriteFood) {
        this.favoriteFood = favoriteFood;
    }

    public String getFavoriteFood() {
        return this.favoriteFood;
    }

    public String feedAnimal(String food) {
        String tasteReaction = (food.equalsIgnoreCase(this.favoriteFood))  ? "yummy" : "like shit";
        return "Goat is eating " + food + " and it tastes " + tasteReaction;
    }

    @Override
    public String toString() {
        return super.toString() + " I am pleased if you feed me " + this.favoriteFood;
    }

}
