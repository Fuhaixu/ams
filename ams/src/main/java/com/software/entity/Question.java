package com.software.entity;

import java.util.List;
import java.util.Map;

public class Question {
    //问题编号
    int q_no;
    //问题题目
    String title;
    //问题答案
    String ans;
    //问题类型
    int q_type;
    public List<Choice> choices;
    public final static int Feer=0;//恐惧
    public final static int Greed=1;//贪婪
    public final static int Basic=2;//金融常识
    public final static int Experience=4;//投资经验题

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAns() {
        return ans;
    }

    public void setAns(String ans) {
        this.ans = ans;
    }

    public List<Choice> getChoices() {
        return choices;
    }

    public void setChoices(List<Choice> choices) {
        this.choices = choices;
    }

    public int getQ_no() {
        return q_no;
    }

    public void setQ_no(int q_no) {
        this.q_no = q_no;
    }

    public int getQ_type() {
        return q_type;
    }

    public void setQ_type(int q_type) {
        this.q_type = q_type;
    }

    @Override
    public String toString() {
        return "Question{" +
                "q_no=" + q_no +
                ", title='" + title + '\'' +
                ", ans='" + ans + '\'' +
                ", choices=" + choices +
                '}';
    }
}
