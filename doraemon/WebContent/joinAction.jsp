<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="User.UserDAO" %>
<%@page import="java.io.PrintWriter" %>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="User.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/> 
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userEmail"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN ACTION</title>
</head>
<body>
<%

	if(user.getUserID()==null || user.getUserPassword()==null || user.getUserName()==null || user.getUserEmail()==null ){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('입력한 사항이 없습니다.')");
		script.println("history.back()");
		script.println("</script>");
		
		
	}
	else{
	UserDAO userDAO=new UserDAO();
	int result=userDAO.join(user);
	if(result==-1){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('이미 존재하는 아이디입니다!')");
		script.println("history.back()");
		script.println("</script>");
	}
	
	else {
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("location.href='index.jsp'");
		script.println("</script>");
	}
	
	}
%>	
</body>
</html>