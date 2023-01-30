<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
    
    
    
    
     <%
    String mid=request.getParameter("mid");
    String institude_name=request.getParameter("institude_name");
    
    String registration_no=request.getParameter("registration_no");
   
    String branch=request.getParameter("branch");
    String ECcode=request.getParameter("ECcode");
    String ECname=request.getParameter("ECname");
    String ECfull=request.getParameter("ECfull");
    String ECSmark=request.getParameter("ECSmark");
    
    String EMcode=request.getParameter("EMcode");
    String EMname=request.getParameter("EMname");
    String EMfull=request.getParameter("EMfull");
    String EMSmark=request.getParameter("EMSmark");

    String EEcode=request.getParameter("EEcode");
    String EEname=request.getParameter("EEname");
    String EEfull=request.getParameter("EEfull");
    String EESmark=request.getParameter("EESmark");
    String CAcode=request.getParameter("CAcode");
    String CAname=request.getParameter("CAname");
    String CAfull=request.getParameter("CAfull");
    String CASmark=request.getParameter("CASmark");
   String sid=request.getParameter("sid");
   
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsd","root","root");
    	PreparedStatement ps=con.prepareStatement("update markcard1 set institude_name=?,registration_no=?,branch=?,ECcode=?,ECname=?,ECfull=?,ECSmark=?,EMcode=?,EMname=?,EMfull=?,EMSmark=?,EEcode=?,EEname=?,EEfull=?,EESmark=?,CAcode=?,CAname=?,CAfull=?,CASmark=?,sid=? where mid=?");
    	ps.setString(1,institude_name);
    	ps.setString(2,registration_no);
    	ps.setString(3,branch);
    	ps.setString(4,ECcode);
    	ps.setString(5,ECname);
    	ps.setString(6,ECfull);
    	ps.setString(7,ECSmark);
    	ps.setString(8,EMcode);
    	ps.setString(9,EMname);
    	ps.setString(10,EMfull);
    	ps.setString(11,EMSmark);
    	ps.setString(12,EEcode);
    	ps.setString(13,EEname);
    	ps.setString(14,EEfull);
    	ps.setString(15,EESmark);
    	ps.setString(16,CAcode);
    	ps.setString(17,CAname);
    	ps.setString(18,CAfull);
    	ps.setString(19,CASmark);
    	ps.setString(20,sid);
    	ps.setString(21,mid);
    	int r=ps.executeUpdate();
    	if(r==1)
    	{
    		response.sendRedirect("showmarkcardtable.jsp");
    		out.print("data add success");
    	}
    	
    }
    catch(Exception e)
    {
    	e.getMessage();
    }
    
    
    %>