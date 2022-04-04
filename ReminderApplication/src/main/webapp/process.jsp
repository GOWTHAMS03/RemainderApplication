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

String email=request.getParameter("email");
String password=request.getParameter("password");
String repassword=request.getParameter("repassword");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/reminder","root","gowtham");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into user(email,password,repassword)values('"+email+"','"+password+"','"+repassword+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
String URL = "login.jsp";
response.sendRedirect(URL);
%>
</body>
</html>