package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Phim;
import model.bean.TheLoai;
import model.bo.PhimBO;
import model.bo.TheLoaiBO;


/**
 * Servlet implementation class HomeController
 */
@WebServlet("/Home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private PhimBO phimBO = new PhimBO();
    private TheLoaiBO theLoaiBO = new TheLoaiBO();
//    private RapBO rapBO = new RapBO();
    public HomeController() {
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Phim> phims = new ArrayList<>();
		List<TheLoai> theLoais = theLoaiBO.getAll();
		request.setAttribute("theloais", theLoais);
		//load data
		if(request.getParameter("idTheLoai") != null && request.getParameter("txtSearch") != null)
		{	
			int idTheLoai =Integer.parseInt(request.getParameter("idTheLoai"));
			String txtSearch = request.getParameter("txtSearch");
			phims = phimBO.getPhimByNameAndTheLoai(txtSearch, idTheLoai);
		}
		else if(request.getParameter("idTheLoai") != null) {
			int idTheLoai =Integer.parseInt(request.getParameter("idTheLoai"));
			phims = phimBO.getPhimByIdTheLoai(idTheLoai);
		}
		else if(request.getParameter("txtSearch") != null) {
			String txtSearch = request.getParameter("txtSearch");
			phims = phimBO.getPhimByName(txtSearch);
		}
		else {
			phims = phimBO.getAllPhim();
		}
		request.setAttribute("phims", phims);
		
		if(request.getParameter("idPhim") != null)
		{
			int idPhim = Integer.parseInt(request.getParameter("idPhim"));
			request.setAttribute("phim",phimBO.getPhimById(idPhim));
			RequestDispatcher rd = request.getRequestDispatcher("/view/client/DatVe.jsp");
	        rd.forward(request, response);
		}
		phims = phimBO.getAllPhim();
		request.setAttribute("phims", phims);
		RequestDispatcher rd = request.getRequestDispatcher("/view/testview.jsp");
        rd.forward(request, response);
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	public void loadData()
	{
		
	}
}