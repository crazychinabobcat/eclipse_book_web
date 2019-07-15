<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>bookStore注册页面</title>
<%--导入css --%>
<link rel="stylesheet" href="css/main.css" type="text/css" />
<script type="text/javascript">
	function changeImage() {

		document.getElementById("img").src = "${pageContext.request.contextPath}/CheckCodeServlet?time="
				+ new Date().getTime();
	}
	
	
	//验证码会员邮箱
	function checkEmail(){	
	 var email_Value = $("#email").val();
	 var reg_Email =  /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	 var flag = reg_Email.test(email_Value);
	 if(flag){
		 $("#email").css("border","1px solid  blue");
	 }else{
		 alert("邮箱非法，重新输入")
	 }
	}
	
	
	//验证用户密码
	function checkPassword(){
	var user_Password_Val = $("#password").val();
	var reg_user_Password = /^\w{8,20}$/;
	var flag = reg_user_Password.test(reg_user_Password);
	if(flag){
		$("#password").css("border","1px solid blue");
	}else{
		alert("用户名最低8位");
	}
	}
	
	//验证用户联系电话
	
	function checkTelePhone(){
		var user_Telephone = $("#telephone").val();
		var reg_user_Telephone = /^1[34578]\d{9}$/;
		var flag = user_Telephone.test(reg_user_Telephone);
		if(flag){
			$("#user_Telephone").css("border","1px solid blue" );
		}else{
			alert("输入电话号码不对")
		}
	}
	
	//验证用户校验码
	function checkCheckCode(){
		
		var input_CheckCode = $("#checkcode").val();
		var reg_input_CheckCode =  /\S/;
		var flag  = input_CheckCode.test(reg_input_CheckCode);
		if(flag){
			$("#checkcode").css("border","1px solid blue");
		}else{
			alert("验证码不能为空");
		}
	}
	
	//验证两次密码输入是否一样
	function checkInputPassword(){
		var repassword_Val = $("#repassword").val;
		var user_Password_Val = $("#password").val();
		if(repassword_Val.equles(user_Password_Val)){
			$("#repassword").css("border","1px solid blue");
		}else{
			alert("两次输入的密码不一样");
		}
		
	}
	
	
	//登录页面前端js验证
function myFunction(){
	alert("输入电话号码不对");
	
}
	
</script>
</head>


<body class="main">
	<%@include file="head.jsp"%>
	<%--导入头 --%>
	<%@include file="menu_search.jsp"%><%--导入导航条与搜索 --%>

	<div id="divcontent">
		<form action="${pageContext.request.contextPath}/register"
			method="post">
			<table width="850px" border="0" cellspacing="0">
				<tr>
					<td style="padding:30px">
						<h1>新会员注册</h1>
						
						<table width="70%" border="0" cellspacing="2" class="upline">
							<tr>
								<td style="text-align:right; width:20%">会员邮箱：</td>
								<td style="width:40%">
								<input type="text" class="textinput" name="email" οnblur="myFunction()"  id="email"/></td>
								<td><font color="#999999">请输入有效的邮箱地址</font></td>
							</tr>
							<tr>
								<td style="text-align:right">会员名：</td>
								<td>
									<input type="text" class="textinput" name="username" />
								</td>
								<td><font color="#999999">用户名设置至少6位</font></td>
							</tr>
							<tr>
								<td style="text-align:right">密码：</td>
								<td><input type="password" class="textinput"
									name="password" /></td>
								<td><font color="#999999">密码设置至少6位</font></td>
							</tr>
							<tr>
								<td style="text-align:right">重复密码：</td>
								<td><input type="password" class="textinput"
									name="repassword" /></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td style="text-align:right">性别：</td>
								<td colspan="2">&nbsp;&nbsp;<input type="radio"
									name="gender" value="男" checked="checked" /> 男
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"
									name="gender" value="女" /> 女</td>
							</tr>
							<tr>
								<td style="text-align:right">联系电话：</td>
								<td colspan="2"><input type="text" class="textinput"
									style="width:350px" name="telephone" /></td>
							</tr>
							<tr>
								<td style="text-align:right">个人介绍：</td>
								<td colspan="2"><textarea class="textarea" name="introduce"></textarea>
								</td>
							</tr>

						</table>



						<h1>注册校验</h1>
						<table width="80%" border="0" cellspacing="2" class="upline">
							<tr>
								<td style="text-align:right; width:20%">输入校验码：</td>
								<td style="width:50%"><input type="text" class="textinput" name="checkcode" />
								</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td style="text-align:right;width:20%;">&nbsp;</td>
								<td colspan="2" style="width:50%"><img
									src="${pageContext.request.contextPath}/CheckCodeServlet" width="180"
									height="30" class="textinput" style="height:30px;" id="img" />&nbsp;&nbsp;
									<a href="javascript:void(0);" onclick="changeImage()">看不清换一张</a>
								</td>
							</tr>
						</table>



						<table width="70%" border="0" cellspacing="0">
							<tr>
								<td style="padding-top:20px; text-align:center"><input
									type="image" src="images/signup.gif" name="submit" border="0">
								</td>
							</tr>
						</table></td>
				</tr>
			</table>
		</form>
	</div>



	<div id="divfoot">
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td rowspan="2" style="width:10%"><img
					src="images/bottomlogo.gif" width="195" height="50"
					style="margin-left:175px" /></td>
				<td style="padding-top:5px; padding-left:50px"><a href="#"><font
						color="#747556"><b>CONTACT US</b> </font> </a></td>
			</tr>
			<tr>
				<td style="padding-left:50px"><font color="#CCCCCC"><b>COPYRIGHT
							2008 &copy; eShop All Rights RESERVED.</b> </font></td>
			</tr>
		</table>
	</div>


</body>

</html>
