package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Cart;
import entity.Product;
import entity.User;
import service.CartService;
import service.ProductService;
import service.UserService;

@Controller
@RequestMapping("/cartCtrl")
public class CartController {

	@Resource
	private UserService userService;
	@Resource
	private CartService cartService;
	@Resource
	private ProductService productService;

	@RequestMapping(value="/addToCart",method = RequestMethod.GET)
	@ResponseBody
	public void addToCart(HttpServletRequest request, Model model, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		int pid = Integer.valueOf(request.getParameter("pid"));
		//int userid = Integer.valueOf(request.getParameter("uid"));
		int userid = 0;
		try {
			userid = Integer.valueOf(request.getParameter("uid"));
		} catch (NumberFormatException e) {
			try {
				response.getWriter().print("<script>alert('请您先进行登录！');location='../single.jsp';</script>");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		//System.out.println(pid);
		//System.out.println(userid);
		Product p = this.productService.selectByPrimaryKey(pid);
		//System.out.println(p.getPid());
		String pname = p.getPname();
		String pimg = p.getPimg();
		String pprice = p.getPprice();
		//把信息插入到Cart表
		Cart cart = new Cart(userid,pname,pimg,pprice);
		int flag = cartService.insert(cart);
		//System.out.println("charujieguo" +flag);
		if(flag>0&&userid!=0) {
			try {
				request.getSession().setAttribute("cart", cart);
				response.getWriter().print("<script>alert('已添加至购物车');location='../checkout.jsp';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	@RequestMapping(value="/selectCart", method = RequestMethod.GET)
	@ResponseBody
	public List<Cart> selectCart(HttpServletRequest request, Model model, HttpServletResponse response) {
		//从jsp获取id
		int uid = Integer.valueOf(request.getParameter("u_id"));
		//test
		//System.out.println(uid);
		List<Cart> clist = this.cartService.selectByUserid(uid);
		return clist;
	}

	@RequestMapping(value="/delProFromCart", method = RequestMethod.GET)
	public void delProduct(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		//获取pname
		String pname = request.getParameter("pname");
		//System.out.println(pname	);
		int flag = cartService.deleteByPname(pname);
		//List<Cart> plist = productService.selectAllProduct();
		//request.getSession().setAttribute("plist", plist);
		if(flag>0) {
			response.getWriter().print("<script>alert('已从您的购物车中删除');location='../checkout.jsp';</script>");
		}
	}
	//生成订单信息
	@RequestMapping(value="/getOrderInfo", method = RequestMethod.GET)
	@ResponseBody
	public Map<Object,Object> getOrderInfo(HttpServletRequest request, Model model, HttpServletResponse response) {
		//从jsp获取id
		int uid = Integer.valueOf(request.getParameter("uid"));
		String pname = request.getParameter("pname");
		//test
		//System.out.println(uid);
		//System.out.println(pname);
		User u = this.userService.selectByPrimaryKey(uid);
		Product p = this.productService.selectByPname(pname);

		Map<Object, Object> map = new HashMap<>();
		map.put("user", u);
		map.put("pro1", p);
		//System.out.println(map);
		return map;
	}
}
