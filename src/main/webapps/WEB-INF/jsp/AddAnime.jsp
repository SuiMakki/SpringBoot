<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>View Admin Lte</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
a {
    color: white;
}

a:hover {
    color: white;
    text-decoration: none;
}
</style>
</head>

<body>
<div class="container">
<h1 class="p-3">Anime List</h1>
<form:form>
<table class="table table-bordered">
<tr>
<th>Id</th>
<th>Name</th>
<th>Edit</th>
<th>Delete</th>
</tr>

        <c:forEach var="anime" items="${animeList}">
        <tr>
        <td>${anime.id}</td>
        <td>${anime.name}</td>
        <td>${anime.year}</td>
        <td><button type="button" class="btn btn-success">
        <a href="/editAnime/${anime.id}">Edit</a>
        </button></td>
        <td><button type="button" class="btn btn-danger">
        <a href="/deleteAnime/${anime.id}">Delete</a>
        </button></td>
        </tr>
        </c:forEach>


</table>
</form:form>

<button type="button" class="btn btn-primary btn-block">
  <a href="/admin">Add New Article</a>
</button>


</div>

</body>
</html>