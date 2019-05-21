package com.lemon;

import com.lemon.Stable;
import com.lemon.Lion;
import com.lemon.Goat;

public class TestAnimal {


    public static void main(String[] argv) {

        String testFood = "grass";
        String result;

        Stable stable = new Stable("Oslo", "specialBOX", "AwesomeFarm");
        Goat goat = new Goat("Goaty", "gen3", 3, "grass");
        goat.setStable(stable);

        Lion lion = new Lion("Lionelda", "gen2", 12);

        System.out.println("Goat: " + goat.toString());
        System.out.println("Lion: " + lion.toString());
        
        // favorite food test
        result = goat.feedAnimal(testFood);
        System.out.println(result);

        testFood = "hotdog";
        result = goat.feedAnimal(testFood);
        System.out.println(result);

    }
}
