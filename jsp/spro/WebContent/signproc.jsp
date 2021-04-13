<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	out.println(123);
	out.println("<p>문단문단<p>");
	for(int i = 0; i < 10; i++){
		out.println("i ="+i);
	}
	out.println("<br>");
	String p_id = (String)request.getParameter("id"); 
	String p_pw = (String)request.getParameter("pw");
	String p_name = (String)request.getParameter("name");
	String p_phone = (String)request.getParameter("phone");
	out.println("p_id="+p_id);
	out.println("p_pw="+p_pw);
	out.println("p_name="+p_name);
	out.println("p_phone="+p_phone);
	//request.getParameter 이 메서드는 괄호 안의 값 가져옴.
	//형식 맞춰주기 위한 (String)
	Connection conn = null;
	PreparedStatement pstmt = null;
	try{  // ojcbc jar 추가 확인
	Class.forName("oracle.jdbc.driver.OracleDriver");
    conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.110:1521:xe", "AI", "1234");

	pstmt = conn.prepareStatement(
			"INSERT INTO "+ 
			"SPRO_MEMBER "+
			"VALUES "+
			"(SPROMEMBER.NEXTVAL,?,?,?,?)");
	pstmt.setString(1,p_id);
	pstmt.setString(2,p_pw);
	pstmt.setString(3,p_name);
	pstmt.setString(4,p_phone);

	int ret = pstmt.executeUpdate();
	if(ret > 0){
		System.out.println("정상적으로 insert됨");
		out.println("<a href='index.jsp'>로그인페이지이동</a>");
	}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		try{
			if(pstmt != null)pstmt.close();
			if(conn != null)conn.close();
		}
	catch(Exception e){
	}
}
%>