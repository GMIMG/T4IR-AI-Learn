<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<h1>고객 정보 상세 조회</h1>
<table border="1">
<tr>
	<th>CUSTOEMR_ID</th>
	<td>${cust.customerId}</td>
</tr>
<tr>
	<th>NAME</th>
	<td>${cust.name}</td>
</tr>
<tr>
	<th>EMAIL</th>
	<td>${cust.email}</td>
</tr>
<tr>
	<th>GENDER</th>
	<td>${cust.gender}</td>
</tr>
<tr>
	<th>BIRTH</th>
	<td>${cust.birth}</td>
</tr>
</table>
<!-- 
<a href="update?empid=${emp.employeeId}">수정하기</a> 
<a href="delete?empid=${emp.employeeId}">삭제하기</a>
 -->
</body>
</html>