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
</head>
<body>
	<div class="container">
		<form action="signproc.jsp" method="get">
<!-- submit을 누르면 signproc.jsp로 아래의 값들을 다 들고 이동 -->
<!-- get방식은 주소값에 가지고 간 값들을 보여줌, post방식은 주소값에 값들 안보여줌 -->
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id"/></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name="pw"/></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"/></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phone"/></td>
				</tr>
			</table>
			<input type="submit" value="회원가입"/>
		</form>
	</div>
</body>
</html>