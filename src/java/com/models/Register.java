/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

/**
 *
 * @author aviwe08
 */
public class Register {
    private int staff_num;
    private String lastname;
    private String first_name;
    private String email_address;
    private String cell_number;
    private int school_number;

    public Register(int staff_num, String lastname,
            String first_name, String email_address, 
            String cell_number, int school_number) {
        this.staff_num = staff_num;
        this.lastname = lastname;
        this.first_name = first_name;
        this.email_address = email_address;
        this.cell_number = cell_number;
        this.school_number = school_number;
    }

    public Register() {
    }
    

    public int getStaff_num() {
        return staff_num;
    }

    public void setStaff_num(int staff_num) {
        this.staff_num = staff_num;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getEmail_address() {
        return email_address;
    }

    public void setEmail_address(String email_address) {
        this.email_address = email_address;
    }

    public String getCell_number() {
        return cell_number;
    }

    public void setCell_number(String cell_number) {
        this.cell_number = cell_number;
    }

    public int getSchool_number() {
        return school_number;
    }

    public void setSchool_number(int school_number) {
        this.school_number = school_number;
    }
 
        
    
    
}
