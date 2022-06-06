<%--
  Created by IntelliJ IDEA.
  User: S
  Date: 6/6/2022
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/products?act=create" method="post">
    <input type="text" name="id">
    <input type="text" name="name">
    <input type="text" name="price">
    <input type="text" name="category">
    <button>Click</button>

</form>
</body>
</html>
