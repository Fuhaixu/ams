package com.software.vo;


import java.sql.Timestamp;

public class ManagerPro {
    String userID;
    int pID;
    String pname;
    float cost;
    int break_even;
    int interval;
    float rate;
    Timestamp start_time;
    String oID;
    int res;
    String name;

    public float getRate() {
        return rate;
    }

    public void setRate(float rate) {
        this.rate = rate;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
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

    public int getInterval() {
        return interval;
    }

    public void setInterval(int interval) {
        this.interval = interval;
    }

    public Timestamp getStart_time() {
        return start_time;
    }

    public void setStart_time(Timestamp start_time) {
        this.start_time = start_time;
    }

    public String getoID() {
        return oID;
    }

    public void setoID(String oID) {
        this.oID = oID;
    }

    public int getRes() {
        return res;
    }

    public void setRes(int res) {
        this.res = res;
    }

    @Override
    public String toString() {
        return "ManagerPro{" +
                "userID='" + userID + '\'' +
                ", pID=" + pID +
                ", pname='" + pname + '\'' +
                ", cost=" + cost +
                ", break_even=" + break_even +
                ", interval=" + interval +
                ", start_time=" + start_time +
                ", oID='" + oID + '\'' +
                ", res=" + res +
                ", name='" + name + '\'' +
                '}';
    }
}
