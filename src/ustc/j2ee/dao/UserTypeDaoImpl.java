package ustc.j2ee.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.ResultSet;

import ustc.j2ee.bean.UserType;
import ustc.j2ee.jdbc.MySqlHelper;

public class UserTypeDaoImpl implements UserTypeDao{

	@Override
	public List<UserType> getList() {
		String sql = "select * from usertype";
		List<UserType> list = new ArrayList<UserType>();
		UserType userType = null;
		MySqlHelper helper = new MySqlHelper();
		ResultSet rs = (ResultSet) helper.executeQuery(sql);
		try {
			while(rs.next()){
				userType = new UserType();
				userType.setTypeName(rs.getString("type"));
				userType.setTypeValue(rs.getString("id"));
				list.add(userType);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
