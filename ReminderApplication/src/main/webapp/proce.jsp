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
	<%@page import="login.LoginDao"%>
	<jsp:useBean id="obj" class="login.User" />

	<jsp:setProperty property="*" name="obj" />

	<%
	out.print("email :" + obj.getemail());
	out.print("password :" + obj.getpassword());
	boolean status = LoginDao.validate(obj);
	if (status) {
		out.println("Your successfully logged in");
		session.setAttribute("session", "TRUE");

		String redirectURL = "home.jsp";
		session.setAttribute("email", obj.getemail());
		session.setAttribute("password", obj.getpassword());
		response.sendRedirect(redirectURL);
	} else {
		out.print("Sorry, email or password error");
	%>
	<jsp:include page="login.jsp"></jsp:include>
	<%
	}
	%>

</body>
</html>