<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">



<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <title>타즈아</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!--폰트어섬추가 -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--폰트어섬추가 -->
    
    
    <script>
	    function check() {
            if(fr.customerType.value == "0") {
            	alert("검색 유형을 선택하세요.");
            	return false;
            }
	        if(fr.searchString.value == "") {
	        alert("검색 내용을 입력하세요.");
	        fr.searchString.focus();
	        $('#redline').css('border-color', "red");
	        $('#redline').css('border-width',"3");
	        $('#redline').css('border-style',"solid");
	        return false;}
	        else return true;}
    </script>
    
    
    
    <style>
    th {
   		text-align: center;   
	}
    .searchtable {
    	width : 100%;
    	text-align: center; 
    }
    .memoslot {
    	min-width : 100px;
    }
    #content {background: rgb(255, 255, 255); color: black; height: 9%; float: none; font-size: 50px;
    font-size: 16px; margin: 15px;}

    #t1 {background: rgb(255, 255, 255); text-align: center; margin-top: 50px; font-size: 30px; letter-spacing: 5px;}
    #ct {color:red}
    
    .header-img {width : 200px;}
    header {text-align : center;}
    </style>
    
    
</head>



<body>

<header>
	<a href="<c:url value='/'/>"><img class="header-img" alt="카풀이미지" src="<c:url value='img/carpool.jpg'/>" ></a>
</header>




    <div class="container">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <!-- 오른쪽 메뉴바 -->
                    <button type="button" class="collapsed navbar-toggle" data-toggle="collapse" data-target="#nav_menu" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<c:url value='/'/>">
                        타즈아
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="nav_menu">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="<c:url value='/insert1'/>">고객 등록</a>
                        </li>
                        <li>
                            <a href="">망할자식 신고</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="col-sm-3">

            <div class="panel panel-default">
                <div class="panel-heading">
                    Today
                </div>
                <div class="panel-body">
                <script> 
                    var today = new Date( )
                    var driverCount
                    var passenger
                    document.write(today.getYear( )+1900 , "년 " , today.getMonth( )+1 , "월 " , today.getDate( ) , "일")
                </script> 
                </div>
            </div>

        </div>

        <div class="col-sm-9">
        
        <div id="content">
            <form name="fr" onsubmit="return check()" action="./search" method="POST">
		        
	            <select name="customerType" >
	                <option value="0" style="color:lightgray">검색유형</option>
	                <option value="1">출발지</option>
	                <option value="2">도착지</option>
	                <option value="3">출발시간</option>
	            </select>
	     
	            <input id = "redline" style="border-radius: 80px/120px;" type="text" autofocus name="searchString" placeholder="검색어를 입력하세요">
	            &nbsp;<button type="submit" class="btn btn-default" value="">검 색</button>
	        </form>         
	    </div>
            
            
            
<table class="searchtable" border="1">
<tr>
	<th>번호</th>
	<th>고객 유형</th>
	<th>이름</th>
	<th>연락처</th>
	<th>흡연여부</th>
	<th>출발지</th>
	<th>도착지</th>
	<th>출발시간</th>
	<th>메모</th>
</tr>
<c:forEach var="proj" items="${projList}">

<c:set var="test" value="1" />

<c:if test="${proj.customerType eq '1'}">
    <c:set var="test" value="운전자" />
</c:if>
<c:if test="${proj.customerType eq '2'}">
    <c:set var="test" value="탑승자" />
</c:if>



<tr>
	<td><a href="<c:url value='/${proj.cId}'/>">${proj.cId}</a></td>
	<td>${test}</td>
	<td>${proj.name}</td>
	<td>${proj.phoneNumber}</td>
	<td>${proj.cigar}</td>
	<td>${proj.sPoint}</td>
	<td>${proj.ePoint}</td>
	<td>${proj.sTime}</td>
	<td class="memoslot">${proj.memo}</td>
</tr>
</c:forEach>
</table>

            <nav class="text-center">
                <ul class="pagination">
                    <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                    </li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    
    
    
</body>
</html>