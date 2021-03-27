<%--
  Created by IntelliJ IDEA.
  User: 许欢
  Date: 2021/3/20
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" acti on="register"><!-- within doPost() in servlet-->
    Username :<input type="text" name="username"><br/>
    Password :<input type="password" name="password"><br/>
    Email :<input type="text" name="email"><br/>
    Gender :<input name="gender" type="radio" value="male">Male
            <input name="gender" type="radio" value="female">Female<br/>
    Date of Birth :<input type="text" name="birthDate"><br/>
    <input type="submit" value="Register">
</form>
</body>
</html>