package com.software.entity;


public class Project {
    int PID;
    int ptype;
    String pname;
    double pmincost;
    double rate;

//    证券  债券  外汇  期货  基金  期权  股权
    public static final int Securities=1;
    public static final int Bond=2;
    public static final int Exchange=3;
    public static final int Futures=4;
    public static final int Fund=5;
    public static final int Option=6;
    public static final int Equity=7;

    public int getPID() {
        return PID;
    }

    public void setPID(int PID) {
        this.PID = PID;
    }

    public int getPtype() {
        return ptype;
    }

    public void setPtype(int ptype) {
        this.ptype = ptype;
    }


    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public double getPmincost() {
        return pmincost;
    }

    public void setPmincost(double pmincost) {
        this.pmincost = pmincost;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    @Override
    public String toString() {
        return "Project{" +
                "PID=" + PID +
                ", ptype=" + ptype +
                ", pname=" + pname +
                ", pmincost=" + pmincost +
                ", rate=" + rate +
                '}';
    }
}
