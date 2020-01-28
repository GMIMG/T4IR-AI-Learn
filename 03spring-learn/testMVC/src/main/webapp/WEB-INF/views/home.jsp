<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CoderBy</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#getEmp").click(function() {
		$("#result").html("");
		$.ajax({
			type: 'GET',
			url: './hr/json/'+$("#empid").val(),
			success: function(data) {
				var serverData = JSON.stringify(data);
				$("#result").html(serverData);
			},
			error : function(error) {
				console.log(error);
			}
		})
	})
	$("#getEmp2").click(function() {
		var formData = $('#form').serializeArray();
		console.log(JSON.stringify(formData));
		$("#result").html("");
		$.ajax({
			type: 'POST',
			url: './hr/ajax',
			headers : {
				'Accept' : 'application/json',
				'Content-Type' : 'application/json'
			},
			data: JSON.stringify(formData),
			success: function(data) {
				var serverData = JSON.stringify(data);
				$("#result").html(serverData);
			},
			error : function(error) {
				console.log(error);
			}
		})
	})
});
</script>

<script src="<c:url value='/resources/js/customer.js'/>"></script>





</head>


<body>
<!-- 
<form id="form">
<input type="text" id="empid" name="employeeId" value="100">
<input type="button" id="getEmp" value="사원정보(비동기 GET 방식)">
<input type="button" id="getEmp2" value="사원정보(비동기 POST 방식)">
</form>
<div id="result"></div>
 -->
 
 
     <div class="wrapper">
    <h1>Customer Management</h1>
    <span id="maxcust" >Customer : ${count}</span>
    <img src="<c:url value='/resources/img/customers.png'/>" width="100%" alt="이미지">
    <form id="modifyform">
    <table border=2> 
        <caption>  </caption>
        <tr>
            <td>&nbsp;Index&nbsp;</td>
            <td>Name</td>
            <td>Gender</td>
            <td>Email</td>
            <td>Birth</td>
        </tr>
        <tr>
            <td id="searchindex">-1</td>
            <td><input id="searchname" type = "text" name = "name" size = "8">${cust.name}</td>
            <td id="searchgender" class="gender">
                <input type = "radio" value="01" name = "gender"> female <br>
                <input type = "radio" value="02" name = "gender"> male
            </td>
            <td><input id="searchemail" type = "text" name = "email" size = "20">${cust.email}</td>
            <td><input id="searchbirth" type = "text" name = "birth" size = "6">${cust.birth}</td>
        </tr>
    </table>
    <br>
    <input id="find" type = "text" name = "find" size = "2" value="index">
    <button type="button" class="btn btn-default" onclick="spec();">찾아가기</button>
    <button type="button" id="getprevcust" name="prev" class="btn btn-info" onclick="prev();">이전</button>
    <button type="button" id="getnextcust"  name="next" class="btn btn-info" onclick="next();">다음</button>
    <button type="button" class="btn btn-warning" onclick="modify();">수정</button>
    <button type="button" class="btn btn-danger" onclick="del();">삭제</button>
    
    </form>
    
    <a href="<c:url value='/hr'/>">사원 전체 목록</a>
	<a href="<c:url value='/customerlist'/>">고객 전체 목록</a>

    <br><br><br>
    
    <form id="insertform">
    <table border=2> 
        <caption> 생성테이블 </caption>
        <tr>
            <td>Name</td>
            <td>Gender</td>
            <td>Email</td>
            <td>Birth</td>
        </tr>
        <tr>

            <td><input id="createname" type = "text" name = "inputname" size = "8"></td>
            <td id="creategender" class="gender">
                <input type = "radio" value="01" name = "inputgender"> female <br>
                <input type = "radio" value="02" name = "inputgender"> male
            </td>
            <td><input id="createemail" type = "text" name = "inputemail" size = "20"></td>
            <td><input id="createbirth" type = "text" name = "inputbirth" size = "6" value='000000'></td>
        
        </tr>
    </table>
    <br>
    <button type="button" class="btn btn-primary" onclick="create();">생성</button>
    </form>
    <button type="button" class="btn btn-success" onclick="save();">저장</button>
</div>

</body>
</html>
