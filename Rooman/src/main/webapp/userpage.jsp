<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>   
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home page</title>

<link rel="stylesheet" href="c.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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

<h2><center>Welcome to <% 
String Name=(String)session.getAttribute("Name");
%>



<%= Name %></center></h2>



 </center>
<section class="vh-100 bg-image">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">

   
<div class="row">
  <div class="col"><div class="card" style="width: 35rem;">
 
  <div class="card-body">
    <h5 class="card-title"><center> Registration Form</center></h5>
  
    <a href="student.jsp" style="width:33rem;" class="btn btn-primary">Registration Form</a>
  </div>
</div></div><br>
  <div class="col"><div class="card" style="width: 35rem;">
 
  <div class="card-body">
    <h5 class="card-title"><center>Registration Roll No</center></h5>

    <a href="searchregistration.html"style="width:33rem;" class="btn btn-primary"> Search Mark By Registration No</a>
  </div>
</div></div>

             
            
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>





</body>
</html>
