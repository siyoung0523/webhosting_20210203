<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type = "text/css">
	.container{
		width : 800px;
		height : 500px;
		margin : 0 auto;
		background-color: #c8c8c8;
		padding : 150px 100px;  <%-- 테이블 여백 아래위 150px, 좌우 100px --%>
		box-sizing : border-box; 
		}
</style>
<script type ="text/javascript">
	window.onload = function(){
		document.getElementById('idsearch').onclick=function(){
			location.href = 'idsearch.jsp'; //버튼 누르면 idsearch.jsp로 이동
		}
		document.getElementById('login').onclick=function(){
	//		var id = document.getElementById('id');
	//		var pw = document.getElementById('pw');
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
</head>
<body>
	<div class ="container">
		<table>
			<tr>
				<td>아이디</td>
				<th><input type ="text" name ="id" id="id"/></th>
				<th rowspan="2"><input type="button" value="로그인" id="login"></th>
			</tr>
			<tr>
				<td>비밀번호</td>
				<th><input type="text" name = "pw" id="pw"/></th>
				
			</tr>
			<tr>
				<td><input type="button" value="ID찾기" id="idsearch"></td>
				<td><input type="button" value="회원가입" id="signin"></td>
				<td><input type="button" value="퇴실" id="outroom"></td>
			</tr>
		</table>
	</div>
</body>
</html>