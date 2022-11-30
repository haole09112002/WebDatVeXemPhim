package model.bo;

import java.util.List;

import model.bean.Rap;
import model.dao.RapDAO;

public class RapBO {
	private RapDAO rapDAO = new RapDAO();
	
	public List<Rap> getAll()
	{
		return rapDAO.getAll();
	}
	public Rap get(int id)
	{
		return rapDAO.get(id);
	}
}
