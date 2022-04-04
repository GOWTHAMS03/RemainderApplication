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
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%String password=(String)session.getAttribute("password");   %>
<%
String currentPass=request.getParameter("current");
String newpas=request.getParameter("newpas");
String conpass=request.getParameter("confirm");
String connurl = "jdbc:mysql://localhost:3305/reminder";
Connection con=null;
String pass="";

try{
Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "gowtham");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from user where password='"+password+"'");
while(rs.next()){

pass=rs.getString(1);
} 
if(pass.equals(currentPass)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update user set password='"+newpas+"' where password='"+password+"'");
out.println("Password changed successfully");
st1.close();
con.close();
}
else{

	
		out.println("Invalid Current Password");
	 

}
}
catch(Exception e){
out.println(e);
}
%>
</body>
</html>