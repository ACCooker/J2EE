package ustc.j2ee.action;

import ustc.j2ee.bean.UserBean;
import ustc.j2ee.service.UserService;
import ustc.j2ee.service.UserServiceImpl;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	public  String successPage;
	private UserService service = new UserServiceImpl();
	private UserBean userBean;
	
	public UserBean getUserBean() {
		return userBean;
	}

	public void setUserBean(UserBean userBean) {
		this.userBean = userBean;
	}

	public String login(){
		System.out.println("-----------------------------------------------------------" );
		System.out.println("-------------------LoginAction的login方法被调用-----------------");
		System.out.println("-----------------------------------------------------------" );
		this.setSuccessPage("/Pages/login_success_" + userBean.getUserType() + ".jsp");
		return service.login(userBean);
	}

	public String getSuccessPage() {
		return successPage;
	}

	public void setSuccessPage(String successPage) {
		this.successPage = successPage;
	}
}
