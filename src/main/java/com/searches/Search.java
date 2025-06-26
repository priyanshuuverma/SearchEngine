package com.searches;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/Search")
public class Search extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String keyword = request.getParameter("Keyword");
        Connection connection = DatabaseConnection.getConnection();
        try{
            //store value of search history
            PreparedStatement preparedStatement =  connection.prepareStatement("INSERT INTO history(keyWord, link) values(? ,?)");
            preparedStatement.setString(1,keyword);
            preparedStatement.setString(2,"http://localhost:8080/SearchEngine_Doodle/Search?Keyword=" + keyword.toLowerCase());
            preparedStatement.executeUpdate();



            ResultSet resultSet = connection.createStatement()
                    .executeQuery("SELECT pageTitle, pageLink, (length(pagetext)-length(replace(pagetext,'"+
                            keyword.toLowerCase()+"','')))/length('"+keyword.toLowerCase()+"') as coun from firstTable\n" +
                            "ORDER BY coun desc limit 15;");
           ArrayList<SearchResult> results = new ArrayList<SearchResult>();
           while(resultSet.next()){
                SearchResult searchResult  = new SearchResult();
                searchResult.setTitle(resultSet.getString("pageTitle"));
                searchResult.setLink(resultSet.getString("pageLink"));
                results.add(searchResult);
           }
           for(SearchResult res : results ){
               System.out.println(res.getTitle() + "    " + res.getLink());
           }
           request.setAttribute("results", results);
           request.getRequestDispatcher("/Search.jsp").forward(request,response);
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<h1> This is the keyword you have entered " + keyword + "</h1>");
        } catch (SQLException sqlException){
            sqlException.printStackTrace();
        }
        catch(ServletException servletException){
            servletException.printStackTrace();
        }

    }

}


