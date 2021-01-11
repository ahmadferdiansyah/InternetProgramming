/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.infobean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;
/**
 *
 * @author ahmad
 */
public class GuestBookBean {
    private String driver = "com.mysql.cj.jdbc.Driver";
    private String sURL = "jdbc:mysql://localhost:3306/prak-2";
    private String username = "root";
    private String password = "";
    private int id;
    private String name;
    private String address;
    private String company;
    private String email;
    
    
    public boolean insertIntoDB(String name, String address, String company, String email) {
        try {
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(sURL, username, password);
            PreparedStatement ps = conn.prepareStatement("insert into guestbook(name, address, company, email) VALUES(?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, address);
            ps.setString(3, company);
            ps.setString(4, email);
            int res = ps.executeUpdate();

            if (res == 0) {
                throw new Exception("Gagal");
            }

            ps.close();
        } catch (Exception ex) {
            return false;
        }

        return true;
    }
    public Vector viewGuestBook(){
        Vector vGuest = new Vector();
        String sData;
        String sql = "SELECT * FROM guestbook" ;
        try{
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(sURL, username, password);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from guestbook");

        while(rs.next()){
                GuestBookBean g = new GuestBookBean();
                g.setId(rs.getInt(1));
                g.setName(rs.getString(2));
                g.setAddress(rs.getString(3));
                g.setCompany(rs.getString(4));
                g.setEmail(rs.getString(5));
                vGuest.add(g);
        }
        rs.close();
        stmt.close();
        }catch(Exception e){
        e.printStackTrace();
            }
    return vGuest;
    }
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
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getCompany() {
        return company;
    }
    public void setCompany(String company) {
        this.company = company;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
}