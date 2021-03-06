<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type ="text/javascript">
 	window.onload = function(){ // .onload : 이 함수의 내용을 실행하라는 뜻
		document.getElementById('idsearch').onclick=function(){
			location.href = 'idsearch.jsp'; //버튼 누르면 idsearch.jsp로 이동
		}
		document.getElementById('login').onclick=function(){
 			var id = document.getElementById('id'); //  id라는 태그가 있으면 찾아서 var id 에 넣어달라
			var pw = document.getElementById('pw'); // pw라는 태그가 있으면 찾아서 var pw 에 넣어달라
	//		alert('id='+id.value);
	//		alert('pw='+pw.value);
			location.href = 'login.jsp?id='+id.value+'&pw='+pw.value;
			//버튼 누르면 login.jsp로 이동, 이때 id와 pw를 가지고 이동해야함.
		}
		document.getElementById('signin').onclick=function(){
			location.href = 'signin.jsp'; //버튼 누르면 signin.jsp로 이동
		}
		document.getElementById('outroom').onclick=function(){
			location.href = 'outroom.jsp'; //버튼 누르면 outroom.jsp로 이동
		}
 	}
</script>
<%-- 부트스트랩을 이용할 수 있게 하는 코드 --%>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/mycss.css"/)>
<!-- 쿼리문 -->  
<script type="text/javascript">
  	$('document').ready(function(){
		$('#seatsel').on('click', function(){
			location.href='seatsel.jsp';
		})
		$('#logout').on('click',function(){
			location.href='logout.jsp';
		})
	 })
	  </script>
</head>
<body>
	<%-- 부트스트랩 --%>
	<div class="jumbotron">
  		<h1>My Study Cafe System</h1>
 		<p>Study Hard!</p> 
 		
 		<%
 		String name = (String)session.getAttribute("name");
 		if( name != null ){
 		%>
 			안녕하세요....<%out.print((String)name); %>님
 		<%}else{%>
 		
 		<form action="/action_page.php">
	  <div class="form-group">
	    <label for="email">Name:</label>
	    <input type="text" class="form-control" placeholder="Enter email" id="id">
	  </div>
	  <div class="form-group">
	    <label for="pwd">Password:</label>
	    <input type="password" class="form-control" placeholder="Enter password" id="pw">
	  </div>
	   	<% } %>
	  
	  <div class="form-group form-check">
	    <label class="form-check-label">
	      <input class="form-check-input" type="checkbox"> Remember me
	    </label>
	  </div>
	  
	<div class="row">
		<input type="button" value="ID찾기" id="idsearch" class="btn btn-primary ml-2 mr-2">
		<%
		if (name != null){
		%>
		<input type="button" value="로그아웃" id="logout" class="btn btn-primary mr-2">
		<%}else{ %>
		<input type="button" value="로그인" id="login" class="btn btn-primary mr-2">
		<%} %>
		
		<input type="button" value="회원가입" id="signin"class="btn btn-primary mr-2">
		<input type="button" value="죄석선택" id="seatsel"class="btn btn-primary mr-2">
		<input type="button" value="시간충전" id="timecharge"class="btn btn-primary mr-2">
		<input type="button" value="퇴실" id="outroom"class="btn btn-primary mr-2">
	</div>
</form>
	<%-- 부트스트랩 --%>
	<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Column 1</h3>
      <p>첫번째 컬럼 문단</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Column 2</h3>
      <p>첫번째 컬럼 문단</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Column 3</h3>        
      <p>첫번째 컬럼 문단</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
  </div>
</div>
</body>
</html>
