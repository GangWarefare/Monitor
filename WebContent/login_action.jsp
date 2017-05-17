<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
<%@ page import="com.monitorweb.action.login.LoginHelper" %> 
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
boolean isSuccess = false;
try { 
	 String username = request.getParameter("username"); 
	 String password = request.getParameter("password");
	 if(!username.isEmpty() && !password.isEmpty()){
		 isSuccess = LoginHelper.checkUser(username,password);
	 }
	 if(isSuccess){ 
		  System.out.println("Login Success!"); 
		  session.setAttribute("username", username); 
		  response.sendRedirect("monitor.jsp"); 
		  return; 
		 }else{
		  System.out.println("Login Failed!"); 
		  response.sendRedirect("login.jsp"); 
		  return; 
	}

} catch (Exception e) { 
  e.printStackTrace(); 
} 
 
 %> 