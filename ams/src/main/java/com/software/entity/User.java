package com.software.entity;

/**
 * @Author: LL
 * @Date: 2019/2/10 17:33
 * @Version 1.0
 * 用户po
 */
public class User {
    String uid;//用户ID，电话号码
    String password;//密码
    String cid;//身份证号码
    String name;//姓名
    String email;//电子邮箱
    String loc;//地址
    String avatar;//头像
    int role;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid='" + uid + '\'' +
                ", password='" + password + '\'' +
                ", cid='" + cid + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", loc='" + loc + '\'' +
                ", avatar='" + avatar + '\'' +
                '}';
    }
}
