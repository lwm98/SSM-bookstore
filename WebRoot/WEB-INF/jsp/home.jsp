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
    
    <title>主页-小明书店</title>
    
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
<!--   导航栏 -->
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
  <li class="layui-nav-item layui-this"><a href="${pageContext.request.contextPath}/buycar.action?userid=${USER_SESSION.user_id}"><img alt="购物车" src="${pageContext.request.contextPath}/images/buycar.png" width="20px" height="20px" style="padding-bottom: 5px">购物车<span class="layui-badge-dot"></span></a></li>
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
function addbuycar(bookid) {
alert("书本"+bookid+"已加入购物车");
  $.ajax({ type: 'POST', 
	data: {"bookid":bookid},
	url: "${pageContext.request.contextPath}/addbuycar.action", 
	success: function () {
 	alert("success");
         }
});
  
}
</script>
<script src="/static/build/layui.js"></script>
<script>
layui.use('carousel', function(){
  var carousel = layui.carousel;
  //建造实例
  carousel.render({
    elem: '#test1'
    ,width: '796px'//设置容器宽度
    ,arrow: 'always' //始终显示箭头
    //,anim: 'updown' //切换动画方式
  });
});
</script>
<!-- 详情 -->
<div style="background-color: #f2f2f2;">
<div class="layui-carousel" id="test1" style="margin-left: 305px;">
  <div carousel-item >
    <div><img alt="" src="${pageContext.request.contextPath}/images/bo1.jpg"></div>
    <div><img alt="" src="${pageContext.request.contextPath}/images/bo2.jpg"></div>
    <div><img alt="" src="${pageContext.request.contextPath}/images/bo3.jpg"></div>
    <div><img alt="" src="${pageContext.request.contextPath}/images/bo4.jpg"></div>
    <div><img alt="" src="${pageContext.request.contextPath}/images/bo5.jpg"></div>
  </div>
</div>
</div>
<div class="layui-tab layui-tab-card">
  <ul class="layui-tab-title">
    <li class="layui-this"><img alt="邮件" src="${pageContext.request.contextPath}/images/top.png" width="20px" height="20px" style="padding-bottom: 5px">&nbsp;本店畅销</li>
    <li><img alt="最新" src="${pageContext.request.contextPath}/images/new.png" width="20px" height="20px" style="padding-bottom: 5px">&nbsp;最新上架</li>
    <li><img alt="推荐" src="${pageContext.request.contextPath}/images/jian.png" width="20px" height="20px" style="padding-bottom: 5px">&nbsp;重点推荐</li>
    <li><img alt="文学" src="${pageContext.request.contextPath}/images/wen.png" width="20px" height="20px" style="padding-bottom: 5px">&nbsp;网络文学</li>
    <li><img alt="it" src="${pageContext.request.contextPath}/images/it.png" width="20px" height="20px" style="padding-bottom: 5px">&nbsp;软件工程</li>
  </ul>
   <div class="layui-tab-content" style="height: 566px;">
   <div class="layui-tab-item layui-show">
    
    <ul class="bang_list clearfix bang_list_mode">
    <% 
		List<Book> booklist = (List<Book>)session.getAttribute("BOOK_SESSION");
		for(int i=0;i<booklist.size();i++){
			if(i>5){break;}
			Book book=booklist.get(i);
	%>
    
    
    
   
    <li class="">
    <div class="list_num red"><%=book.getNum()%>.</div>   
    <div class="pic"><a href="http://product.dangdang.com/23761145.html" target="_blank"><img src="<%=book.getBook_pic()%>" alt="<%=book.getBook_name()%>" title="<%=book.getBook_name()%>"></a></div>    
    <div class="name"><a href="http://product.dangdang.com/23761145.html" target="_blank" title="<%=book.getBook_name()%>"><%=book.getBook_name()%></a></div>    
    <div class="star"><span class="level"><span style="<%=book.getStar()%>"></span></span><a href="http://product.dangdang.com/23761145.html?point=comment_point" target="_blank">&nbsp;<%=book.getComment()%>条评论</a><span class="tuijian"><%=book.getTuijian()%>推荐</span></div>    
    <div class="publisher_info"><a href="http://search.dangdang.com/?key=太宰治" title="<%=book.getFanyi()%>" target="_blank"><%=book.getFanyi()%></a></div>    
    <div class="publisher_info"><span><%=book.getDate()%></span>&nbsp;<a href="http://search.dangdang.com/?key=作家出版社" target="_blank">作家出版社</a></div>    
                          
    
    <div class="price">        
        <p>
            <span class="price_n">¥<%=book.getPrice()%></span>
                        <span class="price_r">¥998.00</span>
            (<span class="price_s">打骨折</span>)
                    </p>
                    <p class="price_e">电子书：<span class="price_n">¥<%=book.getPrice_e()%></span></p>
                <div class="buy_button">
                          <a name="加入购物车" name="" href="javascript:addbuycar(<%=book.getBook_id() %>);" class="listbtn_buy">加入购物车</a>
                        
                        <a name="" href="http://product.dangdang.com/1900465429.html" class="listbtn_buydz" target="_blank">购买电子书</a>
              
            <a ddname="加入收藏" id="addto_favorlist_23761145" name="" href="javascript:showMsgBox('addto_favorlist_23761145',encodeURIComponent('23761145&amp;platform=3'), 'http://myhome.dangdang.com/addFavoritepop');" class="listbtn_collect">收藏</a>
        </div>
        
    </div>
  
    </li>    
    
    
    <% 
		}
	%>
    </div>
    <div class="layui-tab-item">
    <ul class="bang_list clearfix bang_list_mode">
    <%
    	for(int i=6;i<booklist.size();i++){
			if(i>11){break;}
			Book book=booklist.get(i);
     %>
    <li class="">
    <div class="list_num red"><%=book.getNum()%>.</div>   
    <div class="pic"><a href="http://product.dangdang.com/23761145.html" target="_blank"><img src="<%=book.getBook_pic()%>" alt="<%=book.getBook_name()%>" title="<%=book.getBook_name()%>"></a></div>    
    <div class="name"><a href="http://product.dangdang.com/23761145.html" target="_blank" title="<%=book.getBook_name()%>"><%=book.getBook_name()%></a></div>    
    <div class="star"><span class="level"><span style="<%=book.getStar()%>"></span></span><a href="http://product.dangdang.com/23761145.html?point=comment_point" target="_blank">&nbsp;<%=book.getComment()%>条评论</a><span class="tuijian"><%=book.getTuijian()%>推荐</span></div>    
    <div class="publisher_info"><a href="http://search.dangdang.com/?key=太宰治" title="<%=book.getFanyi()%>" target="_blank"><%=book.getFanyi()%></a></div>    
    <div class="publisher_info"><span><%=book.getDate()%></span>&nbsp;<a href="http://search.dangdang.com/?key=作家出版社" target="_blank">作家出版社</a></div>    
                          
    
    <div class="price">        
        <p>
            <span class="price_n">¥<%=book.getPrice()%></span>
                        <span class="price_r">¥998.00</span>
            (<span class="price_s">打骨折</span>)
                    </p>
                    <p class="price_e">电子书：<span class="price_n">¥<%=book.getPrice_e()%></span></p>
                <div class="buy_button">
                          <a name="加入购物车" name="" href="javascript:addbuycar(<%=book.getBook_id() %>);" class="listbtn_buy">加入购物车</a>
                        
                        <a name="" href="http://product.dangdang.com/1900465429.html" class="listbtn_buydz" target="_blank">购买电子书</a>
              
            <a ddname="加入收藏" id="addto_favorlist_23761145" name="" href="javascript:showMsgBox('addto_favorlist_23761145',encodeURIComponent('23761145&amp;platform=3'), 'http://myhome.dangdang.com/addFavoritepop');" class="listbtn_collect">收藏</a>
        </div>
        
    </div>
  
    </li>
        
    
        
    
    <%
    	}
     %>
        
    
    </div>
    <div class="layui-tab-item">
    <ul class="bang_list clearfix bang_list_mode">
    <%
    	for(int i=12;i<booklist.size();i++){
			if(i>17){break;}
			Book book=booklist.get(i);
     %>
    <li class="">
    <div class="list_num red"><%=book.getNum()%>.</div>   
    <div class="pic"><a href="http://product.dangdang.com/23761145.html" target="_blank"><img src="<%=book.getBook_pic()%>" alt="<%=book.getBook_name()%>" title="<%=book.getBook_name()%>"></a></div>    
    <div class="name"><a href="http://product.dangdang.com/23761145.html" target="_blank" title="<%=book.getBook_name()%>"><%=book.getBook_name()%></a></div>    
    <div class="star"><span class="level"><span style="<%=book.getStar()%>"></span></span><a href="http://product.dangdang.com/23761145.html?point=comment_point" target="_blank">&nbsp;<%=book.getComment()%>条评论</a><span class="tuijian"><%=book.getTuijian()%>推荐</span></div>    
    <div class="publisher_info"><a href="http://search.dangdang.com/?key=太宰治" title="<%=book.getFanyi()%>" target="_blank"><%=book.getFanyi()%></a></div>    
    <div class="publisher_info"><span><%=book.getDate()%></span>&nbsp;<a href="http://search.dangdang.com/?key=作家出版社" target="_blank">作家出版社</a></div>    
                          
    
    <div class="price">        
        <p>
            <span class="price_n">¥<%=book.getPrice()%></span>
                        <span class="price_r">¥998.00</span>
            (<span class="price_s">打骨折</span>)
                    </p>
                    <p class="price_e">电子书：<span class="price_n">¥<%=book.getPrice_e()%></span></p>
                <div class="buy_button">
                          <a name="加入购物车" name="" href="javascript:addbuycar(<%=book.getBook_id() %>);" class="listbtn_buy">加入购物车</a>
                        
                        <a name="" href="http://product.dangdang.com/1900465429.html" class="listbtn_buydz" target="_blank">购买电子书</a>
              
            <a ddname="加入收藏" id="addto_favorlist_23761145" name="" href="javascript:showMsgBox('addto_favorlist_23761145',encodeURIComponent('23761145&amp;platform=3'), 'http://myhome.dangdang.com/addFavoritepop');" class="listbtn_collect">收藏</a>
        </div>
        
    </div>
  
    </li>
        
    
        
    
    <%
    	}
     %>
    
       
    
    </div>
    <div class="layui-tab-item">
    <ul class="bang_list clearfix bang_list_mode">
    <%
    	for(int i=18;i<booklist.size();i++){
			if(i>23){break;}
			Book book=booklist.get(i);
     %>
    <li class="">
    <div class="list_num red"><%=book.getNum()%>.</div>   
    <div class="pic"><a href="http://product.dangdang.com/23761145.html" target="_blank"><img src="<%=book.getBook_pic()%>" alt="<%=book.getBook_name()%>" title="<%=book.getBook_name()%>"></a></div>    
    <div class="name"><a href="http://product.dangdang.com/23761145.html" target="_blank" title="<%=book.getBook_name()%>"><%=book.getBook_name()%></a></div>    
    <div class="star"><span class="level"><span style="<%=book.getStar()%>"></span></span><a href="http://product.dangdang.com/23761145.html?point=comment_point" target="_blank">&nbsp;<%=book.getComment()%>条评论</a><span class="tuijian"><%=book.getTuijian()%>推荐</span></div>    
    <div class="publisher_info"><a href="http://search.dangdang.com/?key=太宰治" title="<%=book.getFanyi()%>" target="_blank"><%=book.getFanyi()%></a></div>    
    <div class="publisher_info"><span><%=book.getDate()%></span>&nbsp;<a href="http://search.dangdang.com/?key=作家出版社" target="_blank">作家出版社</a></div>    
                          
    
    <div class="price">        
        <p>
            <span class="price_n">¥<%=book.getPrice()%></span>
                        <span class="price_r">¥998.00</span>
            (<span class="price_s">打骨折</span>)
                    </p>
                    <p class="price_e">电子书：<span class="price_n">¥<%=book.getPrice_e()%></span></p>
                <div class="buy_button">
                          <a name="加入购物车" name="" href="javascript:addbuycar(<%=book.getBook_id() %>);" class="listbtn_buy">加入购物车</a>
                        
                        <a name="" href="http://product.dangdang.com/1900465429.html" class="listbtn_buydz" target="_blank">购买电子书</a>
              
            <a ddname="加入收藏" id="addto_favorlist_23761145" name="" href="javascript:showMsgBox('addto_favorlist_23761145',encodeURIComponent('23761145&amp;platform=3'), 'http://myhome.dangdang.com/addFavoritepop');" class="listbtn_collect">收藏</a>
        </div>
        
    </div>
  
    </li>
        
    
        
    
    <%
    	}
     %>
    
      
    
    
    </div>
    <div class="layui-tab-item">
    <ul class="bang_list clearfix bang_list_mode">
    <%
    	for(int i=24;i<booklist.size();i++){
			if(i>29){break;}
			Book book=booklist.get(i);
     %>
    <li class="">
    <div class="list_num red"><%=book.getNum()%>.</div>   
    <div class="pic"><a href="http://product.dangdang.com/23761145.html" target="_blank"><img src="<%=book.getBook_pic()%>" alt="<%=book.getBook_name()%>" title="<%=book.getBook_name()%>"></a></div>    
    <div class="name"><a href="http://product.dangdang.com/23761145.html" target="_blank" title="<%=book.getBook_name()%>"><%=book.getBook_name()%></a></div>    
    <div class="star"><span class="level"><span style="<%=book.getStar()%>"></span></span><a href="http://product.dangdang.com/23761145.html?point=comment_point" target="_blank">&nbsp;<%=book.getComment()%>条评论</a><span class="tuijian"><%=book.getTuijian()%>推荐</span></div>    
    <div class="publisher_info"><a href="http://search.dangdang.com/?key=太宰治" title="<%=book.getFanyi()%>" target="_blank"><%=book.getFanyi()%></a></div>    
    <div class="publisher_info"><span><%=book.getDate()%></span>&nbsp;<a href="http://search.dangdang.com/?key=作家出版社" target="_blank">作家出版社</a></div>    
                          
    
    <div class="price">        
        <p>
            <span class="price_n">¥<%=book.getPrice()%></span>
                        <span class="price_r">¥998.00</span>
            (<span class="price_s">打骨折</span>)
                    </p>
                    <p class="price_e">电子书：<span class="price_n">¥<%=book.getPrice_e()%></span></p>
                <div class="buy_button">
                          <a name="加入购物车" name="" href="javascript:addbuycar(<%=book.getBook_id() %>);" class="listbtn_buy">加入购物车</a>
                        
                        <a name="" href="http://product.dangdang.com/1900465429.html" class="listbtn_buydz" target="_blank">购买电子书</a>
              
            <a ddname="加入收藏" id="addto_favorlist_23761145" name="" href="javascript:showMsgBox('addto_favorlist_23761145',encodeURIComponent('23761145&amp;platform=3'), 'http://myhome.dangdang.com/addFavoritepop');" class="listbtn_collect">收藏</a>
        </div>
        
    </div>
  
    </li>
        
    
        
    
    <%
    	}
     %>
    
    
    
    </div>
   
  </div>
</div>
  </body>
</html>
