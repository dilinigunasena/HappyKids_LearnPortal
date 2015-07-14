<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Login</title>
<style type="text/css">
<%@include file="WEB-INF/mystyle.css"%> 
</style>
</head>

<body>
<table bgcolor="#0099CC" border="1" align="center" height="100px" width="250" cellspacing="5px" cellpadding="5px">
<tr>
<td>
<div align="center">
<img src="images/kid_face.png" width="100" height="100" />
</div>
<div align="center">
<form action="childlogin" method="post">
<input type="text" name="username" value="" placeholder="username" required width="100"><br/>  		
<input type="password" name="password" value="" placeholder="password" required width="100"><br/> <br/>
<button class="button">Sign in</button> <br/> <br/>
<button class="button"> <a href="register.jsp" target="main">Register</a></button> <br/> <br/>
</form>
</div>
</td>
</tr>
</table>


<table bgcolor="#1188DD" border="1" align="center"  height="100px" width="250" cellspacing="5px" cellpadding="5px">
<tr>
<td>
<div align="center">
<img src="images/teacher.png" width="100" height="100" />
</div>
<div align="center">
<form action="teacherlogin" method="post">
<input type="text" name="username" value="" placeholder="username" required width="100"><br/>  		
<input type="password" name="password" value="" placeholder="password" required width="100"><br/> <br/>
<button class="button">Sign in</button> <br/> <br/>
<button class="button"> <a href="register.jsp" target="main">Register</a></button> <br/> <br/>
</form>
</div>
</td>
</tr>
</table>



</body>
</html>