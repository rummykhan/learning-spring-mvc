<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Web App</title>

    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss"/>

    <spring:url value="/resources/js/jquery.min.js" var="jQuery"/>
    <spring:url value="/resources/js/popper.min.js" var="popperJs"/>
    <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs"/>

    <link href="${bootstrapCss}" rel="stylesheet"/>

</head>

<body class="container">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Java</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contact Us</a>
            </li>

        </ul>

    </div>
</nav>

<div id="body">
    <jsp:doBody/>
</div>

<p id="copyright">Copyright 1927, Future Bits When There Be Bits Inc.</p>

<script src="${jQuery}" type="text/javascript"></script>
<script src="${popperJs}" type="text/javascript"></script>
<script src="${bootstrapJs}" type="text/javascript"></script>
</body>
</html>