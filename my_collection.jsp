<%-- 
    Document   : my_collection
    Created on : Dec 25, 2017, 6:09:35 AM
    Author     : Shivanshu Gupta
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Collection</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="stylesheet" href="bootstrap.css">
        <style>
            #my_collections_table
            {
                border: 1px #333333 solid;
                margin-left: 620px;
                margin-top: 20px;
                padding-top: 20px;
                width: 400px;
                font-family: arial;
                font-size: 20px;
            }
            a
            {
                color: white;
            }
            .body
            {
                background-color: #333333;
            }
            .my_collection_heading
            {
                font-family: century gothic;
                color: #ffffff;
                
                margin-bottom: 20px;
            }
        </style>
    </head>
    <body class="body">
        <h1 class="my_collection_heading" align="center">My Collection</h1>
        <%
            String table=request.getParameter("text_working_email22");
            
            
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/web_administrator","root","mysql1234");
            Statement stmt=(Statement)con.createStatement();
            String query="SELECT * FROM `"+table+"`;";
            ResultSet rs=stmt.executeQuery(query);
           
            
                  
            while(rs.next())
        {
            
            
            String collection_name=rs.getString("Collection_Name");
            String collection_link=rs.getString("Collection_Link");
            %>
            
            
            <div id="my_collections_table">
            <table border="0">
                
                <tbody>
                    <tr>
                        <td><a href="<%= collection_link  %>" > <%= collection_name %>  </a></td>
                        
                    </tr>
                </tbody>
            </table>
            </div>

            
            
            
            
            <%
            
            
            
        }
            
            
            
            }
            catch(Exception e)
            {
                out.println(e);
            }
        
        
        
        
        
        
        %>
        %>
        
        <script   src="https://code.jquery.com/jquery-1.12.4.js"   integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="   crossorigin="anonymous"></script>
        <script src="bootstrap.js"></script>
    </body>
</html>
