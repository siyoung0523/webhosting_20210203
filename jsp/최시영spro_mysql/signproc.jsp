<%@page import="spro.com.org.SPRO_DBManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	SPRO_DBManager sdbm = new SPRO_DBManager();

	String sucValue ="";
	String p_id = (String)request.getParameter("id"); 
	String p_pw = (String)request.getParameter("pw");
	String p_name = (String)request.getParameter("name");
	String p_phone = (String)request.getParameter("phone");
	
	int ret = sdbm.signInsert(p_id, p_pw, p_name, p_phone);
	out.println("ret =" +ret);
	
	sucValue = "<a class ='btn btn-primary' href='index.jsp'>로그인페이지이동</a>";

%>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/mycss.css"/)>
</head>
<body>
	<div class="jumbotron">
  		<h1>My Study</h1>
 		<p>공부할려면 회원가입</p>
 		<% out.print(sucValue); %>
</body>