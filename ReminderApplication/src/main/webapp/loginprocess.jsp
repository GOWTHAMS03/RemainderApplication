
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

<jsp:useBean id="obj" class="bean.EmailSender"/> 
<%
String email=request.getParameter("email");


String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3305/reminder","root","gowtham");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from user where email='"+email+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("email").equals(email))
{
    session.setAttribute("password",password);
    String redirectURL = "home.jsp";
    response.sendRedirect(redirectURL);


}
else{
	 
    String URL = "login.jsp";
    response.sendRedirect(URL);

}
}
catch (Exception e) {
e.printStackTrace();
}

%>
  


</body>
</html>