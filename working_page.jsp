<%-- 
    Document   : Working_Page
    Created on : Dec 18, 2017, 2:36:07 AM
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
        <title>Working</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="stylesheet" href="bootstrap.css">
        <style>
            .body
            {
                background-color: #009999;
            }
            .heading
            {
                color: white;
                font-family: century gothic;
            }
            
            a
            {
                color: white;
                
            }
            .select_services_heading
            {
                color: white;
                font-family: Microsoft YaHei UI Light;
                padding-top: 30px;
                height: 120px;
                
            }
           #select_services
           {
               
               border: 1px #009999 solid;
               width: 960px;
               margin: 30px auto;
               color: white;
               font-family: Microsoft YaHei UI Light;
               background: #003333;
               height: 150px;
               padding: 30px 20px 20px 20px;
           }
            
           #select_services ul
            {
               margin-left: 150px;
                
            }
            #select_services li
            {
                list-style: none;
                float: left;
                padding-right: 50px;
            }
            .list li
            {
                margin-left: 70px;
            }
            .list1 li
            {
                margin-left: -10px;
            }
            .how_to_start
            {
                color: white;
                font-family: Microsoft YaHei UI Light;
                font-weight: bold;
                padding-top: 20px;
                
            }
            .images
            {
                padding-left: 660px;
                
            }
            .step1
            {
                color: white;
                font-family: Microsoft YaHei UI Light;
                font-weight: bold;
                padding-top: 10px;
                margin-bottom: 20px;
            }
            #step1_instruction
            {
                color: white;
                
                font-size: 20px;
                margin-top: 10px;
                padding-left: 530px;
                font-family: Calibri Light;
            }
            #step2_instruction
            {
                color: white;
                
                font-size: 20px;
                margin-top: 10px;
                padding-left: 530px;
                font-family: Calibri Light;
            }
            #submit
            {
                color: white;
                
                font-size: 20px;
                margin-top: 10px;
                padding-left: 530px;
                font-family: Calibri Light;
            }
            #instructions
            {
                border: 1px #009999 solid;
                width: 940px;
                padding: 10px 10px 10px 10px;
                color: white;
                font-family: Calibri Light;
                margin: 40px auto;
                font-size: 18px;
            }
            #copy_right
            {
               color: white;
               font-family: arial;
               padding-left: 215px;
            }
            #personal_informations
            {
                border: 1px #009999 solid;
                width: 200px;
                margin: 30px auto;
                padding: 10px 10px 10px 10px;
                color: white;
                font-family: arial;
                font-weight: bold;
                font-size: 15px;
                margin-left: 1130px;
                overflow: hidden;
            }
            #project_y
            {
                border: 1px #009999 solid;
                margin-left: 410px;
                width: 900px;
                color: #000000;
                font-family: Leelawadee;
                font-size: 14px;
                padding: 10px 10px 10px 10px;
            }
            .input_fields
            {
                padding-bottom: 10px;
                padding-left: 10px;
            }
            .your_table_button
            {
                font-family: calibri;
                font-size: 14px;
                margin-top: 10px;
                margin-left: 465px;
            }
            .input_fields1
            {
                padding-bottom: 10px;
                color: white;
            }
            #informations_project_y
            {
                border: 1px #009999 solid;
                padding: 10px 10px 10px 10px;
                margin-top: 30px;
                width: 960px;
                color: #ffffff;
                font-family: Arial Rounded MT Bold;
                margin-left: 240px;
                margin-bottom: 14px;
                font-size: 16px;
            }
        </style>
    </head>
    <body class="body">
        <%
            String email=request.getParameter("sign_in_email_text");
            String password=request.getParameter("sign_in_password_text");
            
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web_administrator","root", "mysql1234");
            
            String query ="select * from sign_up_table where Email= '"+email+"';";
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(query);
            if(rs.next())
            {
                String first_name=rs.getString("First_Name");
                String last_name=rs.getString("Last_Name");
                String email1=rs.getString("Email");
                
        %>
        
       <div id="personal_informations">
           <table border="0">
               <tbody>
                   <tr>
                       
                       <td><%= first_name +" "+last_name %></td>
                   </tr>
                   <tr>
                       
                       <td><%= email1  %></td>
                   </tr>
                   
               </tbody>
           </table>
                  
       </div>
                
                
        <%
                
                
            }
             
            
            } catch(Exception e)
            {
                out.println(e);
            
            }
        %>
        
        
        
        
        
        
        <h1 align="center" class="heading">Let's Start Working</h1>
        <h2 align="center" class="select_services_heading">Which Table You Like To Work</h2>
        <div id="select_services">
            
            <ul type="none">
                <li><a href="Employee_Detailed_table.jsp">Employee Detailed Table</a></li>
                <li><a href="employee_table.jsp">Employee Table</a></li>
                <li><a href="">Employee Salary Table</a></li>
                <br><br><br>
                <li><a href="">Finance Table</a></li></span>
                <span class="list"><li><a href="">Product Records Table</a></li></span>
                <span class="list1"><li><a href="">Stock Table</a></li></span>
                
                 
                
                
            </ul>
            
        </div>
        
       <h3 align="center" class="how_to_start">Not able to find your one!<br><br></h3>
       <h4 align="center" class="how_to_start">Project Y<br><br></h4>
       <div id="informations_project_y">
            <article>
                This is a place where you could make or design the table that you want.
                You just need to give some information about your table that how your
                table should be. Make sure that you provide the requeried information 
                so that your table should be made. After providing all the information
                your table will be ready to perform at the Control Window. You can also
                download your favorite table so that you could work offline also.<br>
                Thank You!
            
            </article>
        </div>
       
       
       
       
       
       
       
           
           
        <form action="project_Y.jsp" method="POST" name="project_y_form" target="_blank">     
           <div id="project_y">
               <%
            String emaily2=request.getParameter("sign_in_email_text");
            
            
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web_administrator","root", "mysql1234");
            
            String query ="select * from sign_up_table where Email= '"+emaily2+"';";
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(query);
            if(rs.next())
            {
                
                String email1y=rs.getString("Email");
                
        %>
        <input type="hidden" name="text_working_email" size="50" value=<%= email1y%>>
     <%
                
                
            }
             
            
            } catch(Exception e)
            {
                out.println(e);
            
            }
            
        %>
             
        <table border="0">
                   <tbody>
                        <tr>
                            <td class="input_fields1">Name of Database: </td>
                            <td class="input_fields"><input type="text" value="" name="projecty_database_text" size="50" placeholder="My_Table"></td>
                        </tr>
                        <tr>
                            <td class="input_fields1">Name of Table: </td>
                            <td class="input_fields"><input type="text" value="" name="projecty_table_text" size="50" placeholder="My_Database"></td>
                        </tr>
                        <tr>
                            <td class="input_fields1">Number of Columns </td>
                                    <td class="input_fields"><select name="columns_droup_down">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                            <option>8</option>
                                            <option>9</option>
                                            <option>10</option>
                                            <option>11</option>
                                            <option>12</option>
                                            <option>13</option>
                                            <option>14</option>
                                            <option>15</option>
                                            <option>16</option>
                                            <option>17</option>
                                            <option>18</option>
                                            <option>19</option>
                                            <option>20</option>
                                            <option>21</option>
                                            <option>22</option>
                                            <option>23</option>
                                            <option>24</option>
                                            <option>25</option>
                                            <option>26</option>
                                            <option>27</option>
                                            <option>28</option>
                                            <option>29</option>
                                            <option>30</option>
                                            <option>31</option>
                                            <option>32</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td class="input_fields1">Columns Name:</td>
                            <td class="input_fields"><input type="text" name="columns_name_text" size="50" placeholder="ID,Name Length 60,Contact_No VARCHAR(45),Address...." /></td>
                        </tr>
                    </tbody>
                </table>
                    <input type="submit" name="your_table_btn" value="Submit" class="your_table_button" />
               
               
           
           
           
           </div>
            </form>
        
        
        
        <h2 align="center" class="how_to_start">How to Start<br><br></h2>
        <h3 align="center" class="step1">Choose Your Table</h3><br>
        <span class="images"><img src="icons8-data-sheet-filled-50.png" width="50" height="50"/></span>
        <div id="step1_instruction">
            <article>
              1. Choose which table you like to work on.<br><br>
            </article>
        </div>
        <h3 align="center" class="step1">Start Feeding</h3><br>
         <span class="images"><img src="icons8-news-feed-filled-50.png" width="50" height="50"/></span>
         
        <div id="step2_instruction">
             <article>
              2. Feed the required informations.<br><br>
            </article>
        </div>
        
        <h3 align="center" class="step1">Submit it</h3><br> 
        <span class="images"><img src="icons8-submit-progress-filled-50.png" width="50" height="50"/></span>
        
        <div id="instructions">
            <article>
                The data you submitted will be received by our professional Data Administrator team that
                you have choose. The team will look upon your data and start to make the required documents
                known as Data Analysing. This analysis data will help you to figure out the necceries of 
                your company and then you can easily mange the task.<br>
                The Services will be provided to to at 24 X 7 hours so that you don't find any trouble 
                in your work.<br>
                You can also keep a tract on your work by going at track panel this will help you
                to get insure that your data is safe and being worked upon.
            </article>
        </div>
        
        <div id="copy_right">
            <p>Copyright &COPY; 2017</p>
        </div>
        <script   src="https://code.jquery.com/jquery-1.12.4.js"   integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="   crossorigin="anonymous"></script>
        <script src="bootstrap.js"></script>  
    </body>
</html>
