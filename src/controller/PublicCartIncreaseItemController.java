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

/**
 * Servlet implementation class PublicCartIncreaseItemController
 */
@WebServlet("/PublicCartIncreaseItemController")
public class PublicCartIncreaseItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublicCartIncreaseItemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		DecimalFormat dcf = new DecimalFormat("###,###");
		HttpSession session = request.getSession();
		if(session.getAttribute("listCart")!=null) {
			ArrayList<Products> listCart = (ArrayList<Products>) session.getAttribute("listCart");
			for(Products product : listCart) {
				if(product.getId()==id) {
					product.setQty(product.getQty()+1);
					product.setTotal(product.getQty()*product.getPrice());
					break;
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
