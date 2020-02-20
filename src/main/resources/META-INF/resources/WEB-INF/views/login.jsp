<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<form action="/login" method="post">
    <div>
        User Name
        <input id="username" type="text" name="username"/>
    </div>
    <div>
        Password
        <input id="password" type="password" name="password"/>
    </div>
    <div>
        <input type="submit" value="Sign In"/>
    </div>

    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>
