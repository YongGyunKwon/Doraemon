<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import = "java.sql.*" %>
    
<%
   Connection conn = null;                                        // null�� �ʱ�ȭ �Ѵ�.

   try{

   String url="jdbc:mysql://localhost:3306/doraemon";
      
   String id = "root";                                                    // ����� ����

   String pw = "110100";                                                // ����� ������ �н�����



   Class.forName("com.mysql.jdbc.Driver");                       // �����ͺ��̽��� �����ϱ� ���� DriverManager�� ����Ѵ�
   
   conn=DriverManager.getConnection(url,id,pw);              // DriverManager ��ü�κ��� Connection ��ü�� ���´�.

   out.println("����� ����Ǿ����ϴ�.");                            // Ŀ�ؼ��� ����� ����Ǹ� ����ȴ�.
	
   }catch(Exception e){                                                    // ���ܰ� �߻��ϸ� ���� ��Ȳ�� ó���Ѵ�.

   e.printStackTrace();
   out.println("�������");
   }   

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>