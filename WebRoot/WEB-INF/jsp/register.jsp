<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册-小明书店</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui/css/layui.css">
	<script  type="text/javascript" src="${pageContext.request.contextPath}/css/layui/layui.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mycss.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/pager.css">
	<script  type="text/javascript" src="${pageContext.request.contextPath}/css/layui/jquery.min.js"></script>
	<script  type="text/javascript" src="${pageContext.request.contextPath}/css/layui/vector.js"></script>

  </head>
  
  <body>
  <div id="container">
  <ul class="layui-nav" lay-filter="">
  <li class="layui-nav-item"><a href="login">小明书店</a></li>
  <li class="layui-nav-item">
    <a href="javascript:;">关于我们</a>
    <dl class="layui-nav-child"> <!-- 二级菜单 -->
      <dd><a href="">联系方式:13192563375</a></dd>
      <dd><a href="">微信:13192563375</a></dd>
      <dd><a href="">邮箱:821256519@qq.com</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item"><a href="">${USER_SESSION.user_name}</a></li>
</ul>
 
<script>
//注意：导航 依赖 element 模块，否则无法进行功能性操作
layui.use('element', function(){
  var element = layui.element;
  
  //…
});
</script>
<div class="loginForm">
<form action="${pageContext.request.contextPath}/register.action" method="post" onsubmit="return check()">
	<div id="output">
		<div class="containerT">
			<h1>注册</h1>
<input type="text" name="userid" id="userid" value="" placeholder="请输入您的账号" autocomplete="off">
<input type="password" name="password" id="password" value="" placeholder="请输入您的密码" autocomplete="off">	
<input type="text" name="username" id="username" value="" placeholder="请输入您的用户名" autocomplete="off">			
				<input type="submit" id="entry_btn" value="提交">
				</form>
				<input type="button" value="返回" onclick="location.href='login.action'">
				<div id="prompt" class="prompt"></div>
				</div>
				</div>
			
		


<script type="text/javascript">
    $(function(){
        Victor("container", "output");   //登陆背景函数
        $("#entry_name").focus();
        $(document).keydown(function(event){
            if(event.keyCode==13){
                $("#entry_btn").click();
            }
        });
    });
</script>
              

</div>


  </body>
</html>
