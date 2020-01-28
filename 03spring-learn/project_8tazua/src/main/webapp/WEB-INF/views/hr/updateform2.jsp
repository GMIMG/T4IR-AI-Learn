<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>
<style>
	table {text-align: center;}
	.t1 {min-width: 100px;}
</style>
</head>
<body>
<h1>고객정보 수정</h1>
<form action="./update2" method="post">
<table border="1">
<tr>
	<th class="t1">게시판 번호</th>
	<td><input type="number" name="cId" value="${proj.cId}" readonly></td>
</tr>
<tr>
	<th>고객 유형</th>
	<td>
	    <select name="customerType">
	        <option value="0" style="color:lightgray">고객유형을 선택하세요.</option>
	        <option value="1" <c:if test="${proj.customerType == 1}">selected</c:if>>운전자</option>
	        <option value="2" <c:if test="${proj.customerType == 2}">selected</c:if>>탑승자</option>
	    </select>
	</td>
</tr>
<tr>
	<th>이름</th>
	<td><input type="text" name="name" value="${proj.name}"></td>
</tr>
<tr>
	<th>전화번호</th>
	<td>
	<input type="text" autofocus name="phoneNumber" placeholder=" - 없이 작성하세요" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" maxlength="11" value="${proj.phoneNumber}" required><br>
	</td>
</tr>
<tr>
	<th>흡연여부</th>
	<td><input type="text" name="cigar" value="${proj.cigar}" required></td>
</tr>
<tr>
	<th>출발지</th>
	<td><input type="text" name="sPoint" value="${proj.sPoint}" required></td>
</tr>
<tr>
	<th>도착지</th>
	<td><input type="text" name="ePoint" value="${proj.ePoint}" required></td>
</tr>
<tr>
	<th>출발시각</th>
	<td><input type="time" autofocus value="${proj.sTime}" name="sTime" min="06:00" max="24:00" required></td>
	
</tr>
<tr>
	<th>메모</th>
	<td><input type="text" name="memo" value="${proj.memo}"></td>
</tr>
<tr>
	<th>&nbsp;</th>
	<td>
		<input type="submit" value="수정"> 
		<input type="reset" value="취소">
	</td>
</tr>
</table>
</form>
</body>
</html>