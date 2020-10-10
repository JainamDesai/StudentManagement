/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SearchStudentRecord extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        int id = Integer.parseInt(request.getParameter("id"));
        Connection conn = null;
        try{
             Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/test","root","");
            if(conn!=null){
                PreparedStatement ps = (PreparedStatement) conn.prepareStatement("select * from studentmng where std_id ="+id);
                ResultSet rs = ps.executeQuery();

                while(rs.next()){
                    
                    out.println("<h2>Student id:"+rs.getInt(1)+"</h2>");
               
                    out.println("<h2>Student Name:"+rs.getString(2)+"</h2>");

                    out.println("<h2>Student City:"+rs.getString(3)+"</h2>");

                    out.println("<h2>Student Branch:"+rs.getString(4)+"</h2>");
                 
                }
               
                out.println("<a href=Welcome.jsp>go to home</a>");
                rs.close();
               
                
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
     
    }

  

}
