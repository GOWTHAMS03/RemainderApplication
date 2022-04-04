<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*, java.sql.*, java.util.zip.*"%>
<%
String name = (String) session.getAttribute("email");
%>
<%
String saveFile = "";
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
	DataInputStream in = new DataInputStream(request.getInputStream());
	int formDataLength = request.getContentLength();
	byte dataBytes[] = new byte[formDataLength];
	int byteRead = 0;
	int totalBytesRead = 0;
	while (totalBytesRead < formDataLength) {
		byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
		totalBytesRead += byteRead;
	}
	String file = new String(dataBytes);
	saveFile = file.substring(file.indexOf("filename\"") + 10);
	saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
	saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
	int lastIndex = contentType.lastIndexOf("=");
	String boundary = contentType.substring(lastIndex + 1, contentType.length());
	int pos;
	pos = file.indexOf("filename=\"");
	pos = file.indexOf("\n", pos) + 1;
	pos = file.indexOf("\n", pos) + 1;
	pos = file.indexOf("\n", pos) + 1;
	int boundaryLocation = file.indexOf(boundary, pos) - 4;
	int starPos = ((file.substring(0, pos)).getBytes()).length;
	int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
	File ff = new File(	"C:/Users/GOWTHAM SEKAR/eclipse-workspace/ReminderApplication/src/main/webapp/image/insertimage");

	FileOutputStream fileOut = new FileOutputStream(ff);
	fileOut.write(dataBytes, starPos, (endPos - starPos));
	fileOut.flush();
	fileOut.close();

	PreparedStatement psmnt = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3305/reminder", "root", "gowtham");
		psmnt = con.prepareStatement("Update user set image=? where email='" + name + "'");
		psmnt.setString(1, ff.getPath());
		int s = psmnt.executeUpdate();
		if (s > 0) {
	out.println("successfully add");

		} else {
	out.println("Error");

		}
	} catch (Exception e) {
		out.println(e);
	}
}
%>