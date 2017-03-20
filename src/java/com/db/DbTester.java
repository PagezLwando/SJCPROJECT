/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.db;

/**
 *
 * @author terra
 */
public class DbTester {
    public static void main(String[] args) {
        DBAccess db = new DBAccess();
        
        System.out.println(db.getAllAdmins());
    }
}
