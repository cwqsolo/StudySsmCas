<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String col = request.getParameter("col");
%>

<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
<jsp:include page="/WEB-INF/jsp/head.jsp" flush="true"/>

<div id="tableContainer">
    <div id="allcontent">
        <section id="mymenu">
            <jsp:include page="/WEB-INF/jsp/menu.jsp" flush="true"/>
        </section>

        <section id="mycontext">
            <article>
                <header>
                    <h1>欢迎</h1>

                </header>
                <p>
                    来到我的世界-CAS！
                </p>
            </article>

        </section>

    </div>

</div>




