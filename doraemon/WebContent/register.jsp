<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Hind:400,500,600|Pacifico" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="register.css">
</head>
<body>

    <style>

        *{
    margin: 0;
    padding: 0;
  }
  body{
    background-image: url('register_background.png');
    background-size: cover;
  }
  .container{
    width:80%;
    margin: 0 auto;
  }
  .item{
    width: 35%;
    margin: 10% auto;
    background:linear-gradient(rgba(0,125,125,0.5),rgba(0,0,125,0.6)), #e8e8e8;
    opacity: 0.8;
    padding: 20px;
    border-radius: 5px;
    
  }
  .item h1{
    color: white;
    font-weight: 600;
    font-family: arial;
    font-family: 'Pacifico', cursive;
    font-family: 'Hind', sans-serif;
    letter-spacing: 1.5px;
    font-size: 35px;
    padding:20px 0px; 
    text-align: center;
  }
  .one{
    width: 99%;
    height: 40px;
    border: none;
    background: #f1f1f1;
    border-bottom: 3px solid blue;
    font-size: 18px;
    border-radius: 4px;
    padding: 3px;
  }
  .leb{
    font-family: 'Pacifico', cursive;
    font-family: 'Hind', sans-serif;
    font-weight: bold;
    text-align: left;
    font-size: 18px;
    
  }
  select{
    padding: 5px 10px;
   
  }
  .n{
    text-align: center;
    padding: 20px 0px;
  }
  input[type="submit"]{
    width: 100%;
    padding: 10px 0px;
    border-radius: 20px;
    border: 1px solid blue;
    color: blue;
    font-weight: bold;
    font-size: 16px;
    transition: 0.6s all ease;
    
  }
  input[type="submit"]:hover{
    background: blue;
    color: white;
    box-shadow: 0px 2px 10px blue;
    
  }

    </style>

    <div class="container">
        <div class="item">
            <h1>REGISTRE HERE</h1>
            <form method="post" action="userRegister.do">
                <label class="leb">
                    
                    <label class="leb">ID</label><br>
                    <input type="text" placeholder="ID" name="userID" id="name" autocomplete="off" class="one">
                    <br>
                     
                    <label class="leb">Password</label><br>
                    <input type="password" placeholder="Password" name ="userPassword" class="one"><br>
                 
                     <label class="leb">NAME</label><br>
                    <input type="text" placeholder="Name" name="userName" id="name" autocomplete="off" class="one">
                    <br>
                     
                    <label class="leb">Email</label><br>
                    <input type="text" placeholder="Email" name="userEmail" id="email" autocomplete="off" class="one">
                  
                        
                    <input type="submit" value="Register">
                    <a href="login.jsp">Go Login</a>
                    </div>
            </form>
        </div>
    </div>
</body>
</html>