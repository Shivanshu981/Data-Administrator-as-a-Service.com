<%-- 
    Document   : sign_in_part_2
    Created on : Jan 16, 2018, 6:14:49 AM
    Author     : Shivanshu Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In | Web Administrator</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="stylesheet" href="bootstrap.css">
        
        <style>
        #button1{
	position:absolute;
	top:174px;
        left:240px;
        margin-left: 50px;
	}
        
	#button2{
	position:relative;
	top:53px;
	left:317px;
	}
        
	#textfield,#textfield2{
	position:relative;
	top:24px;
        left:135px;
	color:transparent;
	border:1px solid;
	border-color:transparent;
	border-bottom-color:gray ;
	font-size: 18;
	font-color:black;
	color: black;
        }
        
        
	h5{
        position:relative;
	top:30px;
	left:135px;
	color:black;
		
	}
	
	h6{
        position:absolute;
        left:136px;
        top:175px;
	}
        
        img{
	position:absolute; 
	left:400px;
	top:198px;
        }



        div{
        position:absolute;
        top:175px;
        left:415px;
        display:block;
        width:500px;
        height:300px;
	border: 4px solid;
	border-color:gray;
        }
            
            
        </style>
    </head>
    <body>
        <form action="Sign_In.jsp" method="POST" name="sign_in_form">
        <div>
	<h6><a href="">Forget! </a></h6>
        <h5>Username</h5> <input id="textfield" type="text" name="sign_in_email_text" size="33" maxlength="30" > 

        <h5 id="pass"> Password </h5>   
        <input id="textfield2" type="password" name="sign_in_password_text"   size="33" maxlength="16"> <br/>
        
	<button id="button1" type="submit" class="btn btn-success" name="sign_in_btn"> Sign in </button>
	
        </div>
        </form>
        
        
        <script
  src="https://code.jquery.com/jquery-1.12.4.js"
  integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
  crossorigin="anonymous"></script>
<script src="bootstrap.js"></script>
    </body>
</html>
