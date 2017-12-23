<%-- 
    Document   : project_Y
    Created on : Dec 22, 2017, 9:42:02 PM
    Author     : Shivanshu Gupta
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submitted</title>
    </head>
    <body>
        <%
        String email=request.getParameter("text_working_email");
        String table_name=request.getParameter("projecty_database_text");
        String database_name=request.getParameter("projecty_table_text");
        String columns_no=request.getParameter("columns_droup_down");
        String columns_name=request.getParameter("columns_name_text");
        
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web_administrator","root", "mysql1234");
        Statement stmt=con.createStatement();
        stmt.executeUpdate("insert into project_y(Email,Database_Name,Table_Name,Number_of_Columns,Columns_Name)"+"values('"+email+"','"+table_name+"','"+database_name+"','"+columns_no+"','"+columns_name+"');");
        out.println("Submitted");
        }
        catch (Exception e)
       {
       out.println(e);
       }
        
        %>
    </body>
</html>
