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
						<h2>账号添加</h2>
						<form id="addUser" action="addUser" method="POST">
							账号ID: <input type="text" name="id"><br>
							账    号: <input type="text" name="username"><br>
							密    码: <input type="text" name="password"><br>
							角色ID: <input type="text" name="roleid"><br>
							<input type="submit" value="添加账号">
						</form>


					</table>

				</div>
			</article>
		</section>
	</div>
</div>

