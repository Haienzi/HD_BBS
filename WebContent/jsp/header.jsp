<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.henu.entity.User"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!-- 头部导航-->
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<img id="henu_img"
					src="${pageContext.request.contextPath}/img/henu.png" class="img-circle " /> <a class="navbar-brand"
					href="#">河大论坛</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="${pageContext.request.contextPath}/index.jsp">论坛首页</a></li>
					<li><a href="#">论坛简介</a></li>
					<li><a href="#">论坛帮助</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> 精选版块 <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">数据结构</a></li>
							<li><a href="#">计算机网络</a></li>
							<li><a href="#">计算机操索系统</a></li>
							<li class="divider"></li>
							<li><a href="#">Java Web</a></li>
							<li class="divider"></li>
							<li><a href="#">ASP.NET</a></li>
						</ul></li>
					<li><a href="#">通知公告</a></li>

				</ul>
			</div>
			<%
		User user = (User)session.getAttribute("user");
		String src = null;
		String name = null;
		if(user!=null){
			src = user.getUsericon();
			name = user.getUsername();
		}else{
			src = request.getContextPath()+"/img/default.jpg";
			name = "您还未登录！";
		}
	%>
			<div style="padding-right: 30px;">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="User_to_register"><span class="glyphicon glyphicon-user"></span>
							注册</a></li>
					<li><a href="User_to_login"><span class="glyphicon glyphicon-log-in"></span>
							登录</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 头部结束 -->