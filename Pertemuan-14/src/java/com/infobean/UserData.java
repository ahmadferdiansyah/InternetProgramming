/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.infobean;

/**
 *
 * @author ahmad
 */
public class UserData {
    private String namaUser;
    private String idUser;
    private int umur ;

    public UserData(){
    }
    public String getNamaUser(){
    return namaUser;
    }

    public void setNamaUser(String namaUser){
    this.namaUser = namaUser;
    }

    public String getIdUser(){
    return idUser;
    }
    
    public void setIdUser(String idUser){
    this.idUser = idUser;
    }
    
    public int getUmur(){
    return umur;
    }
    
    public void setUmur(int umur){
    this.umur = umur;
    }
}