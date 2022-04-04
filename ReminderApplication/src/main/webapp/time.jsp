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
String time=request.getParameter("time");

%>
  <%String email=(String)session.getAttribute("email");   
   out.println(email);%>
 

<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/reminder", "root", "gowtham");
Statement st=conn.createStatement();



int i=st.executeUpdate("UPDATE user SET time ='"+time+"' WHERE email='"+email+"'" );
out.println("Data is successfully inserted!");          
String redirectURL = "tretrivetime.jsp";
response.sendRedirect(redirectURL);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>




</body>
</html>