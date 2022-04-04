<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3305/reminder";%>
<%!String user = "root";%>
<%!String psw = "gowtham";%>
<%@page import="login.LoginDao"%>  
<jsp:useBean id="obj" class="login.User"/>  
  
<jsp:setProperty property="*" name="obj"/>


<%  
boolean status=LoginDao.validate(obj);  
if(status){  
out.println("Your successfully logged in");  
session.setAttribute("session","TRUE");

String redirectURL = "update.jsp";
session.setAttribute("email",obj.getemail());

response.sendRedirect(redirectURL);


}  
 
%>
<%

String name=(String)session.getAttribute("email");  

String email= request.getParameter("email");
String password=request.getParameter("password");
String repassword=request.getParameter("repassword");
String note=request.getParameter("note");
String time=request.getParameter("time");

if(email!= null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql=("Update user set email=?,password=?,repassword=?,note=?,time=? where email='"+name+"'");
ps = con.prepareStatement(sql);

ps.setString(1, email);
ps.setString(2, password);
ps.setString(3, repassword);
ps.setString(4, note);
ps.setString(5, time);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
String red="update.jsp";
response.sendRedirect(red);

}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>