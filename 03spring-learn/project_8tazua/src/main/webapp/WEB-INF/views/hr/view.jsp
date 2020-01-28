<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>
<style>
	table {text-align : center;}
	.t1 {min-width: 100px;}
	.t2 {min-width: 200px;}
</style>
</head>
<body>
<h1>고객정보 상세 조회</h1>

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
<a href="<c:url value='/'/>">홈</a>&nbsp;
<a href="update2?cId=${proj.cId}">수정하기</a>
<a href="delete1?cId=${proj.cId}">삭제하기</a>
</body>
</html>