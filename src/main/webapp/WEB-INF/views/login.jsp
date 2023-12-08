<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e879e74340.js" crossorigin="anonymous"></script>

<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        img{
            margin-bottom: 20px;
        }

        label {
            display: inline-block;
            width: 130px
        }
        button{
            width: 350px;
        }
    </style>
</head>
<body>
<div style='width:100%;text-align:center;padding-top:100px'>
    <img src="../img/background.png" height="250">
    <form method="post" action="loginOk">
        <div><i class="fa-solid fa-user"></i><label>User ID: </label><input type='text' name='userid'/></div>
        <div><i class="fa-solid fa-lock"></i><label>Password: </label>
            <input type='password' name='password'/></div>
        <button type='submit' class="btn btn-primary">login</button>
    </form>
</div>
</body>
</html>
