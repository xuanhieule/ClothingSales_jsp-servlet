package controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Products;
import model.dao.ProductsDao;

/**
 * Servlet implementation class PublicCartController
 */
@WebServlet("/PublicCartController")
public class PublicCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<Products> listCart = new ArrayList<Products>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublicCartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("listCart", listCart);
		response.sendRedirect("/public/cart.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		DecimalFormat dcf = new DecimalFormat("###,###");
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		int qty = Integer.parseInt(request.getParameter("qty"));
		ProductsDao proDao = new ProductsDao();
		Products product = proDao.getProductById(id);
		
		boolean check = false;
		if(product!=null) {
			if(listCart.size()>0) {
				for(Products procheck : listCart) {
					if(procheck.getId() == id) {
						procheck.setQty(procheck.getQty()+qty);
						procheck.setTotal(procheck.getQty()*procheck.getPrice());
						check = true;
						break;
					}
				}
			}
			if (!check) {
				Products proCart = new Products(product.getId(), product.getName(),product.getImage(),product.getPrice(), qty);
				listCart.add(proCart);
			}
		}
	
		// tính tổng tiền hàng
		double total = 0;
		String ship = "Miễn phí";
		for(Products pro : listCart) {
			total+= pro.getTotal();
		}
		if(total<300000) {
			total+=30000;
			ship = "30000 VNĐ";
		}
		System.out.println(listCart);
		String money = dcf.format(total);
		
		
		session.setAttribute("listCart", listCart);
		session.setAttribute("ship", ship);
		session.setAttribute("total", money);
		response.sendRedirect(request.getContextPath()+"/public/cart.jsp");
		
		
	}

}
