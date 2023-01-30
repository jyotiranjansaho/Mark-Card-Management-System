<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%@page import="java.sql.*" %>   


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<link rel="stylesheet" href="">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show markcard By Registration</title>
</head>
<body >



<nav  class="navbar navbar-expand-lg"style="background-color:blue">
    <div class="container-fluid">

 <img src="clg.png"height="40"width="40"><span style="color:white;">&nbsp Rooman Technologies Pvt.Ltd.</span>
     <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li  class="nav-item">
                <a class="nav-link active" aria-current="page" href="adminpage.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-house-fill" viewBox="0 0 16 16">
                    <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z"/>
                    <path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z"/>
                  </svg><font color="white">&nbsp;Home</a></font>
              </li>
             
   

                
                
            
              
                <a class="nav-link " href="home.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-person" viewBox="0 0 16 16">
                    <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                  </svg><font color="white">&nbsp;Logout</font></a>
              </li>
             

            </ul>
           
      </div>
    </div>
  </nav><br><br> 




<%





	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsd","root","root");
	PreparedStatement ps=con.prepareStatement("select* from student3 join markcard1 on student3.id=markcard1.sid ");

	ResultSet rs=ps.executeQuery();
	%>

  <center> <b>  <u> View Student Markcard</u></b>  <br></center>
	
	
	

	<table class="table table-bordered">
  <thead>
    <tr>
    <th scope="col">Sl No.</th>
      <th scope="col">Student Name</th>
       <th scope="col">Registration No</th>
        <th scope="col">Edit</th>
      <th scope="col">view</th>
      
    </tr>
  </thead>
  <%
	while(rs.next())
	{
		String mid=rs.getString(27);
		String registration_no=rs.getString(29);
		
		
		
	%><tbody>
  
    <tr>
    <td ><%=rs.getString(1) %></td>
     <td ><%=rs.getString(2) %></td>
     <td ><%=rs.getString(29) %></td>
      <td ><a href="updatemarkcard2.jsp?mid=<%=rs.getString(27) %>">
      
      
       <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg>
      
      
      </a></td>
        <td ><a href="searchregistration.jsp?registration_no=<%=rs.getString(29) %>"">
        
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
  <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811V2.828zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492V2.687zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783z"/>
</svg>
        
        </a></td>
</tr>

</tbody>
	
	<% 
	}
	
%>
 
</table>