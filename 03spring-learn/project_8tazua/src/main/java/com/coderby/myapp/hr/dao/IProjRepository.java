package com.coderby.myapp.hr.dao;

import java.util.List;
//import java.util.Map;

import com.coderby.myapp.hr.model.ProjVO;

public interface IProjRepository {
	List<ProjVO> getProjList();
	int maxindex();
	void insertProj(ProjVO proj);
	List<ProjVO> searchProj(int t, String sp);
	ProjVO getProjInfo(int cId);
	void updateProj(ProjVO proj);
	void deleteProj(int cId);
}