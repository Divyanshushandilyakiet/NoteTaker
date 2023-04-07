<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker : Home Pages</title>
<%@include file="AllCSSandJS.jsp"%>
</head>

<body>
	<div class="container">
		<%@include file="NavBar.jsp"%>
		<br>
		<h1>Please fill your note details</h1>
		<br>
		<!-- Form -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note title</label> 
				<input 
				name="title"
				required 
				type="text"
				class="form-control" 
				id="title" 
				aria-describedby="emailHelp"
				placeholder="Enter here id" >

			</div>
			<div class="form-group">
				<label for="content">Note content</label>
				<textarea 
				name="content"
				required 
				type="text"
				id="content" 
				placeholder="Enter your content"
				class="form-control" 
				style="height: 300px;">
			</textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>

		</form>

	</div>
</body>
</html>