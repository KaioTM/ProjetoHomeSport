/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.homesport.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    static Connection connection;
            
    public static Connection getConnection() throws SQLException {
        if (connection == null ) {
            connection = DriverManager.getConnection("jdbc:derby://localhost:1527/ProjetoWeb", "kteixeira", "123");
        }
        return connection;
    }

}
