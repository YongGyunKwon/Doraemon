package User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class UserDAO {
	private Connection conn;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public UserDAO(){
		try {
			String dbURL="jdbc:mysql://localhost:3306/ddd";
			String dbID="root";
			String dbPassword="110100";
			Class.forName("com.mysql.jdbc.Driver");
			
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public int login(String userID,String userPassword) {
		String SQL="SELECT userPassword FROM WHERE userID = ?";
		try {
			pstat=conn.prepareStatement(SQL);
			pstat.setString(1,userID);
			rs=pstat.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) 
					return 1; //로그인 성공
				else
					return 0; //비밀번호 오류
			
			}
			return -1; //아이디가 없음
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //db오류
	}
	
	public int join(User user) {
		String SQL="INSERT INTO USER VALUES (?,?,?,?)";
		try {
			pstat=conn.prepareStatement(SQL);
			pstat.setString(1,user.getUserID());
			pstat.setString(2,user.getUserPassword());
			pstat.setString(3,user.getUserName());
			pstat.setString(4,user.getUserEmail());		
			return pstat.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 1;
	}
}
