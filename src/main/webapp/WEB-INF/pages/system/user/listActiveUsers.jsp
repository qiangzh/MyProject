<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp" %>

<head>
    <title><fmt:message key="activeUsers.title"/></title>
    <meta name="menu" content="AdminMenu"/>
</head>
<body id="activeUsers">

<div class="span10">
    <h2><fmt:message key="activeUsers.heading"/></h2>    
	
	<display:table id="user" name="applicationScope.userNames" requestURI="" defaultsort="1" pagesize="10" 
		class="table table-condensed table-striped table-hover table-bordered" export="false">	
        <display:column title="序号">${user_rowNum}</display:column> 
        <display:column property="username" escapeXml="true" style="width: 30%" titleKey="user.username"
                        sortable="true"/>
        <display:column property="email" titleKey="user.email" sortable="true" autolink="true" media="html" />		
        <display:setProperty name="paging.banner.item_name" value="user"/>
        <display:setProperty name="paging.banner.items_name" value="users"/>
    </display:table>
</div>
</body>