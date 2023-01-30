<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@page import="java.sql.*" %>
    
    
    
    
     <%
    String registration_no=request.getParameter("registration_no");


    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsd","root","root");
    	PreparedStatement ps=con.prepareStatement("select*from markcard1 where registration_no=?");


    	ps.setString(1,registration_no);
    	int r=ps.executeUpdate();
    	if(r==1)
    	{
    		response.sendRedirect("showmarkcardtable.jsp");
    		out.print("data delete success");
    	}
    	
    }
    catch(Exception e)
    {
    	e.getMessage();
    }
    
    
    %>