<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<style type="text/css">
<%@include file="WEB-INF/mystyle.css"%> 
</style>
</head>
<body>
<div style="border: 2px; border-style:solid;float:left; padding-bottom: 5px" class="A" >
<h3>Duly Completed By a Parent or Guardian</h3>
<form action="childregister" method="post" >

<p>
<label> Parent`s Name</label> <input type="text" name="pname" value="" />
</p>

<p>
<label> Email </label> <input type="text" name="pemail" value="" />
</p>

<p>
<label> Child`s Name </label> <input type="text" name="chname" value="" />
</p>

<p>
<label> Child`s Age</label> <input type="text" name="chage" value=""/>
</p>

<p>
<label> Child`s Gender</label> Male:<input type="radio" name="gender" value="male" /> 
							   Female: <input type="radio" name="gender" value="female"/>
</p>

<p>
<label> Password</label><input type="password" name="password" value="" />
</p>

<p>
<label> Confirm Password </label> <input type="password" name="confirmpassword" value="" />
</p>


<p>
<input type="submit" name="SUBMIT" value="SUBMIT" align="middle" class="button"/> 
</p>

</form>
</div>


<div style="border: 2px; border-style:solid; position:static; float: left; padding-bottom: 5px " class="C" >
<h3> Teachers Registration </h3>
<form action="teacherRegister" method="post">

<p>
<label>Name</label> <input type="text" name="tname" value="" />
</p>

<p>
<label> Email</label> <input type="text" name="temail" value="" />
</p>

<p>
<label>Gender </label> Male: <input type="radio" name="tgender" value="male" />  
Female: <input type="radio" name="tgender" value="female"/>

</p>


<p>
<label> Password</label> <input type="password" name="password" value="" />
</p>

<p>
<label> Confirm Password</label> <input type="password" name="confirmpassword" value="" />
</p>

<p>
<input type="submit" name="SUBMIT" value="SUBMIT" align="middle" class="button"/>
</p>
</form>
</div>
</body>
</html>