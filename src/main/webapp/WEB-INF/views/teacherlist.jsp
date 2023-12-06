<%--
  Created by IntelliJ IDEA.
  User: kang-yewon
  Date: 12/1/23
  Time: 10:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<html>
<head>
    <title>Title</title>
</head>
<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하시겠습니까?");
        if(a) location.href= 'deleteok/' + id;
    }
</script>

<body>

<div class="table-responsive">
    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th>#</th>
            <th>사진</th>
            <th>이름</th>
            <th>과목</th>
            <th>기간</th>
            <th>번호</th>
            <th>메일</th>
            <th>등록일</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.seq}</td>
                <td>${u.photo}</td>
                <td>${u.name}</td>
                <td>${u.subject}</td>
                <td>${u.term}</td>
                <td>${u.phone}</td>
                <td>${u.mail}</td>
                <td>${u.regdate}</td>
                <td><a href="view/${u.seq}">View</a> </td>
                <td><a href="editform/${u.seq}">Edit</a> </td>
                <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <br/><button type="button" onclick="location.href='add'">새글 작성하기</button>

</div>
</body>
</html>
