<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
    <title>Show Result</title>
</head>
<body >


<nav  class="navbar navbar-expand-lg"style="background-color:blue">
    <div class="container-fluid">
 <img src="clg.png"height="40"width="40"><span style="color:white;">&nbsp Rooman Technologies Pvt.Ltd.</span>

     <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li  class="nav-item">
                <a class="nav-link active" aria-current="page" href="home.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-house-fill" viewBox="0 0 16 16">
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



    `<%@page import="java.sql.*" %>   
<%


try{
	


String registration_no=request.getParameter("registration_no");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsd","root","root");
	PreparedStatement ps=con.prepareStatement("select * from student3 join markcard1 on student3.id=markcard1.sid where registration_no=?");
	ps.setString(1,registration_no);
	ResultSet rs=ps.executeQuery();
	%>
	

  
	
	<%
	while(rs.next())
	{
		String mid=rs.getString(1);
		String name=rs.getString(2);
		
		
	%>
	
	
		<CENTER><h3>STATE COUNCIL FOR TECHNICAL EDUCATION & VOCATIONAL TRAINING ODISHA</h3></CENTER>
	<center><h4><span style="color:red;">    DIVISIONAL MARKS SHEET cum TRANSCRIPT</span></h4></center>
	
	
	
	
	<div class="container text">
  <div class="row">
    <div class="col-sm-6">Name of The Candidate Sri/Kumari:<%=rs.getString(2) %></div>
    <div class="col-sm-4">Father's Name:<%=rs.getString(3) %></div>
  </div>
  <div class="row">
    <div class="col-sm-6">Registration No:<%=rs.getString(29) %></div>
    <div class="col-sm-6">Branch/Course:<%=rs.getString(30) %></div>
    
  </div>

 <div class="row">
    <div class="col-sm-8">Institution:<%=rs.getString(28) %></div>
<div class="col-sm-4"></div>

</div></div>



	
	

	
	<table class="table table-bordered">
  <thead>
    <tr>
    <th scope="col">Sl No.</th>
      <th scope="col">Subject Code</th>
      <th scope="col">Subject Name</th>
      <th scope="col">Full Mark</th>
      <th scope="col">Secure Mark</th>
     
          
    </tr>
  </thead>
	
	<tbody>
	<tr>
	<td>1.</td>
	<td><%=rs.getString(31) %></td>
	<td><%=rs.getString(32) %></td>
	<td><%=rs.getString(33) %></td>
	<td><%=rs.getString(34) %></td>
	</tr>

<tr>
	<td>2.</td>
	<td><%=rs.getString(35) %></td>
	<td><%=rs.getString(36) %></td>
	<td><%=rs.getString(37) %></td>
	<td><%=rs.getString(38) %></td>
	</tr>
	
	<tr>
	<td>3.</td>
	<td><%=rs.getString(39) %></td>
	<td><%=rs.getString(40) %></td>
	<td><%=rs.getString(41) %></td>
	<td><%=rs.getString(42) %></td>
	</tr>
	
	<tr>
	<td>4.</td>
	<td><%=rs.getString(43) %></td>
	<td><%=rs.getString(44) %></td>
	<td><%=rs.getString(45) %></td>
	<td><%=rs.getString(46) %></td>
	</tr>
	<tr>
        <td colspan="3" class="footer">Total</td>
        <td>
         <% 
         
         int sum=rs.getInt(33)+rs.getInt(37)+rs.getInt(41)+rs.getInt(45);
         out.println(sum);
        
        %>
         </td>
        <td colspan="2"> <% 
         
         int sum1=rs.getInt(34)+rs.getInt(38)+rs.getInt(42)+rs.getInt(46);
         out.println(sum1);
        
        %> </td>
        
        
        
      </tr>
      
        <tr>
        <td colspan="2" class="footer">Percentage</td>
        <td>
         <% 
         double p=(((double)sum1/400)*100);
         
         out.println(p);
        
        %></td>
         
        <td colspan="0" class="footer">Grade</td>
        <td>
         <% 
         String Grade="";
         if(p>=90 && p<=100)
         {
        	 Grade="O";
        	
         }
         else if(p>=80 && p<=90)
         {
        	 Grade="A";
         }
         else if(p>=70 && p<=80)
         {
        	 Grade="B";
         }
         else if(p>=60 && p<=70)
         {
        	 Grade="C";
         }
         else if(p>=40 && p<=50){
        	 Grade="D";
         }
         else
         {
        	 Grade="F";
         }
         out.println(Grade);
        
        %></td>
         
      </tr></tbody>
	</table>
	

       
       
	

	
	
	</table>

	<% 
	}}
catch(Exception e)
{
	out.println(e);
}
	
%>
<center><button onclick="window.print()">

<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-printer" viewBox="0 0 16 16">
  <path d="M2.5 8a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1z"/>
  <path d="M5 1a2 2 0 0 0-2 2v2H2a2 2 0 0 0-2 2v3a2 2 0 0 0 2 2h1v1a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2v-1h1a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2h-1V3a2 2 0 0 0-2-2H5zM4 3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1v2H4V3zm1 5a2 2 0 0 0-2 2v1H2a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-1v-1a2 2 0 0 0-2-2H5zm7 2v3a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1z"/>
</svg>

</button></center>
</body></html>
