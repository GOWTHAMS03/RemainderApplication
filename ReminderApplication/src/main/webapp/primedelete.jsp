<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "icon" href = "image/icon/reminderlogo.png"  type = "image/x-icon">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*,java.util.*"%>
<%
String email=(String)session.getAttribute("email");
try
{                                
	
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/reminder", "root", "gowtham");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM user  WHERE email='"+email+"'");
	
String redirectURL = "delete.jsp";
response.sendRedirect(redirectURL);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>

</body>
</html>