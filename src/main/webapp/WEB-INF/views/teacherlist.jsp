<%--
  Created by IntelliJ IDEA.
  User: kang-yewon
  Date: 12/1/23
  Time: 10:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e879e74340.js" crossorigin="anonymous"></script>

<html>
<head>
    <title>Title</title>
</head>
<script>
    function delete_ok(id) {
        var a = confirm("정말로 삭제하시겠습니까?");
        if (a) location.href = 'deleteok/' + id;
    }
</script>

<body>
<nav class="navbar bg-dark navbar-light" id="topbar">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <i style="color: white" class="fa-solid fa-school" class="d-inline-block align-text-top"></i>
            <label id="title" style="color: white">Teacher List</label>
        </a>
        <span>
		<button type="button" class="btn btn-light" onclick="location.href='add'" style="margin-right: 8px">Add</button>
		<button type="button" class="btn btn-secondary" onclick="location.href='../login/logout'"
                style="margin-right: 20px">logout</button>
			</span>
    </div>
</nav>
<div class="album py-5 bg-body-tertiary">
    <div class="container">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <c:forEach items="${list}" var="u">
                <div class="col">
                    <div class="card shadow-sm">
<%--                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225"--%>
<%--                             xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"--%>
<%--                             preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>--%>
<%--                            <rect width="100%" height="100%" fill="#55595c"></rect>--%>
<%--                            <image src="../img/photo6.jpg" width="100%" height="100%" preserveAspectRatio="xMidYMid slice"></image>--%>
<%--                            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>--%>
<%--                        </svg>--%>
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225"
                             xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"
                             preserveAspectRatio="xMidYMid slice" focusable="false">
                            <title>Placeholder</title>
                            <rect width="100%" height="100%" fill="#55595c"></rect>
                            <image xlink:href="../img/photo7.jpg" width="100%" height="100%" preserveAspectRatio="xMidYMid slice"></image>
                            <text x="50%" y="50%" fill="#eceeef" dy=".3em">image</text>
                        </svg>

                        <div class="card-body">
                            <p>이름: ${u.name}</p>
                            <p>성별: ${u.gender}</p>
                            <p>과목: ${u.subject}</p>
                            <p>번호: ${u.phone}</p>
                            <p>이메일: ${u.mail}</p>
                            <div class="d-flex justify-content-end" >
                                <a href="view/${u.seq}" style="margin-left: 20%; font-size: 20px;color: lightgrey">
                                    <i class="fa-regular fa-eye" aria-hidden="true"></i></a>
                                <a href="editform/${u.seq}" style="margin-left: 10px; font-size: 20px;color: lightgrey">
                                    <i class="fa-solid fa-user-pen " aria-hidden="true"></i></a>
                                <a href="javascript:delete_ok(${u.seq})"
                                   style="margin-left: 10px; color: lightgrey; font-size: 20px;">
                                    <i class="fa-sharp fa-solid fa-trash" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
