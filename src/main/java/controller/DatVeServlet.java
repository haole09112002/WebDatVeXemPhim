package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.ChiTietVe;
import model.bean.GhePhongChieu;
import model.bean.GioChieu;
import model.bean.LichChieu;
import model.bean.Phim;
import model.bean.PhongChieu;
import model.bean.Ve;
import model.bo.ChiTietVeBO;
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
	private VeBO veBO = new VeBO();
	private ChiTietVeBO chiTietVeBO = new ChiTietVeBO();
    public DatVeServlet() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("idPhim") != null)
		{
			int idPhim = Integer.parseInt(request.getParameter("idPhim")) ;
		if(request.getParameter("ngay") != null && request.getParameter("idPhongChieu") != null 
		&& request.getParameter("idGioChieu") != null)
		{
//			int idPhim = Integer.parseInt(request.getParameter("idPhim"));
			Date ngay = Date.valueOf(request.getParameter("ngay"));
			int idPhong =  Integer.parseInt(request.getParameter("idPhongChieu"));
			int idGioChieu = Integer.parseInt(request.getParameter("idGioChieu"));
			xemCho(idPhim, ngay, idPhong, idGioChieu, request, response);
		}
		else if(request.getParameter("ngay") != null && request.getParameter("idPhongChieu") != null)
		{
			
//			int idPhim = Integer.parseInt(request.getParameter("idPhim"));
			int idPhong =  Integer.parseInt(request.getParameter("idPhongChieu"));
			Date ngay = Date.valueOf(request.getParameter("ngay"));
			viewPhong(idPhim, ngay,idPhong,request,response );
		}
		else if(request.getParameter("ngay") != null )
		{
			Date ngay = Date.valueOf(request.getParameter("ngay"));
			viewDate(idPhim, ngay, request, response);
		}
		else {
			init( idPhim, request,response);
		}
		
		}
		
		if(request.getParameter("ten") != null && request.getParameter("ghe")!= null && request.getParameter("idLichChieu")!=null)
		{
			String tenKhach = request.getParameter("ten");
			int idLichChieu = Integer.parseInt(request.getParameter("idLichChieu"));
			String phone = request.getParameter("phone");
			double tongTien =Double.parseDouble(request.getParameter("total"));
			String listIdGhe = request.getParameter("phone");
			String idGhe[] = listIdGhe.split("%2C");
			List<Integer> idGhes = new ArrayList<>();
			for (int i = 0; i < idGhe.length; i++) {
				idGhes.add(Integer.parseInt(idGhe[i]));
			}
			Ve ve = new Ve(-1, idLichChieu, tenKhach, phone, tongTien);
			if(veBO.add(ve)>0)
			{
				for (int idG : idGhes) {
					chiTietVeBO.add(new ChiTietVe(veBO.getNewIdve(),idG));
				}
				request.setAttribute("msg", "Đặt vé thành công");
				RequestDispatcher rd = request.getRequestDispatcher("/view/Client/DatVe.jsp");
		        rd.forward(request, response);				
			}
			
			
			
			
		}
		
			
			
			
			
			
			
			
			
			
			
			

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	public void init(int idPhim, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
//		int idPhim = Integer.parseInt(request.getParameter("idPhim")) ;
		Phim phim = phimBO.getPhimById(idPhim);

		List<Date> ngayChieus = lichChieuBO.getNgayChieu();
		List<PhongChieu> phongChieus =  phongChieuBO.getPhongChieuByIdPhimNgay(idPhim, ngayChieus.get(0));
		List<GioChieu> giochieus = new ArrayList<GioChieu>();
		if(phongChieus.size() <= 0)
		{
			giochieus = null;
			
		}
		else {
			giochieus = gioChieuBO.getGioChieuByIdPhimNgayIdPhong(idPhim, ngayChieus.get(0), phongChieus.get(0).getIdPhong());
		}
		request.setAttribute("ngayChieus", ngayChieus);
		request.setAttribute("phongChieus", phongChieus);
		request.setAttribute("gioChieus", giochieus);
		request.setAttribute("phim", phim);
		RequestDispatcher rd = request.getRequestDispatcher("/view/Client/DatVe.jsp");
        rd.forward(request, response);
	}
	public void viewDate(int idPhim, Date date, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List<Date> ngayChieus = lichChieuBO.getNgayChieu();
		List<PhongChieu> phongChieus =  phongChieuBO.getPhongChieuByIdPhimNgay(idPhim,date);
		List<GioChieu> giochieus = null;
//		int idPhim = Integer.parseInt(request.getParameter("idPhim")) ;
		Phim phim = phimBO.getPhimById(idPhim);
		if(phongChieus == null || phongChieus.isEmpty())
		{
			giochieus = null;
		}
		else {
			giochieus = gioChieuBO.getGioChieuByIdPhimNgayIdPhong(idPhim, date, phongChieus.get(0).getIdPhong());
		}
		request.setAttribute("ngayChieus", ngayChieus);
		request.setAttribute("phongChieus", phongChieus);
		request.setAttribute("gioChieus", giochieus);
		request.setAttribute("phim", phim);
		request.setAttribute("date", date);
		RequestDispatcher rd = request.getRequestDispatcher("/view/Client/DatVe.jsp");
        rd.forward(request, response);
	}
	public void viewPhong(int idPhim, Date date, int idPhong, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List<Date> ngayChieus = lichChieuBO.getNgayChieu();
		List<PhongChieu> phongChieus =  phongChieuBO.getPhongChieuByIdPhimNgay(idPhim,date);
		List<GioChieu> gioChieus = gioChieuBO.getGioChieuByIdPhimNgayIdPhong(idPhim, date, idPhong);
//		int idPhim = Integer.parseInt(request.getParameter("idPhim")) ;
		Phim phim = phimBO.getPhimById(idPhim);
		request.setAttribute("ngayChieus", ngayChieus);
		request.setAttribute("phongChieus", phongChieus);
		request.setAttribute("gioChieus", gioChieus);
		request.setAttribute("phim", phim);
		request.setAttribute("date", date);
		request.setAttribute("idPhongChieu", idPhong);
		RequestDispatcher rd = request.getRequestDispatcher("/view/Client/DatVe.jsp");
        rd.forward(request, response);
	}
	public void xemCho(int idPhim, Date date, int idPhong, int idGio, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List<Date> ngayChieus = lichChieuBO.getNgayChieu();
		List<PhongChieu> phongChieus =  phongChieuBO.getPhongChieuByIdPhimNgay(idPhim,date);
		List<GioChieu> gioChieus = gioChieuBO.getGioChieuByIdPhimNgayIdPhong(idPhim, date, idPhong);
		Phim phim = phimBO.getPhimById(idPhim);
		
		request.setAttribute("phongChieus", phongChieus);
		request.setAttribute("gioChieus", gioChieus);
	
		List<GhePhongChieu> ghes = gheBO.getGheByIdPhongChieu(idPhong);
		LichChieu lichChieu =	lichChieuBO.getLichChieuByNgayIdPhongIdGio(date, idPhong, idGio);
		List<GhePhongChieu> ghesDaDat = gheBO.getGheDaDatByLichChieu(lichChieu.getIdLichChieu());
		request.setAttribute("ghes", ghes);
		request.setAttribute("ngayChieus", ngayChieus);
		request.setAttribute("ghesDaDat", ghesDaDat);
		request.setAttribute("idlichChieu", lichChieu.getIdLichChieu());
		request.setAttribute("phim", phim);
		request.setAttribute("date", date);
		request.setAttribute("idPhongChieu", idPhong);
		request.setAttribute("idGio", idGio);
//		request.setAttribute("lichChieu", lichChieu);
		RequestDispatcher rd = request.getRequestDispatcher("/view/Client/DatVe.jsp");
        rd.forward(request, response);				
	}
}
