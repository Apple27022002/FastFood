<%--
  Created by IntelliJ IDEA.
  User: S
  Date: 6/6/2022
  Time: 11:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/categores?act=create">Create</a>

<form action="/categories">
    <input type="text"name="name">
    <button>Click</button>

    <c:forEach items="${ds}" var="p">
        <h2>${p.id},${p.name},<a href="/categores?act=edit&id=${p.id}">Edit</a>,
            <a href="/categores?act=delete&id=${p.id}">Delete</a>
        </h2>
        </h2>
    </c:forEach>
</form>
</body>
</html>
