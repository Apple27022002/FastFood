<%--
  Created by IntelliJ IDEA.
  User: S
  Date: 6/6/2022
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product</h1>
<p>
    <a href="/products">Back to student list</a>
</p>
<a href="/products?act=delete&id=${st.id}">xóa</a>
<table>
    <tr>
        <td>Name: </td>
        <td>${st.name}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${st.price}</td>
    </tr>
    <tr>
        <td>Color: </td>
        <td>${st.color}</td>
    </tr>
    <tr>
        <td>Description: </td>
        <td>${st.description}</td>
    </tr>
</table>
</body>
</html>
© 2022 GitHub, Inc.