<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Kien
  Date: 09/08/2024
  Time: 2:35 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <a href="/viewadd">Add</a>
   <table border="1px">
       <thead>
       <th>ID</th>
       <th>Tên bài hát</th>
       <th>Giá</th>
       <th>Thời lượng</th>
       <th>Ngày ra mắt</th>
       <th>Ca Sĩ</th>
       <th>Chức Năng</th>
       </thead>
       <c:forEach items="${list}" var="kien">
           <tr>
               <td>${kien.id}</td>
               <td>${kien.ten}</td>
               <td>${kien.gia}</td>
               <td>${kien.thoiLuong}</td>
               <td>${kien.ngayRaMat}</td>
               <td>${kien.caSi.ten}</td>
               <td>
                   <a href="/detail?id=${kien.id}" onclick="return confirm('Bạn muốn xem chi tiết?')">Detail</a>
               </td>
           </tr>

       </c:forEach>
   </table>
  </body>
</html>
