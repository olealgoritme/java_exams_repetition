package com.aggregation;

public class Stable {

    private String location;
    private String box;
    private String farm;

    public Stable() {}

    public Stable(String location, String box, String farm) {
        this.location = location;
        this.box = box;
        this.farm = farm;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setBox(String box) {
        this.box = box;
    }

    public void setFarm(String farm) {
        this.farm = farm;
    }

    public String getLocation() {
        return this.location;
    }

    public String getBox() {
        return this.box;
    }

    public String getFarm() {
        return this.farm;
    }

    @Override
    public String toString() {
        return "Location: " + this.location + "\n" +
               "Box: " + this.box + "\n" +
               "Farm: " + farm;
    }
}
