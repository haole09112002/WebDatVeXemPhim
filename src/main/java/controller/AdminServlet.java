package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (request.getSession(false) != null) {
			if (request.getSession().getAttribute("idAdmin") != null) {
				if (request.getQueryString() != null && request.getQueryString().equals("ListPhim") != true) {
					if (request.getQueryString().split(":")[0].equals("Xemchitiet")) {
						int idPhim = Integer.parseInt(request.getQueryString().split(":")[1]);
						Phim p = phimBO.getPhimById(idPhim);
						request.setAttribute("phim", p);
						TheLoai tl = theLoaiBO.get(p.getIdTheLoai());
						request.setAttribute("theloai", tl.getTenTheLoai());
						RequestDispatcher rd = request.getRequestDispatcher("/view/Admin/InforPhim.jsp");
						rd.forward(request, response);
					} else if (request.getQueryString().split("=")[0].equals("capnhat")) {
						int idPhim = Integer.parseInt(request.getQueryString().split("=")[1]);
						Phim p = phimBO.getPhimById(idPhim);
						List<TheLoai> listTL = theLoaiBO.getAll();
						String tlPhim = theLoaiBO.get(p.getIdTheLoai()).getTenTheLoai();
						if (p.getNgayKetThuc() == null) {
							p.setNgayKetThuc(Date.valueOf("2000-01-01"));
						}
						if (p.getNgayKhoiChieu() == null) {
							p.setNgayKhoiChieu(Date.valueOf("2000-01-01"));
						}
						request.setAttribute("phim", p);
						request.setAttribute("listtheloai", listTL);
						request.setAttribute("theloai", tlPhim);
						RequestDispatcher rd = request.getRequestDispatcher("/view/Admin/UpdateMovie.jsp");
						rd.forward(request, response);
					} else if (request.getQueryString().split(":")[0].equals("Add")
							|| request.getAttribute("addfail") != null) {
						List<TheLoai> listTL = theLoaiBO.getAll();
						request.setAttribute("listtheloai", listTL);
						RequestDispatcher rd = request.getRequestDispatcher("/view/Admin/CreateMovie.jsp");
						rd.forward(request, response);
					} else if (request.getParameter("LichChieu") != null) {
						List<PhongChieu> listPC = phongChieuBO.getAll();
						request.setAttribute("listphongchieu", listPC);
						if (request.getParameter("chonngay") != null && request.getParameter("tenphong") != null) {
							int idPhong = Integer.parseInt(request.getParameter("tenphong"));
							Date chonNgay = Date.valueOf(request.getParameter("chonngay"));
							List<LichChieu> listLichChieu = lichChieuBO.getLichChieuByNgayChieuIdPhong(chonNgay,
									idPhong);
							List<String> tenPhimSearch = new ArrayList<String>();
							List<LichChieuDetail> listLichChieuDetail = new ArrayList<LichChieuDetail>();
							for (LichChieu i : listLichChieu) {
								LichChieuDetail lCD = new LichChieuDetail(i.getIdLichChieu(), i.getIdPhim(),
										phimBO.getPhimById(i.getIdPhim()).getTenPhim(), i.getIdPhong(),
										phongChieuBO.get(i.getIdPhong()).getTenPhong(), i.getNgayChieu(),
										i.getIdGioChieu(), gioChieuBO.get(i.getIdGioChieu()).getGioChieu(),
										i.getGiaVe());
								listLichChieuDetail.add(lCD);
								tenPhimSearch.add(phimBO.getPhimById(i.getIdPhim()).getTenPhim());
							}
							List<String> listTenPhimSearch = tenPhimSearch
					                .stream()
					                .distinct() 
					                .collect(Collectors.toList());
							request.setAttribute("listTenPhimSearch", listTenPhimSearch);
							request.setAttribute("listlichchieudetail", listLichChieuDetail);
						}
						RequestDispatcher rd = request.getRequestDispatcher("/view/Admin/ScheduleMovie.jsp");
						rd.forward(request, response);
					}  else if(request.getParameter("TaoLichChieu") != null)
					{
						List<Phim> phims = phimBO.getAllPhim();
						List<PhongChieu> phongChieus = phongChieuBO.getAll();
						List<GioChieu> gioChieus = gioChieuBO.getAll();
						request.setAttribute("phims", phims);
						request.setAttribute("phongchieus", phongChieus);
						request.setAttribute("giochieus", gioChieus);
						RequestDispatcher rd = request.getRequestDispatcher("/view/Admin/CreateScheduleMovie.jsp");
						rd.forward(request, response);
						
					}	else if(request.getParameter("DanhSachVe") != null || request.getQueryString().split("=")[0].equals("DanhSachVeTimKiem")) {
						List<ChiTietVe> chiTietVes = chiTietVeBO.getAll();
						List<VeDetail> veDetails = new ArrayList<VeDetail>();
						for(ChiTietVe i : chiTietVes) {
							String tenPhong = phongChieuBO.get(lichChieuBO.get(veBO.get(i.getIdVe()).getIdLichChieu()).getIdPhong()).getTenPhong();
							Date ngayChieu = lichChieuBO.get(veBO.get(i.getIdVe()).getIdLichChieu()).getNgayChieu();
							Time thoiGianChieu = gioChieuBO.get(lichChieuBO.get(veBO.get(i.getIdVe()).getIdLichChieu()).getIdGioChieu()).getGioChieu();
							String tenGhe = gheBO.get(i.getIdGhe()).getTenGhe();
							String soDienThoai = veBO.get(i.getIdVe()).getSoDienThoai();
							VeDetail ve = new VeDetail(i.getIdVe(),veBO.get(i.getIdVe()).getTenKhach(),veBO.get(i.getIdVe()).getSoDienThoai() ,tenPhong , thoiGianChieu, ngayChieu,tenGhe);
							if(request.getParameter("DanhSachVeTimKiem") != null)
							{
								if(request.getParameter("DanhSachVeTimKiem").equals("search"))
								{
									if(request.getParameter("sodienthoai") != null)
									{
										if(soDienThoai.equals(request.getParameter("sodienthoai"))) {
											veDetails.add(ve);
										}
									}
								}else {
									veDetails.add(ve);
								}
							}
							else {
								veDetails.add(ve);
							}
						}
						request.setAttribute("vedetails", veDetails);
						RequestDispatcher rd = request.getRequestDispatcher("/view/Admin/ListVe.jsp");
						rd.forward(request, response);
					}
				} else {
					List<Phim> phims = phimBO.getAllPhim();
					request.setAttribute("phims", phims);
					RequestDispatcher rd = request.getRequestDispatcher("/view/Admin/ListPhim.jsp");
					rd.forward(request, response);
				}
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("/view/Admin/Login.jsp");
				rd.forward(request, response);
			}
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/view/Admin/Login.jsp");
			rd.forward(request, response);
		}
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
