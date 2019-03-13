<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:genericpage>

    <jsp:body>

        <h3>Posts</h3>

        <c:forEach var="post" items="${posts}">
            <p>${post.title}</p>
        </c:forEach>

    </jsp:body>

</t:genericpage>