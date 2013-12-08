package ustc.j2ee.dao;

import ustc.j2ee.bean.UserBean;
import ustc.j2ee.jdbc.MySqlHelper;

public class UserDaoImpl implements UserDao{
	public String login(UserBean userBean ){
		MySqlHelper helper = new MySqlHelper();
		String sql = "select * from users where username='" + userBean.getUserName()
				+ "' and password='" + userBean.getPassward() + "' and userType='" + userBean.getUserType() + "'";
		if (helper.getAllCount(sql) > 0) {
			return "success";
//			if(userBean.getUserType().equals("1")){
//				return "success_1";
//			}else {
//				return "success_2";
//			}
		} else {
			return "fail";
		}
	}
	
}
