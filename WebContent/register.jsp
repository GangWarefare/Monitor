<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%> 
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 
<html> 
 <head> 
 <base href="<%=basePath%>"> 
   
 <title>Register Page</title> 
   
 <meta http-equiv="pragma" content="no-cache"> 
 <meta http-equiv="cache-control" content="no-cache"> 
 <meta http-equiv="expires" content="0">  
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"> 
 <meta http-equiv="description" content="This is my page"> 
 <!-- 
 <link rel="stylesheet" type="text/css" href="styles.css"> 
 -->
 </head> 
  
 <body> 
 <form action="register_action.jsp" method="post"> 
  <table> 
   <tr> 
    <td colspan="2">Register Window</td> 
   </tr> 
   <tr> 
    <td>Phone Number:</td> 
    <td><input type="text" name="username" /></td> 
   </tr> 
   <tr> 
    <td>PassWord:</td> 
    <td><input type="text" name="password1" /></td> 
   </tr> 
   <tr> 
    <td>Confirm PassWord:</td> 
    <td><input type="text" name="password2" /></td> 
   </tr> 
   <tr> 
    <td>Email:</td> 
    <td><input type="text" name="email" /></td> 
   </tr> 
   <tr> 
    <td colspan="2"><input type="submit" value="Register" /> <a href="login.jsp">Return</a></td> 
   </tr> 
  </table> 
 </form> 
</body> 
</html> 
