<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="/css/mystyle.css" rel="stylesheet" type="text/css"/>
<jsp:include page="/WEB-INF/jsp/head.jsp" flush="true"/>

<div id="tableContainer">
	<div id="allcontent">
		<section id="mymenu">
			<jsp:include page="/WEB-INF/jsp/menu.jsp" flush="true"/>
		</section>
		<section id="mycontext">
			<article>
				<div style="width:500px;margin:0px auto;text-align:center">
					<table align='center' border='1' cellspacing='0'>
						<h2>用户数据展示效果</h2>

						<tr>
							<td>账号ID</td>
							<td>账号</td>
							<td>密码</td>
							<td>角色ID</td>
						</tr>
						<c:forEach items="${cs}" var="c" varStatus="st">
							<tr>
								<td>${c.id}</td>
								<td>${c.userName}</td>
								<td>${c.password}</td>
								<td>${c.roleId}</td>
							</tr>
						</c:forEach>
					</table>
					<div style="text-align:center">
						<a href="?start=0">首  页</a>
						<a href="?start=${page.start-page.count}">上一页</a>
						<a href="?start=${page.start+page.count}">下一页</a>
						<a href="?start=${page.last}">末  页</a>
					</div>
				</div>
			</article>
		</section>
	</div>
</div>

