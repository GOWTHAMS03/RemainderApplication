<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="image/icon/reminderlogo.png" type="image/x-icon">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.sql.*,java.util.*"%>
	<%@page import="java.time.LocalTime"%>
	<%@page import="beep.Beep"%>
	<%@page import="login.LoginDao"%>
	<jsp:useBean id="obj" class="login.User" />
	<jsp:setProperty property="*" name="obj" />

	<%
	boolean status = LoginDao.validate(obj);
	if (status) {
		out.println("Your successfully logged in");
		session.setAttribute("session", "TRUE");

		String redirectURL = "setalram.jsp";
		session.setAttribute("time", obj.gettime());

		response.sendRedirect(redirectURL);

	}
	%>
	<%
	String time = (String) session.getAttribute("time");
	%>
	print.out("request time"+time)

	<%
	LocalTime localtime = LocalTime.now();
	System.out.print("localtime" + localtime);
	%>

	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3305/reminder", "root", "gowtham");
	Statement st = con.createStatement();

	ResultSet rs = st.executeQuery("select time from user where time='" + time + "'");
	try {
		int counter = 0;

		while(true) {
		    
		    for(int i = 0; i < 2147483647 ; i++) {
		        
		        for(int j = 0; j < 2147483647 ; j++){  }
		    }
		    System.out.println(counter + ". Hello World!");
		    counter++;
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>