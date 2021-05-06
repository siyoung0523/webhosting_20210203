<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="spro.com.org.Spro_SeatDBManager" %>
<%@ page import ="spro.com.org.SPRO_SeatUse" %>
<%@ page import ="java.util.ArrayList" %>

    <%
    	Spro_SeatDBManager ssdm = new Spro_SeatDBManager();
    	ArrayList<SPRO_SeatUse> list = ssdm.select(); //ArrayList에 seatuse 객체가 들어간다는 것
    	//list안에 SeatUse객체가 들어감. 
    	out.print("list.size() ="+list.size());
// 		SPRO_SeatUse ssu = list.get(0);
// 		System.out.println("ssu.getM_time()="+ssu.getM_time()+"<br/>");
// 		System.out.println("ssu.getName()="+ssu.getName()+"<br/>");
// 		System.out.println("ssu.getPhone()="+ssu.getPhone()+"<br/>");
// 		System.out.println("ssu.getNum()="+ssu.getNum()+"<br/>"); 
		%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> <!-- 부트스트랩 css -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> <!--#J쿼리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script><!-- #부트스트랩 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> <!--#부트스트랩 -->
<link rel="stylesheet" href="/spro/css/mycss.css"/>
<style type="text/css">
.mybgwh{
	/*r g b 255 255 255*/
	background-color: #555;
	color: white;}
</style>
</head>
<body> 
<div class ="container mybgwh">
	관리자 화면입니다
	<table class="table table-dark table-hover text-center">
		<thead>
			<tr>
				<td>좌석<td/><td>이름<td/><td>연락처<td/><td>충전시간<td/>
			</tr>
		<thead>
		<tbody>
		<% for(int i = 0; i < list.size();i++){
				SPRO_SeatUse ssu = list.get(i);
		%>
			<tr>
				<td><%out.println(ssu.getNum());%></td>
				<td><%out.println(ssu.getName());%></td>
				<td><%out.println(ssu.getPhone());%></td>
				<td><%out.println(ssu.getM_time());%></td>
			</tr>
			<%} %>
		</tbody>
	</table>
	현재 좌석 내용들 입니다.
</div>
</body>
</html>