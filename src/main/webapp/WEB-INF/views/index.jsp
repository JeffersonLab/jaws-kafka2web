<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" data-context-path="${pageContext.request.contextPath}" data-app-version="${initParam['releaseNumber']}"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="JLab Alarm Warning System Admin GUI">
    <title>JAWS</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico"/>
    <c:url value="/resources/css/site.css" var="siteCssUrl">
        <c:param name="v" value="${initParam['releaseNumber']}"/>
    </c:url>
    <link rel="stylesheet" href="${siteCssUrl}"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/libs/jquery-ui-1.12.1.smoothness/jquery-ui.min.css">
</head>
<body>
<header>
    <img width="128" height="128" alt="Logo" src="${pageContext.request.contextPath}/resources/img/logo-128.png"/>
    <h1>JAWS</h1>
</header>
<div id="tabs">
    <ul>
        <li><a href="#alarms-panel">Alarms</a></li>
        <li><a href="#notifications-panel">Notifications</a></li>
        <li><a href="#registrations-panel">Registrations</a></li>
        <li><a href="#activations-panel">Activations</a></li>
        <li><a href="#overrides-panel">Overrides</a></li>
        <li><a href="#classes-panel">Classes</a></li>
        <li><a href="#instances-panel">Instances</a></li>
        <li><a href="#locations-panel">Locations</a></li>
        <li><a href="#categories-panel">Categories</a></li>
    </ul>
    <t:panel id="alarms" title="Alarms" model="${model.alarmModel}" editable="false"/>
    <t:panel id="notifications" title="Notifications" model="${model.notificationModel}" editable="false"/>
    <t:panel id="registrations" title="Registrations" model="${model.registrationModel}" editable="false"/>
    <t:panel id="activations" title="Activations" model="${model.activationModel}" editable="false"/>
    <t:panel id="overrides" title="Overrides" model="${model.overrideModel}"/>
    <t:panel id="classes" title="Classes" model="${model.classModel}"/>
    <t:panel id="instances" title="Instances" model="${model.instanceModel}"/>
    <t:panel id="locations" title="Locations" model="${model.locationModel}"/>
    <t:panel id="categories" title="Categories" model="${model.categoryModel}"/>
    <div style="display: none;" id="markdown-to-html"></div>
</div>
<div id="footer-toolbar">
    <button id="reset-button" type="button">Reset</button>
    <div id="version-div">v<c:out value="${initParam['releaseNumber']}"/></div>
</div>
<script src="${pageContext.request.contextPath}/resources/libs/jquery-ui-1.12.1.smoothness/external/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/libs/jquery-ui-1.12.1.smoothness/jquery-ui.min.js"></script>
<script type="module" src="${pageContext.request.contextPath}/resources/modules/page-1.11.6/page.min.mjs"></script>
<script type="module" src="${pageContext.request.contextPath}/resources/modules/dexie-3.2.4/dexie.min.mjs"></script>
<script type="module" src="${pageContext.request.contextPath}/resources/modules/jaws-admin-gui-${initParam['releaseNumber']}/main.mjs"></script>
</body>
</html>