<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Navigation</title>
</head>
<body background="images/bgnavi.jpg">
<div align="left">
<a href="home.jsp" target="main" ><button class="navigate" > <img src="images/home-icon.png" width="140" height="140" align="left" /></button></a> <br/> <br/>
<a href="register.jsp" target="main"><button class="navigate"> <img src="images/icon_button_register.png" width="140" height="140" align="left" /></button></a> <br/> <br/>
<a href="login.jsp" target="main"> <button class="navigate"><img src="images/member-login-button.png" width="140" height="140" align="left" /></button></a> <br/> <br/>
<a href="inside.jsp" target="main"><button class="navigate"><img src="images/happy.jpg"  id="face" onmousemove="face()" width="140" height="140" align="left" /></button></a> <br/> <br/>
	<script type="text/javascript"> 
	var status = 0;
	function face(){
	var faceElement= document.getElementById("face");
	if(status==0){
		faceElement.src="images/happy.jpg"; 
		status= 1;
		}
	else{
		faceElement.src="images/happy2.jpg";
		status= 0;
		}
	}
	</script>
</div>

</body>
</html>