/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
* Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
*/
package tech.entities;
import java.sql.*;

/**
 *
 * @author rishabhmaurya
 */
public class User {
    
    private int id;
    private String name;
    private String email;
    private String gender;
    private String about;
    private String password;
    private String profile;
    
    private Timestamp datetime;
    
    public User() {
    }
    
    
    
    public User(String name, String email, String gender, String about, String password) {
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.about = about;
        this.password = password;
        //this.profile = profile;
    }

//    public String getProfile() {
//        return profile;
//    }
//
//    public void setProfile(String profile) {
//        this.profile = profile;
//    }
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getGender() {
        return gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    
    public String getAbout() {
        return about;
    }
    
    public void setAbout(String about) {
        this.about = about;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public Timestamp getDatetime() {
        return datetime;
    }
    
    public void setDatetime(Timestamp datetime) {
        this.datetime = datetime;
    }
    
    
    
    
}
