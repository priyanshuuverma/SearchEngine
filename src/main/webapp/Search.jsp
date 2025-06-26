<%@ page import="java.util.ArrayList" %>
<%@ page import="com.searches.SearchResult" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>RESULTS TO YOUR QUERY</title>
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
            font-size: 30px;
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
</head>
<body>
<h1>Results: Top 15   </h1><span> (click to redirect) </span>
    <table>

        <%  ArrayList<SearchResult> results = (ArrayList<SearchResult>)request.getAttribute("results");
            for (SearchResult result : results){
         %>
        <tr>
            <td>

                <a href="<% out.println(result.getLink());%>"><%out.println(result.getTitle());%></a>
            </td>
        </tr>
        <%
            }
        %>


    </table>
</body>
</html>
