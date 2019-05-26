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

import entity.P_order;
import service.OrderService;

@Controller
@RequestMapping("/orderCtrl")
public class OrderController {

	@Resource
	private OrderService orderService;

	@RequestMapping(value="/allOrders", method = RequestMethod.GET)
	@ResponseBody
	public List<P_order> getAllOrders() {
		List<P_order> olist = this.orderService.selectAllOrders();
		return olist;
	}
	//根据id做查询
	@RequestMapping(value="/getOrderById",method = RequestMethod.GET)
	@ResponseBody
	public P_order selectOrderById(HttpServletRequest request) {
		//从jsp获取id
		int oid = Integer.valueOf(request.getParameter("o_id"));
		//test
		//System.out.println(oid);
		P_order o = this.orderService.selectByPrimaryKey(oid);
		return o;
	}

	//删除操作
	@RequestMapping(value = "/delOrder", method = RequestMethod.GET)
	public void delOrder(HttpServletRequest request, Model model,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		//获取id
		int d_oid = Integer.valueOf(request.getParameter("orid"));
		//System.out.println(d_oid);
		orderService.deleteByPrimaryKey(d_oid);
		List<P_order> olist = orderService.selectAllOrders();
		request.getSession().setAttribute("olist", olist);
		response.getWriter().print("<script>alert('已刪除！');location='../admin_order_manage.jsp';</script>");
	}

	//创建订单
	@RequestMapping(value = "/showOrder", method = RequestMethod.GET)
	public void doRegister(HttpServletRequest request, Model model, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		int uid = Integer.valueOf(request.getParameter("userid"));
		String pname = request.getParameter("pname");
		String pprice = request.getParameter("pprice");
		String uname = request.getParameter("uname");
		String uaddress = request.getParameter("uaddress");
		String uphone = request.getParameter("uphone");

		P_order o = new P_order(pname, uid, uname, pprice, uaddress, uphone);
		int flag = orderService.insertSelective(o);
		//System.out.println(flag);
		if(flag>0) {
			try {
				response.getWriter().print("<script>alert('您已完成购买!');location='../checkout.jsp';</script>");

			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			try {
				response.getWriter().print("<script>alert('请稍后重试!');location='../checkout.jsp';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	//修改订单信息
	@RequestMapping(value = "/editOrder", method = RequestMethod.GET)
	public void editpro(HttpServletRequest request, Model model,HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		int oid = Integer.valueOf(request.getParameter("oid"));
		String uname = request.getParameter("uname");
		String uphone = request.getParameter("uphone");
		String uaddress = request.getParameter("uaddress");
		P_order order = new P_order(oid, uname, uphone, uaddress);
		int flag = orderService.updateByPrimaryKeySelective(order);
		if(flag>0) {
			//List<Product> plist = productService.selectAllCoach();
			//request.getSession().setAttribute("plist", plist);
			try {
				response.getWriter().print("<script>alert('修改成功!');location='../admin_order_manage.jsp';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			try {
				response.getWriter().print("<script>alert('修改失败!');location='../admin_order_manage.jsp';</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
