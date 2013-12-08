package ustc.j2ee.service;

import ustc.j2ee.bean.UserBean;
import ustc.j2ee.dao.UserDao;
import ustc.j2ee.dao.UserDaoImpl;

public class UserServiceImpl implements UserService{
	
	private UserDao dao = new UserDaoImpl();
	public String login(UserBean userBean ){
		return dao.login(userBean);
	}
}
