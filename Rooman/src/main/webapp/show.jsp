<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
  <%@page import="java.sql.*" %>
    <%

String mid=request.getParameter("mid");

String url="jdbc:mysql://localhost:3306/jsd";
String user="root";
String pass="root";

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,user,pass);
	PreparedStatement ps=con.prepareStatement("select* from markcard1  ");
	ResultSet rs=ps.executeQuery();
	%>

	<%
	while(rs.next())
	{

			%>
<html>
<head>

</head>
 
<body>
<h3>STUDENT Mark Card REGISTRATION </h3>

 
<table>
 <form action="updatemarkcard.jsp" method="post">
<tr>
<td> Id</td>
<td><input type="text" name="mid" value="<%=rs.getString(1) %>"maxlength="30"/>

</td>
</tr>
 
<tr>
<td>Institute NAME</td>
<td><input type="text" name="institude_name"value="<%=rs.getString(2) %>" maxlength="60"/>
</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td>Registration No</td>
<td><input type="text" name="registration_no" value="<%=rs.getString(3) %>"maxlength="30"/>

</td>
</tr>
 
<!----- Date Of Birth -------------------------------------------------------->
<tr>
<td>Branch Name</td>
 
<td>
<input type="text" name="branch"value="<%=rs.getString(4) %>">
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

<td><input type="text" name="ECcode"value="<%=rs.getString(5) %>"maxlength="30" /></td>
<td><input type="text" name="ECname"value="<%=rs.getString(6) %>" maxlength="30" /></td>
<td><input type="text" name="ECfull"value="<%=rs.getString(7) %>" maxlength="30" /></td>
<td><input type="text" name="ECSmark" value="<%=rs.getString(8) %>"maxlength="30" /></td></tr>

<tr>
<td><input type="text" name="EMcode"value="<%=rs.getString(9) %>" maxlength="30" /></td>
<td><input type="text" name="EMname" value="<%=rs.getString(10) %>"maxlength="30" /></td>
<td><input type="text" name="EMfull" value="<%=rs.getString(11) %>"maxlength="30" /></td>
<td><input type="text" name="EMSmark" value="<%=rs.getString(12) %>"maxlength="30" /></td></tr>
<tr>
<td><input type="text" name="EEcode" value="<%=rs.getString(13) %>"maxlength="30" /></td>
<td><input type="text" name="EEname" value="<%=rs.getString(14) %>"maxlength="30" /></td>
<td><input type="text" name="EEfull" value="<%=rs.getString(15) %>"maxlength="30" /></td>
<td><input type="text" name="EESmark" value="<%=rs.getString(16)%>"maxlength="30" /></td></tr>

<td><input type="text" name="CAcode" value="<%=rs.getString(17) %>"maxlength="30" /></td>
<td><input type="text" name="CAname"value="<%=rs.getString(18) %>" maxlength="30" /></td>
<td><input type="text" name="CAfull"value="<%=rs.getString(19) %>" maxlength="30" /></td>
<td><input type="text" name="CASmark" value="<%=rs.getString(20)%>"maxlength="30" /></td>

</tr>
<tr>
 <td align="center"><b>Sid</b></td>
</tr>
 <tr>
 <td><input type="text" name="sid"value="<%=rs.getString(21) %>" maxlength="30" /></td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">

</td>
</tr>

</form>
</table>
</td></body>

</html>
<%}%>