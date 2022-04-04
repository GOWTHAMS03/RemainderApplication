package login;

public class User {
	private String email, password,repassword,time;
	
	public String getemail() {
		return email;
		
		
	}
	public void setemail(String email) {
		this.email=email;
		
	}
	public String getpassword() {
		return password;
		
	}
	public void setpassword(String password) {
		this.password=password;
	}

	public String getrepassword() {
		return repassword;
		
	}
	public void setrepassword(String repassword) {
		this.repassword=repassword;
	}
	
	public String gettime() {
		return time;
		
		
	}
	public void settime(String time) {
		this.time=time;
		
	}


}
