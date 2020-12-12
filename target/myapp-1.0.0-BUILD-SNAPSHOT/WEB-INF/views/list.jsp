<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<title>자유게시판</title>
<link rel="stylesheet" href="${path}/resources/css/style.css">

<script>
  function delete_ok(id) {
    var a = confirm("정말로 삭제하겠습니까?");
    if (a)
      location.href = 'deleteok/' + id;
  }
</script>

</head>
<body>
	<h1>자유게시판</h1>

	<table id="list" width="90%">
		<tr>
			<th>Id</th>
			<th>Category</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Content</th>
			<th>Regdate</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>

		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.seq}</td>
				<td>${u.category}</td>
				<td>${u.title}</td>
				<td>${u.writer}</td>
				<td>${u.content}</td>
				<td>${u.regdate}</td>
				<td> <div id="editButton"><a id="fontcolor" href="editform/${u.seq}">Edit</a></div></td>
				<td> <div id="deleteButton"><a id="fontcolor" href="javascript:delete_ok('${u.seq}')">Delete</a></div></td>
			</tr>
		</c:forEach>
	</table>

	<br />
	<div id="addButton"><a id="fontcolor" href="add">Add New Post</a></div>
	
</body>
</html>