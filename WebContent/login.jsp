<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<%@ page import = "java.sql.*" %> 
<! DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" > 
<html>
<head>
< meta http-equiv = "Content-Type" content = "text/html; charset=UTF-8" > 
<title>验证页面</title>
<!-- CSS -->
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<%
String username = request.getParameter( "username" );
String password = request.getParameter( "password" );
if (username != null && !username.equals( "" )){
try{
/*
*连接数据库
*/
Class.forName( "com.mysql.jdbc.Driver" ); 
String url = "jdbc:mysql://localhost:8080/login"; 
String un = "root";  
String pd = "629520";  

Connection conn=DriverManager.getConnection( url , un , pd ); 
if (conn != null)   
	  
    System.out.println("数据库连接成功!");  

else  

    System.out.println("数据库连接失败!");  
Statement stmt =conn.createStatement();
String sql1 = "SELECT soeid from";
  //String sql1 = "SELECT soeid from login WHERE soeid='" + soeid + "'" ; // 准备查询语句
  //String sql2 = "select name from login";
ResultSet rs1=stmt.executeQuery( sql1 );
//ResultSet rs2=stmt.executeQuery( sql2 );
if(rs1.next()){
 session.setAttribute("password",password);//验证通过之后，跳转到后续页面
 session.setAttribute("username",username);
%>
<jsp:forward page ="main.jsp"/>
<%
}else
out.println("错误的用户名和密码");//验证未通过，显示错误信息
   out.println("<a href=index.jsp>返回</a>");
}catch(Exception ee){
ee.printStackTrace();
}
}else {
out.println("请先登录！");//验证未通过，显示错误信息
out.println("<a href=index.jsp>返回</a>");
}
%>
<!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
</body>
</html>