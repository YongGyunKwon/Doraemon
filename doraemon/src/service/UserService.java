package service;

import java.util.ArrayList;

import dao.UserDao;
import vo.UserVo;

public class UserService {

	private UserDao dao = UserDao.getInstance();
	
	private static UserService service = new UserService();
	
	private UserService() {};
	
	public static UserService getInstance()
	{
		return service;
	}
	
	public int userLogin(UserVo vo)
	{
		int result = 0; //회원존재 x
		UserVo compare = dao.SelectUser(vo);
		if(compare != null)
		{
			if(vo.getPassword().equals(compare.getPassword()))
			{
				result = 1; //로그인 성공
			}
			else
			{
				result = -1; // 비밀번호 틀림
			}
		}
		
		return result;
	}
	
	public int userCreate(UserVo vo)
	{
		return dao.InsertUser(vo);
	}
	
	public UserVo selectUser(UserVo vo)
	{
		return dao.SelectUser(vo);
	}
	
	
	public ArrayList<UserVo> selectUsers(UserVo vo)
	{
		return dao.selectUsers(vo);
	}
	
	
	
}