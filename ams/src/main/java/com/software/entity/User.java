package com.software.entity;

/**
 * @Author: FHX
 * @Date: 2019/2/10 17:33
 * @Version 1.0
 * 用户po
 */
public class User {
    String uid;
    String password;
    String cid;
    String email;
    String loc;

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

    @Override
    public String toString() {
        return "User{" +
                "uid='" + uid + '\'' +
                ", password='" + password + '\'' +
                ", cid='" + cid + '\'' +
                ", email='" + email + '\'' +
                ", loc='" + loc + '\'' +
                '}';
    }
}
