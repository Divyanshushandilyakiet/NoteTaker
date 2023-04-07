<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.helper.*,org.hibernate.*,com.entities.*"%>
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
		<h1>Edit your page</h1>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_Id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		%>
		<!-- Form -->
		<form action="UpdateServlet" method="post">
			<input value="<%=note.getId()%>" name="noteId" type="hidden">
			<div class="form-group">
				<label for="title">Note title</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here id"
					value="<%=note.getTitle()%>">

			</div>
			<div class="form-group">
				<label for="content">Note content</label>
				<textarea name="content" required id="content"
					placeholder="Enter your content" class="form-control"
					style="height: 300px;"><%=note.getContent()%>
			</textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save your note</button>
			</div>

		</form>
	</div>
</body>
</html>