
package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteStudent extends HttpServlet {

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
            PreparedStatement ps = conn.prepareStatement("delete from studentmng where std_id="+id);
            int h = ps.executeUpdate();
            if(h>0){
            out.println("<h1>Your record successfully deleted.............</h1>");
            out.println("<a href=Welcome.jsp>GO TO HOME</a>");
            }
            else{
                out.println("something wrong");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
      
    }

   

}
