<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Dashboard</title>
</head>
<body>
	<p><a href="/songs/new">Add New</a></p>
	<p><a href="/songs/topten">Top Song</a></p>
	<form action="/songs/search" method="get">
		<input type="search" name="keyword" />
		<button>Search</button>
	</form>
	<table class="table">
  		<thead>
    		<tr>
      			<th scope="col">Name</th>
      			<th scope="col">Rating</th>
      			<th scope="col">actions</th>                                             
    		</tr>
  		</thead>
  		<tbody>
  		<c:forEach var="s" items="${songs}">
    		<tr  class="table-light">
      			<td><a href="/songs/${s.id}">${s.title}</a></td>
      			<td>${s.rating}</td>
      			<td>
      				<form action="/songs/delete/${s.id}" method="post">
      					<input type="hidden" name="_method" value="delete" />
      					<button> Delete </button>
      				</form>
      			</td>
    		</tr>
    	</c:forEach>
  		</tbody>
	</table>
</body>
</html>