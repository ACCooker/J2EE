package ustc.j2ee.service;

import java.util.List;

import ustc.j2ee.bean.UserType;
import ustc.j2ee.dao.UserTypeDao;
import ustc.j2ee.dao.UserTypeDaoImpl;

public class UserTypeServiceImpl implements UserTypeService {

	private UserTypeDao dao = new UserTypeDaoImpl();
	@Override
	public List<UserType> getList() {
		return dao.getList();
	}

}
