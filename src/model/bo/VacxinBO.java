package model.bo;

import java.util.ArrayList;

import model.bean.Vacxin;
import model.dao.VacxinDAO;

public class VacxinBO {

	public VacxinBO() {
	}
	VacxinDAO vacxinDAO = new VacxinDAO();
	public ArrayList<Vacxin> getListVacxin() {
		return vacxinDAO.getListVacxin();
	}
	public Vacxin findVacxinByMaVacxin(int maVacxin) {
		return vacxinDAO.findVacxinByMaVacxin(maVacxin);
	}
	public int editVacxin(Vacxin objVacxin) {
		return vacxinDAO.editVacxin(objVacxin);
	}
	public int addVacxin(Vacxin objVacxin) {
		return vacxinDAO.addVacxin(objVacxin);
	}
	public ArrayList<Vacxin> getUserByTenVacxin(String keyword) {
		return vacxinDAO.getUserByTenVacxin(keyword);
	}
}
