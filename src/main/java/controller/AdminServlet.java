package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.ChiTietVe;
import model.bean.GioChieu;
import model.bean.LichChieu;
import model.bean.LichChieuDetail;
import model.bean.Phim;
import model.bean.PhongChieu;
import model.bean.TheLoai;
import model.bean.Ve;
import model.bean.VeDetail;
import model.bo.AdminBO;
import model.bo.ChiTietVeBO;
import model.bo.GheBO;
import model.bo.GioChieuBO;
import model.bo.LichChieuBO;
import model.bo.PhimBO;
import model.bo.PhongChieuBO;
import model.bo.TheLoaiBO;
import model.bo.VeBO;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/Admin")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminBO adminBO = new AdminBO();
	private PhimBO phimBO = new PhimBO();
	private TheLoaiBO theLoaiBO = new TheLoaiBO();
	private PhongChieuBO phongChieuBO = new PhongChieuBO();
	private LichChieuBO lichChieuBO = new LichChieuBO();
	private GioChieuBO gioChieuBO = new GioChieuBO();
	private VeBO veBO = new VeBO();
	private ChiTietVeBO chiTietVeBO = new ChiTietVeBO();
	private GheBO gheBO = new GheBO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (request.getParameter("username") != null && request.getParameter("password") != null) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			int idAdmin = adminBO.checkLogin(username, password);
			if (idAdmin != -1) {
				HttpSession session = request.getSession();
				session.setAttribute("idAdmin", idAdmin);
			}
		}
		if (request.getParameter("update") != null) {
			int idPhim = Integer.parseInt(request.getParameter("update"));
			Phim p = phimBO.getPhimById(idPhim);
			p.setThoiLuong(request.getParameter("thoiluong"));
			p.setDoTuoi(request.getParameter("dotuoi"));
			Date ngayKhoiChieu = Date.valueOf(request.getParameter("ngaykhoichieu"));
			Date ngayKetThuc = Date.valueOf(request.getParameter("ngayketthuc"));
			p.setNgayKetThuc(ngayKetThuc);
			p.setNgayKhoiChieu(ngayKhoiChieu);
			p.setLinkTrailer(request.getParameter("linktrailer"));
			p.setIdTheLoai(Integer.parseInt(request.getParameter("theloai")));
			p.setDienVien(request.getParameter("dienvien"));
			p.setMoTa(request.getParameter("motaphim"));
			phimBO.update(p);
		}
		if (request.getParameter("add") != null) {
			Phim p = new Phim();
			p.setTenPhim(request.getParameter("tenphim"));
			p.setNhaSanXuat(request.getParameter("nhasanxuat"));
			p.setDaoDien(request.getParameter("daodien"));
			p.setThoiLuong(request.getParameter("thoiluong"));
			p.setDoTuoi(request.getParameter("dotuoi"));
			Date ngayKhoiChieu = Date.valueOf(request.getParameter("ngaykhoichieu"));
			Date ngayKetThuc = Date.valueOf(request.getParameter("ngayketthuc"));
			p.setNgayKetThuc(ngayKetThuc);
			p.setNgayKhoiChieu(ngayKhoiChieu);
			p.setLinkTrailer(request.getParameter("linktrailer"));
			p.setIdTheLoai(Integer.parseInt(request.getParameter("theloai")));
			p.setDienVien(request.getParameter("dienvien"));
			p.setMoTa(request.getParameter("motaphim"));
			p.setQuocGia(request.getParameter("quocgia"));
			int isAdd = phimBO.add(p);
			if (isAdd == 0) {
				request.setAttribute("addfail", isAdd);
			}
		}
		if (request.getParameter("delete") != null) {
			Phim p = phimBO.getPhimById(Integer.parseInt(request.getParameter("delete")));
			int isDelete = phimBO.delete(p);
			if (isDelete == 0) {
				request.setAttribute("deletefail", isDelete);
			}
		}
		if(request.getParameter("TaoLichChieu") != null) {
			LichChieu lichChieu = new LichChieu();
			lichChieu.setIdPhim(Integer.parseInt(request.getParameter("idphim")));
			lichChieu.setGiaVe(Integer.parseInt(request.getParameter("gia")));
			lichChieu.setIdPhong(Integer.parseInt(request.getParameter("idphong")));
			Date chonNgay = Date.valueOf(request.getParameter("chonngay"));
			lichChieu.setNgayChieu(chonNgay);
			lichChieu.setIdGioChieu(Integer.parseInt(request.getParameter("idgiochieu")));
			int isAdd = lichChieuBO.add(lichChieu);
			if (isAdd == 0) {
				request.setAttribute("isadd", "ADD_FAILED");
			}else {
				request.setAttribute("isadd", "ADD_SUCCESS");
			}
		}
		doGet(request, response);
	}

}
