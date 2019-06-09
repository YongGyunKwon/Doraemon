package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import vo.UserVo;



public class UserDao {
	
	private static UserDao dao = new UserDao();
	private UserDao() {}
	
	public static UserDao getInstance() 
	{
		return dao;
	}
	
	public Connection connect()
	{
		Connection conn = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/doraemon"; //db이름도 바꿔주고
			String user = "root"; //각자 설정한 아이디대로 바꿔주고
			String pwd = "110100"; //각자 비밀번호 설정한대로 바꿔주고
			conn = DriverManager.getConnection(url,user,pwd);
		}
		catch(Exception e)
		{
			System.out.println("Connenction error : " + e);
		}
		return conn;
	}
	public void close(Connection conn, PreparedStatement psmt)
	{
		if(psmt != null)
		{
			try
			{
				psmt.close();
			}
			catch(Exception e)
			{
				System.out.println("close : psmt error : " + e);
			}
		}
		
		if(conn != null)
		{
			try
			{
				conn.close();
			}
			catch(Exception e)
			{
				System.out.println("close : conn error : " + e);
			}
		}
	}
	
	public int InsertUser(UserVo user)
	{
		int result = 0;
		Connection conn = null;
		PreparedStatement psmt = null;
		String sql = null;
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		try
		{
			conn = connect();
			sql = "insert into user(Userid,Password,Email) values(?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,user.getName());
			psmt.setString(2,user.getPassword());
			psmt.setString(3,user.getEmail());
			result = psmt.executeUpdate();		    
		}
		catch(Exception e)
		{
			System.out.println("UserDao : insertUser error : " + e);
		}
		finally 
		{
			close(conn, psmt);
		}
		
		return result;
	}
	
	public int UpdateUser(UserVo user)
	{
		int result = 0;
		Connection conn = null;
		PreparedStatement psmt = null;
		String sql = null;
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		try
		{
			conn = connect();
			sql = "update user set UserId = ?,Password = ? Email = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1,user.getName());
			psmt.setString(2,user.getPassword());
			psmt.setString(3,user.getEmail());
			
			
			
			result = psmt.executeUpdate();		    
		}
		catch(Exception e)
		{
			System.out.println("UserDao : updateUser error : " + e);
		}
		finally 
		{
			close(conn, psmt);
		}
		
		return result;
	}
	
	public UserVo SelectUser(UserVo user)
	{		
		Connection conn = null;
		PreparedStatement psmt = null;
		String sql = null;
		ResultSet rs = null;
		UserVo result = null;		
		try
		{
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			conn = connect();
			sql = String.format("select * from user where Email = %s", "\"" +user.getEmail() + "\"");
			System.out.println(sql);
			psmt = conn.prepareStatement(sql);		
			rs = psmt.executeQuery();			
			while(rs.next())
			{
				result = new UserVo();

				result.setName(rs.getString("name"));
				result.setEmail(rs.getString("email"));
				result.setPassword(rs.getString("password"));				

			}
		}
		catch(Exception e)
		{
			System.out.println("UserDao : selectUser error : " + e);
		}
		finally
		{
			close(conn, psmt);
		}
		return result;
	}
	
	
	
	
	
	public ArrayList<UserVo> selectUsers(UserVo vo) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement psmt = null;
		String sql = null;
		ResultSet rs = null;		
		ArrayList<UserVo> list = null;
		try
		{
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			conn = connect();
			sql = String.format("select * from user");
			psmt = conn.prepareStatement(sql);			
			rs = psmt.executeQuery();
			list = new ArrayList<UserVo>();
			
			while(rs.next())
			{
				UserVo result = new UserVo();
			
				result.setEmail(rs.getString("email"));
				result.setPassword(rs.getString("password"));
				result.setName(rs.getString("name"));
				list.add(result);
			}
		}
		catch(Exception e)
		{
			System.out.println("UserDao : selectUsers error : " + e);
		}
		finally
		{
			close(conn, psmt);
		}
		
		return list;
	}

}