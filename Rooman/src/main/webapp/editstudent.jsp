<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try
{
	
	 String id=request.getParameter("id");
	    String name=request.getParameter("name");
	    
	    String fName=request.getParameter("fName");
	   
	    String dob=request.getParameter("dob");
	    String email=request.getParameter("email");
	    String mob=request.getParameter("mob");
	    String gender=request.getParameter("gender");
	    String address=request.getParameter("address");
	    String city=request.getParameter("city");
	    String pin=request.getParameter("pin");
	    String state=request.getParameter("state");
	    String country=request.getParameter("country");
	    String hobby=request.getParameter("hobby");
	    String classx_board=request.getParameter("classx_board");
	    String classx_percentage=request.getParameter("classx_percentage");
	    String classx_poy=request.getParameter("classx_poy");
	    String classxii_board=request.getParameter("classxii_board");
	    String classXii_percentage=request.getParameter("classXii_percentage");
	    String classxii_poy=request.getParameter("classxii_poy");
	    String graduation_board=request.getParameter("graduation_board");
	    String graduation_percentage=request.getParameter("graduation_percentage");
	    String graduation_poy=request.getParameter("graduation_poy");
	    String diploma_board=request.getParameter("diploma_board");
	    String diploma_percentage=request.getParameter("diploma_percentage");
	    String diploma_poy=request.getParameter("diploma_poy");
	    String COA=request.getParameter("COA");
	   
	String url="jdbc:mysql://localhost:3306/jsd";
	String Uname="root";
	String Passw="root";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,Uname,Passw);
	PreparedStatement ps=con.prepareStatement("update student3 set name=?,fName=?,dob=?,email=?,mob=?,gender=?,address=?,city=?,pin=?,state=?,country=?,hobby=?,classx_board=?,classx_percentage=?,classx_poy=?,classxii_board=?,classXii_percentage=?,classxii_poy=?,graduation_board=?,graduation_percentage=?,graduation_poy=?,diploma_board=?,diploma_percentage=?,diploma_poy=?,COA=? where id=?");

	ps.setString(1,name);
	ps.setString(2,fName);
	ps.setString(3,dob);
	ps.setString(4,email);
	ps.setString(5,mob);
	ps.setString(6,gender);
	ps.setString(7,address);
	ps.setString(8,city);
	ps.setString(9,pin);
	ps.setString(10,state);
	ps.setString(11,country);
	ps.setString(12,hobby);
	ps.setString(13,classx_board);
	ps.setString(14,classx_percentage);
	ps.setString(15,classx_poy);
	ps.setString(16,classxii_board);
	ps.setString(17,classXii_percentage);
	ps.setString(18,classxii_poy);
	ps.setString(19,graduation_board);
	ps.setString(20,graduation_percentage);
	ps.setString(21,graduation_poy);
	ps.setString(22,diploma_board);
	ps.setString(23,diploma_percentage);
	ps.setString(24,diploma_poy);
	ps.setString(25,COA);
	ps.setString(26,id);
	int r=ps.executeUpdate();
	if(r==1) 
	{
	 out.println("update successfully");
	response.sendRedirect("showstudentind.jsp");
	}   
}
catch(Exception e)
{
	out.println(e.getMessage());
	 
	}


%>
</body>
</html>