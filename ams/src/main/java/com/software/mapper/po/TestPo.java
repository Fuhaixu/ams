package com.software.mapper.po;


public class TestPo {
    int feer;
    int greed;
    int exp;
    int us_type;//测试类型
    String userID;
    public TestPo(){

    }


    public TestPo(int feer, int greed, int exp){
        this.exp=exp;
        this.feer=feer;
        this.greed=greed;
    }
    public TestPo(TestPo testPo){
        this.greed=testPo.greed;
        this.feer=testPo.feer;
        this.exp=testPo.exp;
        this.us_type=testPo.us_type;
        this.userID=testPo.userID;
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

    public int getUs_type() {
        return us_type;
    }

    public void setUs_type(int us_type) {
        this.us_type = us_type;
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
