<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<t:genericpage>

    <jsp:body>

        <div class="row">
            <div class="col-12">

                <div class="card mt-4">
                    <img src="/resources/images/${post.image}" class="card-img-top" alt="">
                    <div class="card-body">
                        <h5 class="card-title">${post.title}</h5>
                        <p class="card-text">${post.text}</p>
                    </div>
                    <div class="card-footer">
                        ${post.createdBy} at ${post.createdAt}
                    </div>
                </div>


            </div>
        </div>


    </jsp:body>

</t:genericpage>