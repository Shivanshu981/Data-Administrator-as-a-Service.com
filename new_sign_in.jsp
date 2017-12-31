<%-- 
    Document   : new_sign_in
    Created on : Dec 30, 2017, 7:18:47 AM
    Author     : Shivanshu Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In | Web Administrator</title>
        <style>
            #heading_sign_in
            {
                border: 1px #be67de solid;
                overflow: hidden;
                width: 1340px;
                height: 70px;
                background-color: #7b2fac;
                margin-top: 20px;
                color: #ffffff;
            }
            .body
            {
                background-color: #be67de;
            }
            .sign_in
            {
                font-family: century gothic;
                
                color: #ffffff;
            }
            #sign_in1
            {
                border: 1px #be67de solid;
                width: 420px;
                height: 100px;
                background-color: #454246;
                padding: 20px 20px 20px 20px;
                color: #ffffff;
                margin-left: 470px;
                margin-top: 50px;
                font-family: arial;
            }
            .input_gap
            {
                padding-bottom: 15px;
                string-set: none;
            }
            .input_gap1
            {
                padding-bottom: 15px;
                string-set: none;
                padding-left: 10px;
            }
            .sign_in_button
            {
                margin-left: 350px;
            }
            .image_bulb
            {
                margin-left: 650px;
                margin-top: 20px;
            }
        </style>
    </head>
    <body class="body">
        
        <div id="heading_sign_in">
            <h1 align="center" class="sign_in">Sign In</h1>
        </div>
        
        <form action="Sign_In.jsp" method="POST" name="sign_in_form">
          <div id="sign_in1">
               
              <table border="0">
                  <tbody>
                      <tr>
                          <td class="input_gap">Email </td>
                          <td class="input_gap1"><input type="email" name="sign_in_email_text" placeholder="mymail@mail.com" size="50"/></td>
                      </tr>
                      
                      <tr>
                          <td class="input_gap">Password </td>
                          <td class="input_gap1"><input type="password" name="sign_in_password_text" size="50"/></td>
                          
                      </tr>
                  </tbody>
              </table>
               <span class="sign_in_button"> <input type="submit" value="Sign In" name="sign_in_button" /></span>
          </div>
      </form>
        <img src="icons8-reflector-bulb-filled-100.png" width="100" height="100" class="image_bulb"/>
        <img src="icons8-globe-earth-filled-100.png" width="100" height="100" class="image_bulb"/>
    </body>
</html>
