package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import model.bean.Products;

/**
 * Servlet implementation class PublicCartRemoveItemController
 */
@WebServlet("/PublicCartRemoveItemController")
public class PublicCartRemoveItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublicCartRemoveItemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		if(session.getAttribute("listCart")!=null) {
			ArrayList<Products> listCart = (ArrayList<Products>) session.getAttribute("listCart");
			for(Products product : listCart) {
				if(product.getId()==id) {
					listCart.remove(product);
					break;
				}
			}
			// tính tổng tiền hàng
			double total = 0;
			for(Products pro : listCart) {
				total+= pro.getTotal();
			}
			System.out.println(listCart);
			
			
			session.setAttribute("listCart", listCart);
			session.setAttribute("total", total);
			response.sendRedirect(request.getContextPath()+"/public/cart.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
