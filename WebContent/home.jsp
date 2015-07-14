<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Happy Kids Home Page</title>
<style type="text/css">
<%@include file="WEB-INF/mystyle.css"%> 
</style>
</head>
<body>
<script type="text/javascript">
 	var slides = ["images/kidcartoon.jpeg","images/kidsworld1.jpg","images/kidsworld2.jpg","images/playkids.jpg","images/playkid2.jpg","images/Kids.jpg"];
	var index = 0; 
	function slideShow(){
		var slideElement = document.getElementById("slide");
		slideElement.src= slides[index];
		index++;
		if(index>5){
		index= 0;
		}
		setTimeout("slideShow()",3000);	
	}
		onload = slideShow;
</script>

<div>
<h1> WelCome Happy Kids...!! </h1>
<h1> Here is your Joyful Kingdom...</h1>
</div>

<div id="slideshow" >
<img src="images/Kids.jpg" id= "slide" width="1100" height="300" style="padding:50px 20px"/> 
</div>

<div>
<h2> 
Dear Kids ,<br/> 
This is your Joy full Kingdom .So Be Happy....!! <br/>  
Here you can colour pictures , view and read stories , play word games,learn to write and specially you have joy full math works...<br/>
so let`s find out them Here you..<a href="inside.jsp"> Go Happy...! <img src="images/happy.jpg" width="30" height="30"/> </a> 
</h2>
</div>
<br/>

<div>
<h3> Dear Teachers, <br/> Please add your valuable teaching lessons to our website.First you have to register in the web site as a teacher. <br /> It is completely free...<a href="register.jsp">Register Here.</a> <br/> Then you can upload your valuable teaching lessons to our web site.  
</h3>
</div>
<br/>

<div>
<h3> Dear Parents, <br/> Please assist your child to do activities in this web portal. </h3>
</div>

</body>
</html>