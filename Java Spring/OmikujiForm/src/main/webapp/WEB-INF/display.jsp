<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Display Page</title>
</head>
<body>
	<h1 class="head">Here's Your Omikulji!</h1>
	<div class="container">
		<h3 class="text">In ${number} years, you will live in ${city}
		with ${famousName} as your room-mate, ${hobby}
		for a living. The next time you see a ${somethingLiving},
		you will have good luck. Also, ${quote}.</h3>
	</div>
	<a class="head"href="http://localhost:8080/omikuji">Go Back</a>
</body>
</html>