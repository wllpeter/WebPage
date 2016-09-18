 function add() {
var myVal1= document.getElementById("id1").value;
//alert('文本框的值为：'+myVal1);
var myVal2= document.getElementById("id2").value;
//alert('文本框的值为：'+myVal2);
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
for(var o in data){  
   // alert(o);  
    //alert(data[o]);  
   // alert("text:"+data[o].name+" value:"+data[o].soeid );  
   if(myVal1==data[o].name&&myVal2==data[o].soeid)
	  // alert("Succeed!");
	   window.location.href="login.jsp";
   else alert("You have no authority!");
  }  

 }
