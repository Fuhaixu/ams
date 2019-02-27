package com.software.mapper.po;


public class TestPo {
    int feer;
    int greed;
    int exp;
    int us_type;//测试类型
    String userID;

    public int getUs_type() {
        return us_type;
    }

    public void setUs_type(int us_type) {
        this.us_type = us_type;
    }

    public TestPo(int feer, int greed, int exp){
        this.exp=exp;
        this.feer=feer;
        this.greed=greed;
    }
    public int getFeer() {
        return feer;
    }

    public void setFeer(int feer) {
        this.feer = feer;
    }

    public int getGreed() {
        return greed;
    }

    public void setGreed(int greed) {
        this.greed = greed;
    }

    public int getExp() {
        return exp;
    }

    public void setExp(int exp) {
        this.exp = exp;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    @Override
    public String toString() {
        return "TestPo{" +
                "feer=" + feer +
                ", greed=" + greed +
                ", exp=" + exp +
                ", us_type=" + us_type +
                ", userID='" + userID + '\'' +
                '}';
    }
}
