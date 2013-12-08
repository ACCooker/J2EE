package ustc.j2ee.action;

import java.util.List;

import ustc.j2ee.bean.UserType;
import ustc.j2ee.service.UserTypeService;
import ustc.j2ee.service.UserTypeServiceImpl;

public class TypeAction {
	private UserTypeService service = new UserTypeServiceImpl();
	private List<UserType> listType;
	
	public String getList() throws Exception {
		System.out.println("--------------------------------------------------------------------------------------");
		System.out.println("-------------------------------TypeAction的getList方法被调用-------------------------------");
		System.out.println("--------------------------------------------------------------------------------------");
		this.setListType(service.getList());
        return "success";
    }
	
	public List<UserType> getListType() {
		return listType;
	}

	public void setListType(List<UserType> listType) {
		this.listType = listType;
	}
}
