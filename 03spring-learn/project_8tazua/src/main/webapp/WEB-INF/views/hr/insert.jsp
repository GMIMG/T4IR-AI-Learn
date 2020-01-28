<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>등록</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <style>
    #content {background: rgb(255, 255, 255); color: black; height: 9%; font-size: 50px;
    font-size: 16px; margin: 15px; text-align: center;}
	#indexslot {display: none;}
    #t1 {background: rgb(255, 255, 255); text-align: center; margin-top: 50px; font-size: 30px; letter-spacing: 5px;}
    #ct {color:red;}

    </style>
    
    <script>
            function check() {
            	
            	
                $('input').css('border-color', "black");
                $('input').css('border-width',"1");
                $('input').css('border-style',"solid");
            	
                if(fr.customerType.value == "0") {
                alert("고객유형을 입력하세요.");
                fr.customerType.focus();
                return false;}

                else if(fr.name.value == "") {
                alert("이름을 입력하세요.");
                $('#namebox').css('border-color', "red");
                $('#namebox').css('border-width',"3");
                $('#namebox').css('border-style',"solid");
                fr.name.focus();
                return false;
                }
            
                else if(fr.phoneNumber.value == "") {
                alert("휴대전화번호를 입력하세요.");
                $('#phonebox').css('border-color', "red");
                $('#phonebox').css('border-width',"3");
                $('#phonebox').css('border-style',"solid");
                fr.phoneNumber.focus();
                return false;}

                else if(fr.cigar.value == "") {
                alert("흡연여부를 입력하세요.");
                fr.cigar.focus();
                return false;}

                else if(fr.sPoint.value == "") {
                alert("출발지를 입력하세요.");
                $('#sbox').css('border-color', "red");
                $('#sbox').css('border-width',"3");
                $('#sbox').css('border-style',"solid");
                fr.sPoint.focus();
                return false;}

                else if(fr.ePoint.value == "") {
                alert("도착지를 입력하세요.");
                $('#ebox').css('border-color', "red");
                $('#ebox').css('border-width',"3");
                $('#ebox').css('border-style',"solid");
                fr.ePoint.focus();
                return false;}

                else return true;
                }
            
            
            function inNumber(){
                if(event.keyCode<48 || event.keyCode>57){
                    event.returnValue=false;}
                }   
    </script>
</head>
<body>
    <div id="t1">타즈아 정보를 입력하세요.</div>

    <div id="content">
        
        <form name="fr" onsubmit="return check()" action="./insert1" method="POST">
        

        
            <label for="cId">번호 : ${max}</label>
            <input id="indexslot" type="text" autofocus name="cId" value=${max}><br><br>

            
            <label for="customerType">고객유형</label><br>
	            <select name="customerType">
		            <option value="0" style="color:lightgray">고객유형을 선택하세요.</option>
		            <option value="1">운전자</option>
		            <option value="2">탑승자</option>
	            </select><br><br>
            
            <label for="name">이름</label><br>
            <input id="namebox" type="text" autofocus name="name" placeholder="이름"><br><br>
            
            <label for="phoneNumber">휴대전화번호</label><br>
            <input id="phonebox" type="text" autofocus name="phoneNumber" placeholder=" - 없이 작성하세요" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" maxlength="11"><br>
            <br>

            <label for="cigar">흡연여부</label><br>
            <input type="radio" checked name="cigar" value="비흡연"> 비흡연&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="cigar" value="흡연"> 흡연<br><br>
            
            <label for="sPoint">출발지</label><br>
            <input id="sbox" type="text" autofocus name="sPoint" placeholder="역삼"><br><br>

            <label for="ePoint">도착지</label><br>
            <input id="ebox" type="text" autofocus name="ePoint" placeholder="강남"><br><br>

            <label for="sTime">출발시간</label><br>
            <input type="time" autofocus name="sTime" min="06:00" max="24:00"><br><br>

            <label for="memo">메모</label><br>
            <input type="text" autofocus name="memo" placeholder="메모를 입력하세요"><br><br>
            
            <button type="submit" class="btn btn-default" value="">확인</button>&nbsp;&nbsp;
            <button type="reset" class="btn btn-default" value="">초기화</button>&nbsp;&nbsp;
            <a href="<c:url value='/'/>"><button type="button" class="btn btn-default" value="">뒤로가기</button></a>
        </form>  
    </div>     
</body>
</html>