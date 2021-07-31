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
 * Servlet implementation class PublicCartDecreaseItemController
 */
@WebServlet("/PublicCartDecreaseItemController")
public class PublicCartDecreaseItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PublicCartDecreaseItemController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		DecimalFormat dcf = new DecimalFormat("###,###");
		if (session.getAttribute("listCart") != null) {
			ArrayList<Products> listCart = (ArrayList<Products>) session.getAttribute("listCart");
			for (Products product : listCart) {
				if (product.getId() == id) {
					if (product.getQty() > 1) {
						product.setQty(product.getQty() - 1);
						product.setTotal(product.getQty() * product.getPrice());
					}

					else
						listCart.remove(product);
					break;
				}
			}
			double total = 0;
			String ship = "Free ship";
			for (Products pro : listCart) {
				total += pro.getTotal();
			}
			if (total < 100) {
				total += 30;
				ship = "$30";
			}
			System.out.println(listCart);
			String money = dcf.format(total);

			session.setAttribute("listCart", listCart);
			session.setAttribute("ship", ship);
			session.setAttribute("total", money);
			response.sendRedirect(request.getContextPath() + "/public/cart.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
