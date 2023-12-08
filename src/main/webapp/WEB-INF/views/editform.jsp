<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e879e74340.js" crossorigin="anonymous"></script>

<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
    <style>
        #editdiv {
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

        td {
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
		<button type="button" class="btn btn-light" onclick="location.href='../list'"
                style="margin-right: 8px">List</button>
		<button type="button" class="btn btn-secondary" onclick="location.href='../login/logout'"
                style="margin-right: 20px">logout</button>
			</span>
    </div>
</nav>
<div id="editdiv">
    <form:form modelAttribute="u" method="post" action="../editok">
        <form:hidden path="seq"/>
        <table id="edit">
            <tr>
                <td>사진:</td>
                <td><form:input path="photo"/></td>
            </tr>
            <tr>
                <td>이름:</td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td>과목:</td>
                <td><form:input path="subject"/></td>
            </tr>
            <tr>
                <td>재직기간:</td>
                <td><form:input path="term"/></td>
            </tr>
            <tr>
                <td>번호:</td>
                <td><form:input path="phone"/></td>
            </tr>
            <tr>
                <td>이메일:</td>
                <td><form:input path="mail"/></td>
            </tr>
        </table>
    </form:form>
    <div style="float: right">
        <button class="btn btn-dark" type="submit" style="margin-right: 8px">Submit</button>
        <button type="button" class="btn btn-secondary" onclick="location.href='../list'">Cancel</button>
    </div>
</div>
</body>
</html>