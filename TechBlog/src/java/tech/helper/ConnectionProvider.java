/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tech.helper;

import java.sql.*;

/**
 *
 * @author rishabhmaurya
 */
public class ConnectionProvider {
    
    
    public static Connection conn;
    
    public static Connection getConnection()
    {
        try
        {
            if(conn==null)
            {
            Class.forName("org.sqlite.JDBC");
            
            conn=DriverManager.getConnection("jdbc:sqlite:/Users/rishabhmaurya/Documents/spaceEduDatabase/spaceEdu.db");
        }
        
               }
        
        catch(Exception e)
                {
                    e.printStackTrace();
                }
        
        return conn;
    }
    
}
