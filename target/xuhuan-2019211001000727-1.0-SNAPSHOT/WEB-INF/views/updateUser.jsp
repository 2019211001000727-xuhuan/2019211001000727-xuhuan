<%--
  Created by IntelliJ IDEA.
  User: 许欢
  Date: 2021/4/24
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1>User Update</h1>
<%
    User u=(User) session.getAttribute("user");
%>
<form method="post" action="updateUser">
    <input type="hidden" name="id" value="<%=u.getId()%>">
    Username:<input type="text" name="Username" value="<%=u.getUsername()%>"><br/>
    password:<input type="password" name="password" value="<%=u.getPassword()%>"><br/>
    Email:<input type="text" name="Email" value="<%=u.getEmail()%>"><br/>
    Gender:<input type="radio" name="Gender" value="Male" <%="Male".equals(u.getGender())?"checked":""%>/> Male
           <input type="radio" name="Gender" value="Female" <%="Female".equals(u.getGender())?"checked":""%>/> Female
    Date of Birth:<input type="date" name="Date" value="<%=u.getBirthdate()%>"><br/>
    <input type="submit" value="Save Changes"/>
</form>
<%@include file="footer.jsp"%>