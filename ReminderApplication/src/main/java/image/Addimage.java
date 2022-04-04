package image;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/Addimage")
public class Addimage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Addimage() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		System.out.println("add image");
		Part file = request.getPart("image");

		String imagefile = file.getSubmittedFileName();
		System.out.println("Selected file name: " + imagefile);
		

		String uploadPath = "C:/Users/GOWTHAM SEKAR/eclipse-workspace/ReminderApplication/src/main/webapp/image/insertimage/"
				+ imagefile;
		System.out.println("Upload Path: " + uploadPath);
		try {

			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();

			byte[] data = new byte[is.available()];
			fos.write(data);
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		Connection con=null;
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3305/reminder","root","gowtham");
		PreparedStatement stmt;
		
		String query="insert into user(image) values(?)";
		stmt=con.prepareStatement(query);
		stmt.setString(1,imagefile);
		int row=stmt.executeUpdate();
		if(row>0) {
			System.out.println("image added into database successfully");
		}
		else {
			System.out.println("uploaded fail");
		}
		
		}catch(Exception e) {
			System.out.println(e);
		}

	}
}
