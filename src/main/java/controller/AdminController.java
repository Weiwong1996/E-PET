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

import entity.Admin;
import entity.Product;
import entity.User;
import service.AdminService;
import service.ProductService;
import service.UserService;

@Controller
@RequestMapping("/adminCtrl")
public class AdminController {
	//注入service
	@Resource
	private AdminService adminService;
	@Resource
	private UserService userService;
	@Resource
	private ProductService productService;

	//管理员登录
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public void doLogin(HttpServletRequest request, Model model, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		String adminname = request.getParameter("aname");
		String adminpwd = request.getParameter("apwd");
		//获得登录的name和pwd
		Admin a = new Admin(adminname,adminpwd);
		//boolean admin exists?
		boolean flag = adminService.doLogin(a);
		//通过用户名获取管理员的信息
		Admin admin = adminService.getAdminIdByAname(adminname);
		request.getSession().setAttribute("admin", admin);
		if(flag) {
					try {
						/*List<User> ulist = userService.selectAllUsers();
						request.getSession().setAttribute("ulist", ulist);*/
						response.getWriter().print("<script>alert('欢迎管理员!');location='../admin_index.jsp';</script>");
					} catch (IOException e) {
						// TODO Auto-generated catch block
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

	//查询所有的商品
	@RequestMapping(value="/allProduct", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> getAllProduct() {
		List<Product> plist = this.productService.selectAllProduct();
		return plist;
	}

	//查询所有的用户
	@RequestMapping(value="/allUser", method = RequestMethod.GET)
	@ResponseBody
	public List<User> getAllUser() {
		List<User> ulist = this.userService.selectAllUsers();
		return ulist;
	}

	//添加商品
	@RequestMapping(value = "/addproduct", method = RequestMethod.POST)
	public void doRegister(HttpServletRequest request, Model model, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		String pname = request.getParameter("pname");
		String pimg = request.getParameter("pimg");
		String pprice = request.getParameter("pprice");
		String pinfo = request.getParameter("pinfo");
		String ptype = request.getParameter("ptype");
		String pstatu = request.getParameter("pstatu");

		Product pro = new Product(pname,pimg,pprice,ptype,pinfo,pstatu);
		int flag = productService.insert(pro);
		//System.out.println(flag);
		if(flag>0) {
			try {
				response.getWriter().print("<script>alert('已添加!');location='../admin_product_manage.jsp';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			try {
				response.getWriter().print("<script>alert('输入格式有误，请重新添加！');location='../admin_add_prodcut.jsp';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	//修改商品信息
	@RequestMapping(value = "/editPro", method = RequestMethod.GET)
	public void editpro(HttpServletRequest request, Model model,HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		int pid = Integer.valueOf(request.getParameter("pid"));
		String pname = request.getParameter("pname");
		String ptype = request.getParameter("ptype");
		String pprice = request.getParameter("pprice");
		String pinfo = request.getParameter("pinfo");
		Product pro = new Product(pid, pname, pprice, ptype, pinfo);
		int flag = productService.updateByPrimaryKeySelective(pro);
		if(flag>0) {
			//List<Product> plist = productService.selectAllCoach();
			//request.getSession().setAttribute("plist", plist);
			try {
				response.getWriter().print("<script>alert('修改成功!');location='../admin_product_manage.jsp';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			try {
				response.getWriter().print("<script>alert('修改失败!');location='../admin_product_manage.jsp';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	//首页上的查询
	@RequestMapping(value="/index_search", method = RequestMethod.GET)
	@ResponseBody
	public void  index_search(HttpServletRequest request, Model model,HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		String stuff = request.getParameter("stuff");
		if(stuff.equals("商品")) {
			try {
				response.getWriter().print("<script>location='../products.jsp';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(stuff.equals("地址")) {
			try {
				response.getWriter().print("<script>location='../contact.jsp';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
