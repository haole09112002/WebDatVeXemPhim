package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.GhePhongChieu;
import model.bean.GioChieu;
import model.bean.LichChieu;
import model.bean.Phim;
import model.bean.PhongChieu;
import model.bo.GheBO;
import model.bo.GioChieuBO;
import model.bo.LichChieuBO;
import model.bo.PhimBO;
import model.bo.PhongChieuBO;
import model.bo.VeBO;
import model.dao.PhongChieuDAO;


@WebServlet("/DatVe")
public class DatVeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private LichChieuBO lichChieuBO = new LichChieuBO();
	private GioChieuBO gioChieuBO = new GioChieuBO();
	private PhongChieuBO phongChieuBO = new PhongChieuBO();
	private PhimBO phimBO = new PhimBO();
	private GheBO gheBO = new GheBO();
//	private VeBO veBO = new VeBO();
    public DatVeServlet() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("idPhim") != null)
		{
			int idPhim = Integer.parseInt(request.getParameter("idPhim")) ;
			Phim phim = phimBO.getPhimById(idPhim);

			List<Date> ngayChieus = lichChieuBO.getNgayChieu();
			List<PhongChieu> phongChieus =  phongChieuBO.getPhongChieuByIdPhimNgay(idPhim, ngayChieus.get(0));
			List<GioChieu> giochieus = gioChieuBO.getGioChieuByIdPhimNgayIdPhong(idPhim, ngayChieus.get(0), phongChieus.get(0).getIdPhong());
			
			Date ngayChieu  = ngayChieus.get(0);
			int idPhongChieu = phongChieus.get(0).getIdPhong();
			int idGioChieu = giochieus.get(0).getIdGioChieu();
			
			if(request.getParameter("ngay") != null && request.getParameter("idPhongChieu") != null 
					&& request.getParameter("idGioChieu") != null && request.getParameter("add") != null)
			{
				//lay du dieu ghe
				ngayChieu = Date.valueOf(request.getParameter("ngay") );
				idPhongChieu =Integer.parseInt(request.getParameter("idPhongChieu")) ;
				idGioChieu = Integer.parseInt(request.getParameter("idGioChieu"));
				LichChieu lichChieu =	lichChieuBO.getLichChieuByNgayIdPhimIdGio(ngayChieu, idPhongChieu, idGioChieu);
				
				
//				phongChieuBO.getPhongChieuByIdPhimNgay(idPhim, ngayChieu);
				List<GhePhongChieu> ghes = gheBO.getGheByIdPhongChieu(idPhongChieu);
				List<GhePhongChieu> ghesDaDat = gheBO.getGheDaDatByLichChieu(lichChieu.getIdLichChieu());
				
				request.setAttribute("ghes", ghes);
				request.setAttribute("ghesDaDat", ghesDaDat);
				request.setAttribute("lichChieu", lichChieu);
				request.setAttribute("phim", phim);
				RequestDispatcher rd = request.getRequestDispatcher("/view/...");
		        rd.forward(request, response);				
			}
			if(request.getParameter("ngay") != null && request.getParameter("idPhongChieu") != null 
					&& request.getParameter("idGioChieu") != null)
			{
				//tim kiem 3 tham so
				ngayChieu = Date.valueOf(request.getParameter("ngay") );
				idPhongChieu =Integer.parseInt(request.getParameter("idPhongChieu")) ;
				idGioChieu = Integer.parseInt(request.getParameter("idGioChieu"));
				
			
			}
			if(request.getParameter("ngay") != null && request.getParameter("idPhongChieu") != null )
			{
				ngayChieu = Date.valueOf(request.getParameter("ngay") );
				idPhongChieu =Integer.parseInt(request.getParameter("idPhongChieu")) ;
				idGioChieu =gioChieuBO.getGioChieuByIdPhimNgayIdPhong(idPhim, ngayChieu,idPhongChieu).get(0).getIdGioChieu();
			}
			if(request.getParameter("ngay") != null )
			{
				ngayChieu = Date.valueOf(request.getParameter("ngay") );
				idPhongChieu =phongChieuBO.getPhongChieuByIdPhimNgay(idPhim, ngayChieu).get(0).getIdPhong();
				idGioChieu =gioChieuBO.getGioChieuByIdPhimNgayIdPhong(idPhim, ngayChieu,idPhongChieu).get(0).getIdGioChieu();
			}
			ngayChieus = lichChieuBO.getNgayChieu();
			phongChieus =  phongChieuBO.getPhongChieuByIdPhimNgay(idPhim, ngayChieu);
			giochieus = gioChieuBO.getGioChieuByIdPhimNgayIdPhong(idPhim, ngayChieu, idGioChieu);
			
			request.setAttribute("ngayChieus", ngayChieus);
			request.setAttribute("phongChieus", phongChieus);
			request.setAttribute("gioChieus", giochieus);
			RequestDispatcher rd = request.getRequestDispatcher("/view/...");
	        rd.forward(request, response);
		}
		else {
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
