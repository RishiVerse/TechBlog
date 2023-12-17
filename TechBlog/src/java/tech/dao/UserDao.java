/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
* Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
*/
package tech.dao;
import java.sql.*;
import tech.entities.User;

/**
 *
 * @author rishabhmaurya
 */
public class UserDao {
    
    private Connection conn;
    
    public UserDao(Connection conn) {
        this.conn = conn;
    }
    
    public boolean saveUser(User user)
    {
        boolean flag=false;
        try
        {
            
            String query="insert into users(name,email,password,gender,about) values(?,?,?,?,?)";
            PreparedStatement pstm=this.conn.prepareStatement(query);
            pstm.setString(1,user.getName());
            pstm.setString(2,user.getEmail());
            
            pstm.setString(3,user.getPassword());
            
            pstm.setString(4,user.getGender());
            
            pstm.setString(5,user.getAbout());
            
            pstm.execute();
            flag=true;
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return flag;
    }
    
    public User getUserandPasswordById(String username,String password)
    {
        User user=null;
        try{
            String query="select * from users where email=? and password=?";
            PreparedStatement prep=conn.prepareStatement(query);
            
            prep.setString(1,username);
            prep.setString(2,password);
            ResultSet r=prep.executeQuery();
            
            if(r.next())
            {
                user=new User();
                String users=r.getString("name");
                String emails=r.getString("email");
                String pwd=r.getString("password");
                String genders=r.getString("gender");
                String abouts=r.getString("about");
                
                user.setAbout(abouts);
                
                user.setName(users);
                
                user.setEmail(emails);
                
                user.setPassword(pwd);
                
                user.setGender(genders);
                
                
                
                
                
            }
            
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        
        return user;
    }
    
    
    
}
