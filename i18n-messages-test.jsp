<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>



<html>
<head>
<meta charset="ISO-8859-1">
<title>I18N MULTILIGUAL APP</title>
</head>
<body>
<c:set var="theLocale" 
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" 
scope="session"/>

<fmt:setLocale value="${theLocale}" />

<fmt:setBundle basename="tagdemo.i18n.resources.mylabels" />


<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
 | 
<a href="i18n-messages-test.jsp?theLocale=tl_PH">Philippines (TL)</a>
 |
<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a> 
<br><br>
<fmt:message key="label.greeting" /> <br><br>
<fmt:message key="label.firstname"/>: <i> Marianne </i><br>
<fmt:message key="label.lastname" />: <i> Rario </i><br><br>
<fmt:message key="label.welcome" /> <br>

<hr>
Selected Locale: ${theLocale}
</body>
</html>