package controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Page;
import entity.Product;
import entity.User;
import service.ProductService;
import service.UserService;

@Controller
@RequestMapping("/productCtrl")
public class ProductController {

	@Resource
	private ProductService productService;
	@Resource
	private UserService userService;

	//分页
	@RequestMapping(value = "/Pageindex", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> Pageindex(HttpServletRequest request, Model model, HttpSession session) {
		Page page = new Page();
		page.setPageSize(6);
		//获得总记录数totalCounts
		int totalCounts = productService.proCount();
		//System.out.println(totalCounts);
		//计算总页数totalPages
		int totalPages=(totalCounts%page.getPageSize()==0)?(totalCounts/page.getPageSize()):(totalCounts/page.getPageSize()+1);
		//System.out.println("zongyema"+totalPages);
		int currentPage=1;
		// 如果currentIndex有值 就重新赋值
		if (request.getParameter("currentPage") != null) {
		//	System.out.println(request.getParameter("currentPage"));
			currentPage = Integer.valueOf(request.getParameter("currentPage"));
			//System.out.println(currentPage);
			if (currentPage <= 1) { // 再小不能比首页还小
				currentPage = 1;
			} else if (currentPage >= totalPages) {// 再大不能大过总页码
				currentPage = totalPages;
			}
		}
		//计算出开始页
		int pageStart = (currentPage - 1) * page.getPageSize();
		page.setStartRow(pageStart);
		List<Product> plist = productService.selectProList(page);
		//System.out.println(plist);
//				model.addAttribute("currentPage", currentPage);
		//System.out.println(currentPage);
		session.setAttribute("currentPage", currentPage);
//				model.addAttribute("plist",plist);
		return plist;
	}

	@RequestMapping(value="/getproById", method = RequestMethod.GET)
	@ResponseBody
	public Product selectProductById(HttpServletRequest request) {
		//从jsp获取id
		int pid = Integer.valueOf(request.getParameter("p_id"));
		//test
		//System.out.println(pid);
		Product pd = this.productService.selectByPrimaryKey(pid);
		return pd;
	}

	//删除商品
	@RequestMapping(value="/delProduct", method = RequestMethod.GET)
	public void delProduct(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		//获取id
		int pid = Integer.valueOf(request.getParameter("proid"));
		productService.deleteByPrimaryKey(pid);
		List<Product> plist = productService.selectAllProduct();
		request.getSession().setAttribute("plist", plist);
		response.getWriter().print("<script>alert('已删除！');location='../admin_product_manage.jsp';</script>");
	}

	//单个商品详情
	@RequestMapping(value="/singlePro", method = RequestMethod.GET)
	public String selectbyid(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");

			//获取jsp传递过来的id
			int pid = Integer.valueOf(request.getParameter("pid"));
			//避免用户没有登录出现500的情况
			int uid = 0;
			try {
				uid = Integer.valueOf(request.getParameter("uid"));
			} catch (NumberFormatException e) {
				System.out.println("uid为空");
			}
			//System.out.println(uid);
			//根据id做查询
			Product p = productService.selectByPrimaryKey(pid);
			User u = userService.selectByPrimaryKey(uid);
			//System.out.println(u);
			//System.out.println(p);
			request.getSession().setAttribute("p", p);
			request.getSession().setAttribute("user", u);
			//model.addAttribute("p",p);
			/*while(uid<=0||pid<=0) {
				response.getWriter().print("<script>alert('请先登录！');location='../products.jsp';</script>");
			}*/
			return "single";
	}

	//显示相关产品
	@RequestMapping(value="/relatedPro", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> relatedPro(HttpServletRequest request, Model model, HttpServletResponse response){

		String ptype = request.getParameter("ptype");
		//System.out.println(ptype);
		List<Product> plist = productService.selectByPtype(ptype);
		//System.out.println(plist);

		return plist;
	}

/*	//添加到购物车方法
	@RequestMapping(value="/addtoCart", method = RequestMethod.GET)
	@ResponseBody
	public void addtoCart(HttpServletRequest request, Model model, HttpServletResponse response) {
		int pid = Integer.valueOf(request.getParameter("pid"));
		//int uid = Integer.valueOf(request.getParameter("uid"));
		//System.out.println(pid);
	}*/

	//按类别进行查询
	@RequestMapping(value="/searchBytype", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> searchBytype(HttpServletRequest request, Model model, HttpServletResponse response){

		String protype = request.getParameter("type");
		//int uid = Integer.valueOf(request.getParameter("uid"));
		//System.out.println(uid);
		//System.out.println(ptype);
		List<Product> plist = productService.selectByPtype(protype);
		//System.out.println(plist);

		return plist;
	}
}
