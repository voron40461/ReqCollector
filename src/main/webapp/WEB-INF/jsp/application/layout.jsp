<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tiles:importAttribute name="javascriptsBefore"/>
<tiles:importAttribute name="javascriptsAfter"/>
<tiles:importAttribute name="stylesheets"/>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8">
    <title><tiles:insertAttribute name="title" /></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <c:forEach var="css" items="${stylesheets}">
        <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
    </c:forEach>

    <c:forEach var="script" items="${javascriptsBefore}">
        <script src="<c:url value="${script}"/>"></script>
    </c:forEach>
</head>
<body>
    <div class="container">
        <tiles:insertAttribute name="header" />

        <tiles:insertAttribute name="modal" />

        <tiles:insertAttribute name="body" />
    </div>
    <c:forEach var="script" items="${javascriptsAfter}">
        <script src="<c:url value="${script}"/>"></script>
    </c:forEach>

</body>

</html>