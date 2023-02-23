package cn.techtutorial.dao;

import java.sql.*;
import cn.techtutorial.model.*;

public class RegisterDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;
   

	public RegisterDao(Connection con) {
		this.con = con;
	}
	
	public User register(String email, String password, String username, String phoneno) {
		User user = null;
		
        try {
        	//      String query = "INSERT INTO CourseDemo(CourseId, StudentName, CourseName)" + "VALUES (?, ?, ?)";

        	query = "INSERT INTO users(name, phoneno, email, password)" + "VALUES (?, ?, ?,?)"; 
        	
        	  pst = this.con.prepareStatement(query);
        	  pst.setString(1, username);
              pst.setString(2, phoneno);
              pst.setString(3, email);
              pst.setString(4, password);
              int status = pst.executeUpdate();
              if(status > 0) {
                  //System.out.println("Record is inserted successfully !!!");
                  user = new User();
              	user.setName(username);
              	user.setEmail(email);
              	user.setName(phoneno);
              	user.setEmail(password);
               }
        	
          
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return user;
    }
}
