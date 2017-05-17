<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<center><h3>Welcome to Login</h3></center>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<table>
	<tr> 
  		<td><B>Phone Number:</B></td> 
  		<td><input id="username" type="text" name="username" /> 
  		</td> 
 	</tr> 
 	<tr> 
  		<td>PassWord:</td> 
  		<td><input id="password" type="text" name="password" /> 
  		</td> 
 	</tr> 
 	<tr> 
		<td></td>
		<td>
			<input type="button" size="15px" id="saSubmit" name="saSubmit" value="Login" onClick="login();" />
            &nbsp;&nbsp;&nbsp;&nbsp;
        	<input type="button" size="15px" id="saReg" name="saReg" value="Register" onClick="register();" />
		</td>
 	</tr> 
</table> 
<script type="text/javascript">
var mform  = getMainForm();
function login(){
	var name = document.getElementById("username").value.trim();
	var pwd = document.getElementById("password").value.trim();
	var nameregex = /^1\d{10}$/;
	if(name == ""){
		alert("phone number cannot be null!");
		return;
	}
	if(pwd == ""){
		alert("password cannot be null!");
		return;
	}
	if(!nameregex.test(name)){
		alert("Not a valid phone number!");
		return;
	}
	mform.action = "login_action.jsp";
	mform.method = "post";
	mform.target='';
	mform.submit();
}

</script>