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
    	PreparedStatement ps=con.prepareStatement("insert into markcard1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    	ps.setString(1,mid);
    	ps.setString(2,institude_name);
    	ps.setString(3,registration_no);
    	ps.setString(4,branch);
    	ps.setString(5,ECcode);
    	ps.setString(6,ECname);
    	ps.setString(7,ECfull);
    	ps.setString(8,ECSmark);
    	ps.setString(9,EMcode);
    	ps.setString(10,EMname);
    	ps.setString(11,EMfull);
    	ps.setString(12,EMSmark);
    	ps.setString(13,EEcode);
    	ps.setString(14,EEname);
    	ps.setString(15,EEfull);
    	ps.setString(16,EESmark);
    	ps.setString(17,CAcode);
    	ps.setString(18,CAname);
    	ps.setString(19,CAfull);
    	ps.setString(20,CASmark);
    	ps.setString(21,sid);
    
    	int r=ps.executeUpdate();
    	if(r==1)
    	{
    		response.sendRedirect("showmarkcardind.jsp");
    		out.print("data add success");
    	}
    	
    }
    catch(Exception e)
    {
    	e.getMessage();
    }
    
    
    %>
    
<html>
<head>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="g.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Markcard Registration</title>
</head>
 
<body style="background-color:orange;">


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
             
   

                
                
            
              
                <a class="nav-link " href="home.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="whites" class="bi bi-person" viewBox="0 0 16 16">
                    <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                  </svg><font color="white">&nbsp;Logout</font></a>
              </li>
             

            </ul>
           
      </div>
    </div>
  </nav><br><br> 
<center>



<h3>STUDENT MARK CARD REGISTRATION </h3>

 
<table>
 <form action="markcard.jsp" method="post">
<tr>
<td>Msarkcard Id</td>
<td><input type="text" name="mid" maxlength="30"/>

</td>
</tr>
    
    <tr>
<td>Student Id</td>
<td><input type="text" name="sid" maxlength="30"/>

</td>
</tr>
    
    
    
    
    
<tr>
<td>Institute NAME</td>
<td><input type="text" name="institude_name" maxlength="60"/>
</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td>Registration No</td>
<td><input type="text" name="registration_no" maxlength="30"/>

</td>
</tr>
 
<!----- Date Of Birth -------------------------------------------------------->
<tr>
<td>Branch Name</td>
 
<td>
<input type="text" name="branch">
</td>
</tr>
 </table>
 
<td>
<table>
 
<tr>

<td align="center"><b>subject code</b></td>
<td align="center"><b>Subject</b></td>

<td align="center"><b>Full Mark</b></td>
<td align="center"><b>Secure mark</b></td>
</tr>
 
<tr>

<td><input type="text" name="ECcode" maxlength="30" /></td>
<td><input type="text" name="ECname" maxlength="30" /></td>
<td><input type="text" name="ECfull" maxlength="30" /></td>

<td><input type="text" name="ECSmark" maxlength="30" /></td></tr>

<tr>
<td><input type="text" name="EMcode" maxlength="30" /></td>
<td><input type="text" name="EMname" maxlength="30" /></td>
<td><input type="text" name="EMfull" maxlength="30" /></td>
<td><input type="text" name="EMSmark" maxlength="30" /></td></tr>
<tr>
<td><input type="text" name="EEcode" maxlength="30" /></td>
<td><input type="text" name="EEname" maxlength="30" /></td>
<td><input type="text" name="EEfull" maxlength="30" /></td>
<td><input type="text" name="EESmark" maxlength="30" /></td></tr>

<td><input type="text" name="CAcode" maxlength="30" /></td>
<td><input type="text" name="CAname" maxlength="30" /></td>
<td><input type="text" name="CAfull" maxlength="30" /></td>
<td><input type="text" name="CASmark" maxlength="30" /></td></tr>


<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
</tr>

</form>
</table>
</td>
</center>
</body>

</html>