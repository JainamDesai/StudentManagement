

<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show All Student Record</title>
    </head>
    <body>
        <h1>Show All Record</h1><br>
        <table style="border: 2px solid black; width: 100%">
            <thead>
            <th>Id</th>
            <th>Student Name</th>
            <th>Student City</th>
            <th>Student Branch</th>
            <th>Delete</th>
            <th>Update</th>
            </thead>
            
        <%
            Connection conn = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/test","root","");
                PreparedStatement ps = conn.prepareStatement("select * from studentmng");
                ResultSet rs = ps.executeQuery();
                while(rs.next()){
                    
                    %>
                    <tr style="border: 2px solid black"><td><%=rs.getInt(1)%></td>
                    <td><%=rs.getString(2)%></td>
                   <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    
                    <td><a href="deleteStudent?id=<%=rs.getInt(1)%>">Delete</a></td>
                    <td><a href="updateStudent">Update</a></td>
                    </tr>
                    <%
                }    
            }
            catch(Exception e){
                e.printStackTrace();
            }
            %>
    </table>
    </body>
</html>
