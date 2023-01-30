<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>   


    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show student Individual</title>

<link rel="stylesheet" href="">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body style="background-color:white;">


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




String id=request.getParameter("id");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsd","root","root");
	PreparedStatement ps=con.prepareStatement("select* from student3  where id=?");
	ps.setString(1,id);
	ResultSet rs=ps.executeQuery();
	%>

  <center><h4> <b> <span style="color:black;">  Student Details</span></b> </h4> </center><hr><br><br><br><br>
	
	<%
	while(rs.next())
	{
		String registration_no=rs.getString(1);
		String department=rs.getString(2);
		
		
	%>
	 
	
	

  
  
  	<div class="container text">
  <div class="row">
    <div class="col-sm-4">Name:<%=rs.getString(2) %></div>
    <div class="col-sm-4">Father's Name:<%=rs.getString(3) %></div>
  </div>
  <div class="row">
    <div class="col-sm-4">Date of Birth:<%=rs.getString(4) %></div>
    <div class="col-sm-4">Email Id:<%=rs.getString(5) %></div>
    
  </div>

 <div class="row">
    <div class="col-sm-4"> Mobile No:<%=rs.getString(6) %></div>
<div class="col-sm-4">  Gender:<%=rs.getString(7) %></div>

</div>

 <div class="row">
    <div class="col-sm-4"> Address:<%=rs.getString(8) %></div>
<div class="col-sm-4">   city:<%=rs.getString(9) %></div>

</div>

 <div class="row">
    <div class="col-sm-4">  pin No:<%=rs.getString(10) %></div>
<div class="col-sm-4">    State:<%=rs.getString(11) %></div>

</div>

 <div class="row">
    <div class="col-sm-4">  Country:<%=rs.getString(12) %></div>
<div class="col-sm-4">    Hobby:<%=rs.getString(13) %></div>

</div>


</div>
  
  
  
 <center>  <b><u>Qualification</u></b><br></center>
  
  
   
 <table class="table table-bordered">
  <tr>
  <th>Sl No</th>
  <th>Examination</th>
    <th>Board</th>
    <th>Percentage</th>
      <th>Year of Passing</th>
    
  </tr>  
 <tr>
 <tr> <td>1.</td>
 <td>Class X</td>
    <td><%=rs.getString(14) %></td>
    <td><%=rs.getString(15) %></td>
     <td><%=rs.getString(16) %></td>
  </tr>
  
   

    
  </tr>
 <tr> <td>2.</td>
 <td>Class XII</td>
     <td><%=rs.getString(17) %></td>
    <td><%=rs.getString(18) %></td>
     <td><%=rs.getString(19) %></td>
  </tr>
   
     
  <tr>
   <td>3.</td>
 <td>Graduation</td>
    <td><%=rs.getString(20) %></td>
    <td><%=rs.getString(21) %></td>
     <td><%=rs.getString(22) %></td>
  </tr>
  
   <tr>
    <td>4.</td>
 <td>Diploma</td>
    <td><%=rs.getString(23) %></td>
    <td><%=rs.getString(24) %></td>
     <td><%=rs.getString(25) %></td>
  </tr>
  
</table><br>
Courses Apply For:<%=rs.getString(26) %><br><br><br>

	<button>    <a href="showstudentind.jsp"style="text-decoration:non">back</a> </button>




	
	<% 
	}
	
%>
	