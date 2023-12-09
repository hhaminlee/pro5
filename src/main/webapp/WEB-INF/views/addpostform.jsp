<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e879e74340.js" crossorigin="anonymous"></script>

<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        #add {
            margin: 0 auto;
            align-content: center;
            width: 50%;
            margin-top: 50px;
            margin-bottom: 30px;
            border: 1px solid lightgray;
            border-radius: 5%;
            text-align: left;
            padding: 30px;
            color: black;
            padding-bottom: 60px;
            font-weight: bold;
            font-size: 17px;
            background-color: white;
        }
        td{
            padding-bottom: 10px;
        }
    </style>
</head>
<body>
<nav class="navbar bg-dark navbar-light" id="topbar">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <i style="color: white" class="fa-solid fa-school" class="d-inline-block align-text-top"></i>
            <label id="title" style="color: white">Teacher List</label>
        </a>
        <span>
		<button type="button" class="btn btn-light" onclick="location.href='list'" style="margin-right: 8px">List</button>
		<button type="button" class="btn btn-secondary" onclick="location.href='../login/logout'"
                style="margin-right: 20px">logout</button>
			</span>
    </div>
</nav>
<div id="add">
    <h1><i class="fa-solid fa-person-chalkboard"></i>새로운 교수님 등록</h1>
    <form name="myForm" action="addok" method="post">
        <table id="edit">
            <tr><td>사진:</td><td><input type="text" name="category"/></td></tr>
            <tr><td>이름:</td><td><input type="text" name="name"/></td></tr>
            <tr><td>성별:</td>
                <td>
                    <input type="radio" name="gender" value="남성"/> 남성
                    <input type="radio" name="gender" value="여성"/> 여성
                </td>
            </tr>
            <tr><td>과목:</td><td><input type="text" name="subject"/></td></tr>
            <tr><td>재직기간:</td><td><input type="number" name="term"/></td></tr>
            <tr><td>번호:</td><td><input type="text" name="phone"/></td></tr>
            <tr><td>메일:</td><td><input type="text" name="mail"/></td></tr>
        </table>
        <div style="float: right">
            <button class="btn btn-dark" type="submit" style="margin-right: 8px">Submit</button>
            <button type="button" class="btn btn-secondary" onclick="location.href='list'">Cancel</button>
        </div>
    </form>
</div>
</body>
</html>