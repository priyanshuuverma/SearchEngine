package com.searches;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

class DatabaseConnection {
    static Connection connection = null;

    public static Connection getConnection() {
        if (connection != null) {
            return connection;
        }

        String user = "root";
        String pwd = "123456789";
        String db = "searchEngineDoggle";

        return getConnection(user, pwd, db);
    }

    private static Connection getConnection(String user, String pwd, String db) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url ="jdbc:mysql://localhost:3306/" + db + "?user=" + user + "&password=" + pwd;
            connection = DriverManager.getConnection(url);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }

        return connection;
    }
}
