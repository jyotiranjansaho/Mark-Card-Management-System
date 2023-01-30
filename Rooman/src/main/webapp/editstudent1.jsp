
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>






<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student Details</title>

<link rel="stylesheet" href="g.css">
<link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body  style="background-color:orange;">


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

	String url="jdbc:mysql://localhost:3306/jsd";
	String Uname="root";
	String Passw="root";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,Uname,Passw);
	PreparedStatement ps=con.prepareStatement("select * from student3  where id=?");
	ps.setString(1,id);
	ResultSet rs=ps.executeQuery();
	%>
		<%
	while(rs.next())
	{
	%>






<table align="center" cellpadding = "10">
<form action="editstudent.jsp" method="Post">
<!----- First Name ---------------------------------------------------------->
<tr>
<td>Student Id</td>
<td><input type="text" name="id" value="<%=rs.getString(1) %>"/>"
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<tr>
<td>Student NAME</td>
<td><input type="text" name="name" value="<%=rs.getString(2) %>"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td>Father's Name</td>
<td><input type="text" name="fName" value="<%=rs.getString(3) %>"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<!----- Date Of Birth -------------------------------------------------------->
<tr>
<td>DATE OF BIRTH</td>
 
<td>
<input type="date" name="dob" value="<%=rs.getString(4) %>"/>
</td>
</tr>
 
<!----- Email Id ---------------------------------------------------------->
<tr>
<td>EMAIL ID</td>
<td><input type="text" name="email" value="<%=rs.getString(5) %>"/></td>
</tr>
 
<!----- Mobile Number ---------------------------------------------------------->
<tr>
<td>MOBILE NUMBER</td>
<td>
<input type="text" name="mob" value="<%=rs.getString(6) %>"/>
(10 digit number)
</td>
</tr>
 
<!----- Gender ----------------------------------------------------------->
<tr>
<td>GENDER</td>
<td>
<input type="text" name="gender" value=<%=rs.getString(7) %>"/>

</td>
</tr>
 
<!----- Address ---------------------------------------------------------->
<tr>
<td>ADDRESS <br /><br /><br /></td>
<td><textarea name="address" rows="4" cols="30"> value="<%=rs.getString(8) %>"</textarea></td>
</tr>
 
<!----- City ---------------------------------------------------------->
<tr>
<td>CITY</td>
<td><input type="text" name="city" value="<%=rs.getString(9) %>"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<!----- Pin Code ---------------------------------------------------------->
<tr>
<td>PIN CODE</td>
<td><input type="text" name="pin" value="<%=rs.getString(10) %>"/>
(6 digit number)
</td>
</tr>
 
<!----- State ---------------------------------------------------------->
<tr>
<td>STATE</td>
<td><input type="text" name="state" value="<%=rs.getString(11) %>"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<!----- Country ---------------------------------------------------------->
<tr>
<td>COUNTRY</td>
<td><input type="text" name="country" value="<%=rs.getString(12) %>"/></td>
</tr>
 
<!----- Hobbies ---------------------------------------------------------->
 
<tr>
<td>HOBBIES <br /><br /><br /></td>
 
<td>
<input type="text" name="hobby" value="<%=rs.getString(13) %>"/>


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
<td><input type="text" name="classx_board" value="<%=rs.getString(14) %>"/></td>
<td><input type="text" name="classx_percentage"value="<%=rs.getString(15) %>"/></td>
<td><input type="text" name="classx_poy" value="<%=rs.getString(16) %>"/></td>
</tr>
 
<tr>
<td>2</td>
<td>Class XII</td>
<td><input type="text" name="classxii_board" value="<%=rs.getString(17) %>" /></td>
<td><input type="text" name="classXii_percentage" value="<%=rs.getString(18) %>" /></td>
<td><input type="text" name="classxii_poy"value="<%=rs.getString(19) %>"/></td>
</tr>
 
<tr>
<td>3</td>
<td>Graduation</td>
<td><input type="text" name="graduation_board" value="<%=rs.getString(20) %>"/></td>
<td><input type="text" name="graduation_percentage" value="<%=rs.getString(21) %>"/></td>
<td><input type="text" name="graduation_poy" <%=rs.getString(22) %>/></td>
</tr>
 
<tr>
<td>4</td>
<td>Diploma</td>
<td><input type="text" name="diploma_board" maxlength="30" value="<%=rs.getString(23) %>"/></td>
<td><input type="text" name="diploma_percentage" maxlength="30"value="<%=rs.getString(24) %>" /></td>
<td><input type="text" name="diploma_poy" <%=rs.getString(25) %> /></td>
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

<input type="text" name="COA" value="<%=rs.getString(26) %>">

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
 









		
<%} %>

</body>
</html>