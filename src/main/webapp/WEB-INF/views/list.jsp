<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>자유게시판</title>
<%-- <link rel="stylesheet" href="${path}/resources/css/style.css"> --%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/uikit@3.5.16/dist/css/uikit.min.css" />


<script>
  function delete_ok(id) {
    var a = confirm("정말로 삭제하겠습니까?");
    if (a)
      location.href = 'deleteok/' + id;
  }
</script>

<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<style>
/* Remove the navbar's default rounded borders and increase the bottom margin */
.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

#editButton {
	width: 80px;
	margin: auto;
	color: white;
	border: 1px #81BEF7;
	background: white;
	padding: 5px 5px;
	text-align: center;
	font-weight: bold;
	display: inline-block;
}

#deleteButton {
	width: 80px;
	margin: auto;
	border: 1px #E2A9F3;
	background: lightgrey;
	padding: 5px 5px;
	text-align: center;
	font-weight: bold;
	display: inline-block;
}

.navbar navbar-inverse {
	background-color: orange;
}

.container-fluid {
	background-color: orange;
}

.navbar navbar-header {
	background-color: orange;
}

.collapse navbar-collapse {
	background-color: orange;
}

.nav navbar-nav {
background-color: orange;
}



#buttonArea {
	text-align: center;
}
</style>

</head>
<body>
	<div class="jumbotron">
		<div class="container text-center">
			<h1>H:Market</h1>
			<p>한동 중고로운 평화나라</p>
		</div>
	</div>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- <a class="navbar-brand" href="#">Logo</a> -->
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<!-- <li class="active"><a href="#">Home</a></li> -->
					<li><a href="add">추가</a></li>
	
	
					<li><a href="#">수정</a></li>
					<li><a href="#">장바구니</a></li>
					<li><a href="#">거래목록</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Your Account</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
				</ul>
			</div>
		</div>
	</nav>



	<div class="container">
		<div class="row">
			<table id="list" width="90%">
				<c:forEach items="${list}" var="u">
					<div class="col-sm-4">
						<div class="panel panel-primary">

							<div class="panel-heading">${u.seq}</div>
							<div class="panel-heading">${u.title}</div>
							<div class="panel-body">
								<img
									src="https://image.zdnet.co.kr/2019/10/15/mjjoo_Fg6DzvWQLUGzIl.jpg"
									class="img-responsive" style="width: 100%" alt="Image">
							</div>
							<div class="panel-footer">${u.category}</div>
							<div class="panel-footer">${u.writer}</div>
							<div class="panel-footer">${u.content}</div>
							<div class="panel-footer">${u.regdate}</div>
							<div class="panel-footer">
								<div id="buttonArea">
									<div id="editButton">
										<a id="fontcolor" href="editform/${u.seq}">Edit</a>
									</div>

									<div id="deleteButton">
										<a id="fontcolor" href="javascript:delete_ok('${u.seq}')">Delete</a>
									</div>

								</div>



							</div>
						</div>
					</div>

				</c:forEach>
			</table>


		</div>
	</div>


	</div>
	<br>
	<br>

	<footer class="container-fluid text-center">
		<p>Online Store Copyright</p>
		<form class="form-inline">
			Get deals: <input type="email" class="form-control" size="50"
				placeholder="Email Address">
			<button type="button" class="btn btn-danger">Sign Up</button>
		</form>
	</footer>



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
				<td>
					<div id="editButton">
						<a id="fontcolor" href="editform/${u.seq}">Edit</a>
					</div>
				</td>
				<td>
					<div id="deleteButton">
						<a id="fontcolor" href="javascript:delete_ok('${u.seq}')">Delete</a>
					</div>
				</td>
			</tr>
		</c:forEach>
	</table>

	<br />
	<div id="addButton">
		<a id="fontcolor" href="add">Add New Post</a>
	</div>

</body>
</html>