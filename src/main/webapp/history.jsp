<%@ page import="com.searches.HistoryResult" %><%--
  Created by IntelliJ IDEA.
  User: Priya
  Date: 25-06-2025
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="com.searches.History" %>
<html>
<head>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: "Arial Rounded MT Bold";
            padding: 30px;
        }
        h1{
            font-family: "Bodoni MT Poster Compressed";
            display: flex;
        }
        table{
            align-items: center;
            margin: 30px;
            padding: 50px;
        }
        table td{
            border: 1px solid gray;
            padding: 40px;
            font-size: 20px;
            border-radius: 30px;
            margin-bottom: 20px;

        }
        a{
            color:white;
            text-decoration: none;
            cursor: pointer;
        }
        span{
            color: red;
            font-size: 20px;
        }
    </style>
    <title>history</title>
</head>
<body>
<br>
<br>
<h1>
    History:
</h1>
<table>
    <tr>
        <td>Searched Words</td>
        <td>Link Visited</td>
    </tr>
    <%
        ArrayList<HistoryResult> results = (ArrayList<HistoryResult>)request.getAttribute("results");
        for (HistoryResult result : results){

    %>
        <tr>
            <td>
                <% out.println(result.getKeyword()); %>
            </td>
            <td>
                <a href="<% out.println(result.getKeyword()); %>">
                    <% out.println(result.getLink()); %>
                </a>
            </td>
        </tr>
<% }%>

</table>
</body>
</html>
