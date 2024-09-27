<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Kien
  Date: 09/08/2024
  Time: 3:01 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/add" method="post">
    Tên:<input type="text" name="ten"> <br>
  Giá:  <input type="text" name="gia"> <br>
  Thời Lượng:  <input type="text" name="thoiLuong"> <br>
  Ngày Ra Mắt  <input type="date" name="ngayRaMat"> <br>
  Ca Sĩ:  <select name="caSi">
        <c:forEach items="${casi}" var="cs">
            <option value="${cs.id}" label="${cs.ten}"></option>
        </c:forEach>
    </select>

    <button type="submit" onclick="return confirm('Bạn có muốn add không?')">Add</button>

</form>
</body>
</html>
