<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@page import="java.sql.*" %>
    
    
    
    
     <%
    String id=request.getParameter("id");


    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsd","root","root");
    	PreparedStatement ps=con.prepareStatement("delete from student3 where id=?");


    	ps.setString(1,id);
    	int r=ps.executeUpdate();
    	if(r==1)
    	{
    		response.sendRedirect("showstudentind.jsp");
    		out.print("data delete success");
    	}
    	
    }
    catch(Exception e)
    {
    	e.getMessage();
    }
    
    
    %>