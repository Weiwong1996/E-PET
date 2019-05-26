package controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.User;
import service.UserService;

@Controller
@RequestMapping("/userCtrl")
public class UserController {
	@Resource
	private UserService userService;

/*	//查询所有的用户
	@RequestMapping(value="/allUser", method = RequestMethod.GET)
	@ResponseBody
	public List<User> getAllUser() {
		List<User> ulist = this.userService.selectAllUsers();
		return ulist;
	}*/
	//根据id做查询
	@RequestMapping(value="/getUserById",method = RequestMethod.GET)
	@ResponseBody
	public User selectUserById(HttpServletRequest request) {
		//从jsp获取id
		int uid = Integer.valueOf(request.getParameter("user_id"));
		//test
		//System.out.println(uid);
		User u = this.userService.selectByPrimaryKey(uid);
		return u;
	}
	//删除操作
	@RequestMapping(value = "/delUser", method = RequestMethod.GET)
	public void delUser(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		//获取id
		int uid = Integer.valueOf(request.getParameter("userid"));
		userService.deleteByPrimaryKey(uid);
		List<User> ulist = userService.selectAllUsers();
		request.getSession().setAttribute("ulist", ulist);
		response.getWriter().print("<script>alert('删除成功!!!');location='../admin_user_manage.jsp';</script>");
	}
	//user login
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public void doLogin(HttpServletRequest request, Model model, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("uname");
		String userpwd = request.getParameter("upwd");
		//System.out.println(username+" "+userpwd);
		//获得登录的name和pwd
		User u = new User(username,userpwd);
		//boolean user exists?
		boolean flag = userService.doLogin(u);
		//System.out.println(flag);
		//通过登录名获得信息
		User user = userService.getUseridByUname(username);
		//request.getSession().setAttribute("user", user);
		if(flag) {
					try {
						request.getSession().setAttribute("user", user);
						response.getWriter().print("<script>alert('欢迎您!');location='../products.jsp';</script>");
					} catch (IOException e) {
						e.printStackTrace();
					}
		}else {
			//用户不存在或密码错误
			try {
				response.getWriter().print("<script>alert('用户名不存在或密码错误!');location='../index.jsp';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	//用户注册
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public void doRegister(HttpServletRequest request, Model model, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("uname");
		String uemail = request.getParameter("uemail");
		String upwd = request.getParameter("upwd");
		String upwd1 = request.getParameter("upwd1");
		String uaddress = request.getParameter("uaddress");
		String uphone = request.getParameter("uphone");

		User u = new User(username, uemail, uphone,uaddress,upwd);
		int flag = userService.insert(u);
		//System.out.println(flag);
		if(flag>0) {
			if(upwd.equals(upwd1)&&username!=""&&uaddress!="") {
					try {
						response.getWriter().print("<script>alert('注册成功!');location='../index.jsp';</script>");
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}else {
					try {
						response.getWriter().print("<script>alert('输入不规范/两次密码不一致，请重试!');location='../account.jsp';</script>");
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
		}else {
			try {
				response.getWriter().print("<script>alert('请稍后重试!');location='../account.jsp';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	//修改个人信息
	@RequestMapping(value = "/updateUser", method = RequestMethod.GET)
	public void editpro(HttpServletRequest request, Model model,HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		int uid = Integer.valueOf(request.getParameter("uid"));
		String uname = request.getParameter("uname");
		String uemail = request.getParameter("uemail");
		String upwd = request.getParameter("upwd");
		String uaddress = request.getParameter("uaddress");
		String uphone = request.getParameter("uphone");
		User u = new User(uid, uname, uemail, upwd, uaddress,uphone);
		int flag = userService.updateByPrimaryKeySelective(u);
		if(flag>0) {
			try {
				response.getWriter().print("<script>alert('修改成功!');location='../checkout.jsp';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			try {
				response.getWriter().print("<script>alert('修改失败!');location='../checkout.jsp';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
