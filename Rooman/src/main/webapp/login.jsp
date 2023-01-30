<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
    
    
    <%
    String Name=request.getParameter("Name");
    String password=request.getParameter("password");
    String Type=request.getParameter("Type");
    try{
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsd","root","root");
  
    	PreparedStatement ps=con.prepareStatement("select *from user where Name=? && password=? && Type=?");
    	ps.setString(1,Name);
    	ps.setString(2,password);
    	ps.setString(3,Type);
    	ResultSet rs=ps.executeQuery();
    	while(rs.next())
    	{
    	if (Type.equalsIgnoreCase("admin")){
    		session.setAttribute("Name",rs.getString("Name"));
    		response.sendRedirect("adminpage.jsp");
    		
    		
    	}
    	else{
    		session.setAttribute("Name",Name);
    		response.sendRedirect("userpage.jsp");
    		out.print(Name);
    	}
    
    }
    }
    catch(Exception e)
    {
    	
    	out.print(e);
    }
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="c.css">
<link rel="stylesheet" href="m.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body   style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">

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
      
       <section class="vh-100"   style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
             <img alt="" src="login.jpg" height="500" width="300">
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <form>

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <img src="clg.png"height="60"width="60">
                    <span class="h1 fw-bold mb-0">RTPL</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                  <div class="form-outline mb-4">
                  <label class="form-label" for="form2Example17">User Name</label>
                    <input type="text"  name="Name" id="form2Example17" class="form-control form-control-lg" />
                    
                  </div>

                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example27">Password</label>
                    <input type="password" name="password" id="form2Example27" class="form-control form-control-lg" />
                  
                  </div>

  <div class="form-outline mb-4">
     <label class="form-label" for="form2Example27">Type</label> 
    <select id="country" name="Type" class="form-control form-control-lg" >
                            <option>user</option>
                            <option>admin</option>
                      
  </div>   <br>
                  <div class="form-outline mb-4">
                  <botton><input type="submit"  class="btn btn-primary btn-block"value="Submit"></botton>
                  <button type="reset" class="btn btn-primary btn-block">Reset</button>
                  </div>

              
                </form>

  
 
</body>
</html>