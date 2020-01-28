package com.coderby.myapp.hr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.hr.dao.IProjRepository;
import com.coderby.myapp.hr.model.ProjVO;

@Service
public class ProjService implements IProjService {

	@Autowired
	IProjRepository projRepository;

	@Override
	public List<ProjVO> getProjList() {
		return projRepository.getProjList();
	}

	@Override
	public ProjVO getProjInfo(int cId) {
		return projRepository.getProjInfo(cId);
	}

	@Override
	public void insertProj(ProjVO proj) {
		projRepository.insertProj(proj);
	}
	
	@Override
	public List<ProjVO> searchProj(int t, String sp) {
		return projRepository.searchProj(t, sp);
	}
	
	@Override
	public int maxindex() {
		return projRepository.maxindex();
	}
	
	@Override
	public void updateProj(ProjVO proj) {
		projRepository.updateProj(proj);
	}
	
	@Override
	public void deleteProj(int cId) {
		projRepository.deleteProj(cId);
	}
	
}