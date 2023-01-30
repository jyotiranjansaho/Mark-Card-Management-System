


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
     
   <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Markcard </title>

<link rel="stylesheet" href="g.css">

<link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
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

String mid=request.getParameter("mid");

String url="jdbc:mysql://localhost:3306/jsd";
String user="root";
String pass="root";

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,user,pass);
	PreparedStatement ps=con.prepareStatement("select* from  student3 join markcard1 on student3.id=markcard1.sid where mid=? ");
ps.setString(1,mid);
	ResultSet rs=ps.executeQuery();
	%>
	<h3>STUDENT Mark Card REGISTRATION </h3>
 <form action="updatemarkcard.jsp" method="post">
	<%
	while(rs.next())
	{  

			%>



 
<table>

<tr>
<td> Markcard Id</td>
<td><input type="text" name="mid" value="<%=rs.getString(27) %>"maxlength="30"/>

</td>
</tr>
 
 
 <tr>
<td> Student Id</td>
<td><input type="text" name="sid" value="<%=rs.getString(47) %>"maxlength="30"/>

</td>
</tr>
 
 
 
<tr>
<td>Institute NAME</td>
<td><input type="text" name="institude_name"value="<%=rs.getString(28) %>" maxlength="60"/>
</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td>Registration No</td>
<td><input type="text" name="registration_no" value="<%=rs.getString(29) %>"maxlength="30"/>

</td>
</tr>
 
<!----- Date Of Birth -------------------------------------------------------->
<tr>
<td>Branch Name</td>
 
<td>
<input type="text" name="branch"value="<%=rs.getString(30) %>">
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

<td><input type="text" name="ECcode"value="<%=rs.getString(31) %>"maxlength="30" /></td>
<td><input type="text" name="ECname"value="<%=rs.getString(32) %>" maxlength="30" /></td>
<td><input type="text" name="ECfull"value="<%=rs.getString(33) %>" maxlength="30" /></td>
<td><input type="text" name="ECSmark" value="<%=rs.getString(34) %>"maxlength="30" /></td></tr>

<tr>
<td><input type="text" name="EMcode"value="<%=rs.getString(35) %>" maxlength="30" /></td>
<td><input type="text" name="EMname" value="<%=rs.getString(36) %>"maxlength="30" /></td>
<td><input type="text" name="EMfull" value="<%=rs.getString(37) %>"maxlength="30" /></td>
<td><input type="text" name="EMSmark" value="<%=rs.getString(38) %>"maxlength="30" /></td></tr>
<tr>
<td><input type="text" name="EEcode" value="<%=rs.getString(39) %>"maxlength="30" /></td>
<td><input type="text" name="EEname" value="<%=rs.getString(40) %>"maxlength="30" /></td>
<td><input type="text" name="EEfull" value="<%=rs.getString(41) %>"maxlength="30" /></td>
<td><input type="text" name="EESmark" value="<%=rs.getString(42)%>"maxlength="30" /></td></tr>

<td><input type="text" name="CAcode" value="<%=rs.getString(43) %>"maxlength="30" /></td>
<td><input type="text" name="CAname"value="<%=rs.getString(44) %>" maxlength="30" /></td>
<td><input type="text" name="CAfull"value="<%=rs.getString(45) %>" maxlength="30" /></td>
<td><input type="text" name="CASmark" value="<%=rs.getString(46)%>"maxlength="30" /></td>

</tr>


<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<%}%>
</td>
</tr>

</form>
</table>
</td></body>

</html>