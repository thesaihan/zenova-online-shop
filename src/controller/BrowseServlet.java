package controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import dao.ProductDao;
import modal.Product;

@WebServlet("/browse")
public class BrowseServlet extends HttpServlet {
	
	@Resource(name = "jdbc/zenova")
	private DataSource dataSource;
	private ProductDao productDao;
	

	@Override
	public void init() throws ServletException {
		this.productDao = new ProductDao(this.dataSource);
	}


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> products = this.productDao.getAll();
		RequestDispatcher rd = req.getRequestDispatcher("/browse.jsp");
		req.setAttribute("products", products);
		rd.forward(req, resp);
	}

}
