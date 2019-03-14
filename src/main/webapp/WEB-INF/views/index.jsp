<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<t:genericpage>

    <jsp:body>

        <c:forEach var="post" items="${posts}">

            <div class="card" style="width: 18rem;">
                <img src="/resources/images/${post.image}" class="card-img-top" alt="">
                <div class="card-body">
                    <h5 class="card-title">${post.title}</h5>
                    <p class="card-text">${post.text}</p>
                    <a href="/post/${post.slug}" class="btn btn-primary">Read More</a>
                </div>
            </div>
        </c:forEach>

    </jsp:body>

</t:genericpage>