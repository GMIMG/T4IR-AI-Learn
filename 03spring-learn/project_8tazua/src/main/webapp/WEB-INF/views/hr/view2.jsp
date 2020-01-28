<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style>
	table {text-align : center;}
	.t1 {min-width: 100px;}
	.t2 {min-width: 200px;}
	#container {margin:30px}
</style>
</head>
<body>
<div class="container-fluid">
<h2>사원 정보 상세 조회</h2>

<c:if test="${proj.customerType eq '1'}">
    <c:set var="test" value="운전자" />
</c:if>
<c:if test="${proj.customerType eq '2'}">
    <c:set var="test" value="탑승자" />
</c:if>

<table border="1">
<tr>
	<th class="t1">게시판 번호</th>
	<td class="t2">${proj.cId}</td>
</tr>
<tr>
	<th>고객유형</th>
	<td>${test}</td>
</tr>
<tr>
	<th>이름</th>
	<td>${proj.name}</td>
</tr>
<tr>
	<th>전화번호</th>
	<td>${proj.phoneNumber}</td>
</tr>
<tr>
	<th>흡연여부</th>
	<td>${proj.cigar}</td>
</tr>
<tr>
	<th>출발지</th>
	<td>${proj.sPoint}</td>
</tr>
<tr>
	<th>도착지</th>
	<td>${proj.ePoint}</td>
</tr>
<tr>
	<th>출발시각</th>
	<td>${proj.sTime}</td>
</tr>
<tr>
	<th>메모</th>
	<td>${proj.memo}</td>
</tr>
</table>
<br>
<button type="button" class="btn btn-outline-primary" onclick = "location.href = '/myapp/'">홈</button>&nbsp;
<button type="button" class="btn btn-outline-success" onclick = "location.href = 'update2?cId=${proj.cId}'">수정하기</button>&nbsp;
<button type="button" class="btn btn-outline-danger" onclick = "location.href = 'delete1?cId=${proj.cId}'">삭제하기</button>
</div>
</body>
</html>