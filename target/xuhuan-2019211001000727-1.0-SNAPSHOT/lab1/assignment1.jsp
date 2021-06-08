<%@ page import="com.lab1.Person" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.lab1.Dog" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/15/2021
  Time: 9:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Assignemnt1</title>
</head>
<body>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<h1>use c:forEach to print 1 to 10</h1>

    <ul>
        <c:forEach var="i" begin="1" end="10">
        <li>${i}</li>
        </c:forEach>
    </ul>
<h1>use c:forEach to print 1,3,5,7,9</h1>
    <ul>
        <c:forEach var="i" begin="1" end="10" step="2">
        <li>${i}</li>
        </c:forEach>
    </ul>
<h1>use c:forEach to print 2,4,6,8,10</h1>
    <ul>
        <c:forEach var="i" begin="2" end="10" step="2">
            <li>${i}</li>
        </c:forEach>
    </ul>



<% String[] words ={"one","two","three","four","five","six","seven","eight","nine","ten"};
   pageContext.setAttribute("words", words);
%>
<h1>use c:forEach to print all elements of array</h1>
    <ul>
        <c:forEach var="word" items="${words}">
            <li>${word}</li>
        </c:forEach>
    </ul>
<h1>use c:forEach to print "one","three","five","seven","nine" of array</h1>
    <ul>
        <c:forEach var="word" items="${words}" step="2">
            <li>${word}</li>
        </c:forEach>
    </ul>

<%
List<Person> personList=new ArrayList<Person>();
personList.add(new Person("Tom",new Dog("Tommy")));
personList.add(new Person("Sam",new Dog("Sammy")));
personList.add(new Person("Asd",new Dog("Asdmy")));
personList.add(new Person("Zcf",new Dog("Zcfmy")));
personList.add(new Person("Xgt",new Dog("Xgtmy")));
personList.add(new Person("Qnh",new Dog("Qnhmy")));
    request.setAttribute("AllPerson",personList);
%>
<h1>use c:forEach to print Person name: and Person's dos name: </h1>
    <ul>
        <c:forEach var="a" items="${AllPerson}">
            <li>Person name: ${a.name}，Dog name: ${a.dog.name}</li>
        </c:forEach>
    </ul>
<%
    String str="one:two:three-four-five";
%>
<h1>use c:forTokens to print all words</h1>
    <c:forTokens items="<%=str%>" delims="," var="Allwords">
        <li><c:out value="${Allwords}"/></li>
    </c:forTokens>

</body>
</html>
