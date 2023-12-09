<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e879e74340.js" crossorigin="anonymous"></script>
<html>
<head>
    <title>View Post</title>
</head>
<body>
<nav class="navbar bg-dark navbar-light" id="topbar">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <i style="color: white" class="fa-solid fa-school" class="d-inline-block align-text-top"></i>
            <label id="title" style="color: white">Teacher List</label>
        </a>
        <span>
		<button type="button" class="btn btn-light" onclick="location.href='../list'" style="margin-right: 8px">List</button>
		<button type="button" class="btn btn-secondary" onclick="location.href='../login/logout'"
                style="margin-right: 20px">logout</button>
			</span>
    </div>
</nav>
<div class="album py-5 bg-body-tertiary">
    <div class="container">

            <c:forEach items="${list}" var="u">
                <div class="col">
                    <div class="card shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225"
                             xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"
                             preserveAspectRatio="xMidYMid slice" focusable="false">
                            <title>Placeholder</title>
                            <rect width="100%" height="100%" fill="#55595c"></rect>
                            <text x="50%" y="50%" fill="#eceeef" dy=".3em">image</text>
                        </svg>
                        <div class="card-body">
                            <p>사진: ${teacherVO.photo}</p>
                            <p>이름: ${teacherVO.name}</p>
                            <p>과목: ${teacherVO.subject}</p>
                            <p>재직기간: ${teacherVO.term}년</p>
                            <p>번호: ${teacherVO.phone}</p>
                            <p>메일: ${teacherVO.mail}</p>
                            <p>등록일: ${teacherVO.regdate}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
    </div>
</div>
</body>
</html>
