package login;
import java.sql.*;  

public class LoginDao {
	public static boolean validate(User l){ 
	boolean status=false;  
	try{  
	Connection con=ConnectionProvider.getCon();  
	              
	PreparedStatement ps=con.prepareStatement(  
	    "select * from user where email=? and password=?");  
	  
	ps.setString(1, l.getemail());  
	ps.setString(2, l.getpassword());  
	              
	ResultSet rs=ps.executeQuery(); 
	
	status=rs.next(); 
	
	              
	}catch(Exception e){}  
	  
	return status;  
	  
	}
}
