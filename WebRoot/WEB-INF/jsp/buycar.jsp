<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="com.lwm.po.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购物车-小明书店</title>
    
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


<ul class="layui-nav" lay-filter="">
  <li class="layui-nav-item"><a href="home.action"><img alt="主页" src="${pageContext.request.contextPath}/images/home.png" width="20px" height="20px" style="padding-bottom: 5px">&nbsp;小明书店</a></li>
  <li class="layui-nav-item">
    <a href="javascript:;"><img alt="关于" src="${pageContext.request.contextPath}/images/about.png" width="20px" height="20px" style="padding-bottom: 5px">&nbsp;关于我们</a>
    <dl class="layui-nav-child"> <!-- 二级菜单 -->
      <dd><a href=""><img alt="电话" src="${pageContext.request.contextPath}/images/phone.png" width="20px" height="20px" style="padding-bottom: 5px">&nbsp;联系方式:13192563375</a></dd>
      <dd><a href=""><img alt="微信" src="${pageContext.request.contextPath}/images/wechat.png" width="20px" height="20px" style="padding-bottom: 5px">&nbsp;微信:13192563375</a></dd>
      <dd><a href=""><img alt="邮件" src="${pageContext.request.contextPath}/images/mail.png" width="20px" height="20px" style="padding-bottom: 5px">&nbsp;邮箱:821256519@qq.com</a></dd>
    </dl>
  </li>
  <div class="right" style="float: right;margin-right: 200px;">
  <li class="layui-nav-item" style=""><img alt="用户" src="${pageContext.request.contextPath}/images/user.png" width="20px" height="20px" style="padding-bottom: 5px">欢迎${USER_SESSION.user_name}同学！</li>
  <li class="layui-nav-item layui-this"><a href="${pageContext.request.contextPath}/buycar.action"><img alt="购物车" src="${pageContext.request.contextPath}/images/buycar.png" width="20px" height="20px" style="padding-bottom: 5px">购物车<span class="layui-badge-dot"></span></a></li>
  <li class="layui-nav-item" ><a href="loginout.action"><img alt="退出" src="${pageContext.request.contextPath}/images/exit.png" width="20px" height="20px">退出</a></li>
	</div>
</ul>
 
<script>
//注意：导航 依赖 element 模块，否则无法进行功能性操作
layui.use('element', function(){
  var element = layui.element;
  
  //…
});
</script>
<script>
	function paid(s){
	alert("您即将支付"+s+"元");
	document.getElementById("ma").style.display="block";
	}
</script>
  </head>
  
  <body>
  <div id="ma" style="display: none;text-align: center;">快给我打钱！</br><img width="300px" height="300px" alt="" src="${pageContext.request.contextPath}/images/ma.jpg"></div>
<!--   	您的账号为：${USER_SESSION.user_id}</br> -->
<!-- 	您的用户名为：${USER_SESSION.user_name} </br> -->
  	以下是您的购物车：
  	<table class="layui-table">
  <colgroup>
    <col width="100px" >
    <col width="">
    <col width="200px">
    <col width="100px">
    
  </colgroup>
  <thead>
    <tr>
      <th>序号</th>
      <th>书本</th>
      <th>价格</th>
      <th>操作</th>
    </tr> 
  </thead>
  <form action="${pageContext.request.contextPath}/deletesomebuycar.action" method="post">
  <tbody>
    <% 
    int n=1;
    float s=0;
		List<Book> book1 = (List<Book>)session.getAttribute("BUY_SESSION");
		for(int i=0;i<book1.size();i++){
			Book book=book1.get(i);
			
	%>
	
    <tr>
      
		<td><input type="checkbox" class="checkbox1" id="<%=book.getBook_id()%>" name="deleteid" value="<%=book.getBook_id() %>"><%=n%>.</td>
		<td>
		<img alt="" src="<%=book.getBook_pic()%>">	
		<%=book.getBook_id() %>
		<%=book.getBook_name() %></td>
		<td><div class="myprice" style="color: #F40;font-weight: 700;">¥<%=book.getPrice() %></div></td>
		<td><a class="layui-btn layui-btn-sm layui-btn-normal" href="${pageContext.request.contextPath}/deleteonebuycar.action?bookid=<%=book.getBook_id() %>"><i class="layui-icon"></i> 删除</a></td>
    </tr>
	<%
		n++;
		s=s+book.getPrice();}
	 %>
	 </tbody>
</table>
<div class="bottom" style="text-align: center;">
<h class="sprice" style="color: #F40;font-weight: 700;">总计：¥<%=s %></h></br>
<a class="layui-btn" href="javascript:paid(<%=s%>);" lay-filter="formDemo">立即支付</a>
<button type="submit" class="layui-btn layui-btn-primary">删除</button>
</div>
</form>
  </body>
</html>
