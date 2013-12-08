package ustc.j2ee.service;

import ustc.j2ee.bean.UserBean;
import ustc.j2ee.dao.UserDao;
import ustc.j2ee.dao.UserDaoImpl;

public interface UserService {
	public String login(UserBean userBean );
}
