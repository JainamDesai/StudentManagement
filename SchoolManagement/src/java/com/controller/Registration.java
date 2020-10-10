/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Registration extends HttpServlet {

 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out  = response.getWriter();
        response.setContentType("text/html");
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String city = request.getParameter("city");
        String branch = request.getParameter("branch");
        Connection conn = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/test","root","");
            if(conn!=null){
                String sql = "insert into studentmng values(?,?,?,?)";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setInt(1,id);
                ps.setString(2,name);
                ps.setString(3,city);
                ps.setString(4,branch);
                int record = ps.executeUpdate();
                out.println("<h1>Your record successfully saved...........Thank you</h1><br>");
                out.println("<a href = Welcome.jsp>go to home</a>");
            } else {
                out.println("connection failed");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
            
        }
        
    }

   
}
