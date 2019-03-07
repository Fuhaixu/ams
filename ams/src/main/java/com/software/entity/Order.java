package com.software.entity;


import java.sql.Timestamp;
import java.util.Date;

public class Order {
    String oID;
    String uID;
    int pID;
    float cost;
    int break_even;
    Timestamp start_time;
    int interval;


    @Override
    public String toString() {
        return "Order{" +
                "oID='" + oID + '\'' +
                ", uID='" + uID + '\'' +
                ", pID='" + pID + '\'' +
                ", cost=" + cost +
                ", break_even=" + break_even +
                ", start_time=" + start_time +
                '}';
    }

    public int getInterval() {
        return interval;
    }

    public void setInterval(int interval) {
        this.interval = interval;
    }

    public String getoID() {
        return oID;
    }

    public void setoID(String oID) {
        this.oID = oID;
    }

    public String getuID() {
        return uID;
    }

    public void setuID(String uID) {
        this.uID = uID;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public int getBreak_even() {
        return break_even;
    }

    public void setBreak_even(int break_even) {
        this.break_even = break_even;
    }

    public Timestamp getStart_time() {
        return start_time;
    }

    public void setStart_time(Timestamp start_time) {
        this.start_time = start_time;
    }
}
