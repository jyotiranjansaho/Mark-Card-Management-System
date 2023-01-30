<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
      
    <%
    
    String slno=request.getParameter("slno");
    
    String Name=request.getParameter("Name");
   
    String password=request.getParameter("password");
    String Type=request.getParameter("Type");
   
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsd","root","root");
    	PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?)");
    	ps.setString(1,slno);
    	ps.setString(2,Name);
    	ps.setString(3,password);
    	ps.setString(4,Type);
    	
    	int r=ps.executeUpdate();
    	if(r==1)
    	{
    		response.sendRedirect("login.jsp");
    		out.print("data add success");
    	}
    	
    }
    catch(Exception e)
    {
    	e.getMessage();
    }
    
    
    %>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="m.css">
<meta charset="ISO-8859-1">
<title>Sign Up</title>

<link rel="stylesheet" href="c.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">


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
             
             
                
                
            
              
                <a class="nav-link " href="login.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-person" viewBox="0 0 16 16">
                    <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                  </svg><font color="white">&nbsp;Login</font></a>
              </li>
              <a class="nav-link " href="user.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-person" viewBox="0 0 16 16">
                    <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                  </svg><font color="white">&nbsp;signup</font></a>
              </li>

            </ul>
           
      </div>
    </div>
  </nav>







<div class="container">
            <form  action="user.jsp" method="post" >
             <center>   <h2>Signup Form</h2></center>
<center>
              
<section class="vh-100 bg-image">
 
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-50">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-4">
              <h2 class="text-uppercase text-center mb-5">Create an account</h2>

              <form>

                <div class="form-outline mb-4">
                 
                  <label class="form-label" for="form3Example1cg">Enter your sl no</label><br>
                   <input type="text" id="slno" name="slno"class="form-control form-control-lg" placeholder=" Enter the Sl No">
                </div>

                <div class="form-outline mb-4">
                  
                  <label class="form-label" for="form3Example3cg">Enter your name</label><br>
                    <input type="text" id="Name" name="Name"class="form-control form-control-lg" placeholder="Enter the  name" >
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example4cg">Enter your Password</label><br>
                  <input type="password" id="password"name="password"class="form-control form-control-lg" placeholder=" Enter the Password" >
                </div>

                <div class="form-outline mb-4">
                <label for="country" class="col-sm-3 control-label">Type</label>
                  <select id="country" name="Type" class="form-control form-control-lg"placeholder="Enter the typr">
                            <option>user</option>
                            <option>admin</option>
                            </select>
                </div>
                   <center>
               
                        <button type="submit" class="btn btn-primary btn-block">Register</button>
                   
                  <button type="reset" class="btn btn-primary btn-block">Reset</button>
                  </center>
             
              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>