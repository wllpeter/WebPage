<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import = "java.util.*" %> 
    
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="utf-8">
        <title>EMBRACING NEW TECHNOLOGY</title>
		<meta name="keywords" content="网站模板,手机网站模板,手机登录页面,登录页面HTML,免费网站模板下载" />
		<meta name="description" content="JS代码网提供高质量手机网站模板下载" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script language="Javascript">

        function add() {
        	 var uname= document.getElementById("id1").value;
        		//alert('文本框的值为：'+uname);
        		var uid= document.getElementById("id2").value;
        		//alert('文本框的值为：'+uid);
        if($("input[name=username]").val() == null || $("input[name=username]").val() == ""){
            alert("用户名不能为空");
            $("input[name=username]").focus();
            return false;
        }
        //判断密码
        else if($("input[name=password]").val() == null || $("input[name=password]").val() == ""){
            alert("密码不能为空");
            $("input[name=password]").focus();
            return false;
        }
        var data =[
        { "userid": "0", "soeid":"YY34942", "name":"Rain","role": "Manager","mainframe":"RAYYN" },
        { "userid": "1", "soeid":"LL02639","name":"Sherry", "role": "Manager","mainframe":"PRBYR" },
        { "userid": "2", "soeid":"NN90351", "name":"Ningning","role": "Developer","mainframe":"PRBYR" },
        ];
         
           //alert(o);  
           // alert(data[o]);  
           // alert("text:"+data[1].name+" value:"+data[1].soeid );  
        	
        	for(var o in data){
           if(uname==data[o].name&&uid==data[o].soeid)
        	  // alert("Succeed!");
        	   //window.navigate("index.jsp");
        	  window.location.href="index.jsp";
           //else alert("You have no authority!");
        	   //window.location.href="index.jsp";
        	}
        	   
          }  

         

        </script>
    </head>
    <body>
        <div class="page-container">
            <h1>RMG System login</h1>
            <form action="" method="post">
         <input type="text" id="id1" name="username"  placeholder="UserName">
               <input type="password" id="id2"  name="password"  placeholder="SOEID">
                <button type="button" onclick="add()" >submit</button>
                <div class="error"><span>+</span></div>
            </form>   
        </div>
		
		<%
		String name=request.getParameter("username");
		//response.setHeader("refresh","2;URL=index.jsp");
		session.setAttribute("userid",name);
		%>
        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
        <!-- <script src="assets/js/log.js"></script> -->
    </body>

</html>


