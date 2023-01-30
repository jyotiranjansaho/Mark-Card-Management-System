<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*" %>
    
    
    
    
     <%
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    
    String fName=request.getParameter("fName");
   
    String dob=request.getParameter("dob");
    String email=request.getParameter("email");
    String mob=request.getParameter("mob");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String city=request.getParameter("city");
    String pin=request.getParameter("pin");
    String state=request.getParameter("state");
    String country=request.getParameter("country");
    String hobby=request.getParameter("hobby");
    String classx_board=request.getParameter("classx_board");
    String classx_percentage=request.getParameter("classx_percentage");
    String classx_poy=request.getParameter("classx_poy");
    String classxii_board=request.getParameter("classxii_board");
    String classxii_percentage=request.getParameter("classxii_percentage");
    String classxii_poy=request.getParameter("classxii_poy");
    String graduation_board=request.getParameter("graduation_board");
    String graduation_percentage=request.getParameter("graduation_percentage");
    String graduation_poy=request.getParameter("graduation_poy");
    String diploma_board=request.getParameter("diploma_board");
    String diploma_percentage=request.getParameter("diploma_percentage");
    String diploma_poy=request.getParameter("diploma_poy");
    String COA=request.getParameter("COA");
  
   
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsd","root","root");
    	PreparedStatement ps=con.prepareStatement("insert into student3 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    	ps.setString(1,id);
    	ps.setString(2,name);
    	ps.setString(3,fName);
    	ps.setString(4,dob);
    	ps.setString(5,email);
    	ps.setString(6,mob);
    	ps.setString(7,gender);
    	ps.setString(8,address);
    	ps.setString(9,city);
    	ps.setString(10,pin);
    	ps.setString(11,state);
    	ps.setString(12,country);
    	ps.setString(13,hobby);
    	ps.setString(14,classx_board);
    	ps.setString(15,classx_percentage);
    	ps.setString(16,classx_poy);
    	ps.setString(17,classxii_board);
    	ps.setString(18,classxii_percentage);
    	ps.setString(19,classxii_poy);
    	ps.setString(20,graduation_board);
    	ps.setString(21,graduation_percentage);
    	ps.setString(22,graduation_poy);
    	ps.setString(23,diploma_board);
    	ps.setString(24,diploma_percentage);
    	ps.setString(25,diploma_poy);
    	ps.setString(26,COA);
    	
    	int r=ps.executeUpdate();
    	if(r==1)
    	{
    		response.sendRedirect("home.jsp");
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
<head>
<meta charset="ISO-8859-1">
<title>Student Registration forms</title>

<link rel="stylesheet" href="g.css">
<link rel="stylesheet" href="style.css">
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
                <a class="nav-link active" aria-current="page" href="userpage.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-house-fill" viewBox="0 0 16 16">
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


<h3>STUDENT REGISTRATION FORM</h3>

 
<table align="center" cellpadding = "10">
 <form action="student.jsp" method="post">
<!----- First Name ---------------------------------------------------------->
<tr>
<td>Student Id</td>
<td><input type="text" name="id" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<tr>
<td>Student NAME</td>
<td><input type="text" name="name" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td>Father's Name</td>
<td><input type="text" name="fName" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<!----- Date Of Birth -------------------------------------------------------->
<tr>
<td>DATE OF BIRTH</td>
 
<td>
<input type="date" name="dob">
</td>
</tr>
 
<!----- Email Id ---------------------------------------------------------->
<tr>
<td>EMAIL ID</td>
<td><input type="email" name="email" placeholder="emailid" maxlength="100" /></td>
</tr>
 
<!----- Mobile Number ---------------------------------------------------------->
<tr>
<td>MOBILE NUMBER</td>
<td>
<input type="text" name="mob" maxlength="10" />
(10 digit number)
</td>
</tr>
 
<!----- Gender ----------------------------------------------------------->
<tr>
<td>GENDER</td>
<td>
Male <input type="radio" name="gender" value="Male" />
Female <input type="radio" name="grnder" value="Female" />
</td>
</tr>
 
<!----- Address ---------------------------------------------------------->
<tr>
<td>ADDRESS <br /><br /><br /></td>
<td><textarea name="address" rows="4" cols="30"></textarea></td>
</tr>
 
<!----- City ---------------------------------------------------------->
<tr>
<td>CITY</td>
<td><input type="text" name="city" maxlength="30" />
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<!----- Pin Code ---------------------------------------------------------->
<tr>
<td>PIN CODE</td>
<td><input type="text" name="pin" maxlength="6" />
(6 digit number)
</td>
</tr>
 
<!----- State ---------------------------------------------------------->
<tr>
<td>STATE</td>
<td><input type="text" name="state" maxlength="30" />
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<!----- Country ---------------------------------------------------------->
<tr>
<td>COUNTRY</td>
<td><input type="text" name="country" value="India" readonly="readonly" /></td>
</tr>
 
<!----- Hobbies ---------------------------------------------------------->
 
<tr>
<td>HOBBIES <br /><br /><br /></td>
 
<td>
Drawing
<input type="checkbox" name="hobby" value="Drawing" />
Singing
<input type="checkbox" name="hobby"value="Singing" />
Dancing
<input type="checkbox" name="hobby" value="Dancing" />
Sketching
<input type="checkbox" name="hobby" value="Cooking" />
<br />
Others
<input type="checkbox" name="hobby" value="Other">

</td>
</tr>
 
<!----- Qualification---------------------------------------------------------->
<tr>
<td>QUALIFICATION <br /><br /><br /><br /><br /><br /><br /></td>
 
<td>
<table>
 
<tr>
<td align="center"><b>Sl.No.</b></td>
<td align="center"><b>Examination</b></td>
<td align="center"><b>Board</b></td>
<td align="center"><b>Percentage</b></td>
<td align="center"><b>Year of Passing</b></td>
</tr>
 
<tr>
<td>1</td>
<td>Class X</td>
<td><input type="text" name="classx_board" maxlength="30" /></td>
<td><input type="text" name="classx_percentage" maxlength="30" /></td>
<td><input type="text" name="classx_poy" maxlength="30" /></td>
</tr>
 
<tr>
<td>2</td>
<td>Class XII</td>
<td><input type="text" name="classxii_board" maxlength="30" /></td>
<td><input type="text" name="classxii_percentage" maxlength="30" /></td>
<td><input type="text" name="classxii_poy" maxlength="30" /></td>
</tr>
 
<tr>
<td>3</td>
<td>Graduation</td>
<td><input type="text" name="graduation_board" maxlength="30" /></td>
<td><input type="text" name="graduation_percentage" maxlength="30" /></td>
<td><input type="text" name="graduation_poy" maxlength="30" /></td>
</tr>
 
<tr>
<td>4</td>
<td>Diploma</td>
<td><input type="text" name="diploma_board" maxlength="30" /></td>
<td><input type="text" name="diploma_percentage" maxlength="30" /></td>
<td><input type="text" name="diploma_poy" maxlength="30" /></td>
</tr>
 
<tr>
<td></td>
<td></td>
<td align="center">(10 char max)</td>
<td align="center">(upto 2 decimal)</td>
</tr>
</table>
 
</td>
</tr>
 
<!----- Course ---------------------------------------------------------->
<tr>
<td>COURSES<br />APPLIED FOR</td>
<td>
B.tech
<input type="radio" name="COA" value="Btech">
BCA
<input type="radio" name="COA" value="BCA">
B.Com
<input type="radio" name="COA" value="B.Com">
B.Sc
<input type="radio" name="COA" value="B.Sc">
B.A
<input type="radio" name="COA" value="B.A">
</td>
</tr>
 
<!----- Submit and Reset ------------------------------------------------->
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
</tr>
</table>
</form>
 
</body>
</html>