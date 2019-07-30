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
						<ul>
							<li>待办任务：3项。 <a href="url">执行</a></li>
							<li>已办任务：10项。</li>
						</ul>



					</table>

				</div>
			</article>
		</section>
	</div>
</div>

