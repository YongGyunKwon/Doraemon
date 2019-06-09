<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="User.UserDAO" %>
<%@page import="java.io.PrintWriter" %>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="User.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/> 
<jsp:setProperty name="user" property="userPassword"/>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN ACTION</title>
</head>
<body>
<%
	UserDAO userDAO=new UserDAO();
	int result=userDAO.login(user.getUserID(),user.getUserPassword());
	if(result==1){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("location.href='doraemon.html'");
		script.println("</script>");
	}
	
	else if(result==0){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호를 틀립니다')");
		script.println("history.back()");
		script.println("</script>");
	}
	

	else if(result==0){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디')");
		script.println("history.back()");
		script.println("</script>");
	}
	

	else if(result==0){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('DB오류')");
		script.println("history.back()");
		script.println("</script>");
	}
	
%>	
</body>
</html>