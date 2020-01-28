<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>
</head>
<body>
<h1>고객 목록</h1>
<!-- 
<a href="<c:url value='/hr/insert'/>">신규 사원 정보 입력</a>
 -->
<table border="1">
<tr>
	<th>ID</th>
	<th>NAME</th>
	<th>EMAIL</th>
	<th>GENDER</th>
	<th>BIRTH</th>
</tr>
<c:forEach var="cust" items="${custList}">
<tr>
	<td><a href="<c:url value='/customer/${cust.customerId}'/>">${cust.customerId}</a></td>
	<td>${cust.name}</td>
	<td>${cust.email}</td>
	<td>${cust.gender}</td>
	<td>${cust.birth}</td>
</tr>
</c:forEach>
</table>
</body>
</html>