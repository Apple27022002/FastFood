<%--
  Created by IntelliJ IDEA.
  User: S
  Date: 6/6/2022
  Time: 11:19 AM
  To change this template use File | Settings | File Templates.
--%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/products?act=create">Create</a>

<form action="/products">
    <input type="text" name="name">
    <button>Click</button>
</form>

<c:forEach items="${ds}" var="dsc">
    <h2>${dsc.id},${dsc.name},${dsc.price},${dsc.category.getName()}
        <a href="/products?act=edit&id=${p.id}">Edit</a>,
        <a href="/products?act=deleteForm&id=${p.id}">Delete</a>
    </h2>

</c:forEach>

</body>
</html>

