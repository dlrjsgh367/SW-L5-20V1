<%@page import="task2.ProductInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="task2.UserInfo" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="style.css">  
</head>
<body>
  <% 
    request.setCharacterEncoding("UTF-8");
    
    UserInfo userInfo = new UserInfo("한국인", "1004", "2019-10-31");
    ProductInfo productInfo = new ProductInfo();
    productInfo.setCode(request.getParameter("code"));
    productInfo.find();
  %>
  <div class="container fd-col">
    <h2 class="ta-c">제품코드 조회 결과 </h2>
    <table>
      <tr>
        <td colspan="2">제조사 조회 결과</td>
      </tr>
      <tr>
        <td>제품코드</td>
        <td><%= productInfo.getCode() %></td>
      </tr>
      <tr>
        <td>제조사명</td>
        <td><%= productInfo.getVender() %></td>
      </tr>
      <tr>
        <td>조회일시</td>
        <td><%= productInfo.getDate() %></td>
      </tr>
    </table>
    <div>작성자: <%= userInfo.getName() %> 비번: <%= userInfo.getPassword() %> 작성일 <%= userInfo.getDate() %></div>
  </div>
</body>
</html>