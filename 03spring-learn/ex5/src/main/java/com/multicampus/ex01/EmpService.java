package com.multicampus.ex01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmpService implements IEmpService {
	
	
	@Autowired
	IEmpRepository empRepository;
	
	@Override
	public int getEmpCount() {
		return empRepository.getEmpCount();
	}
	
	@Override
	public int getEmpCount(int deptid) {
		return empRepository.getEmpCount(deptid);
	}
	
	@Override
	public List<EmpVO>getEmpList() {
		return empRepository.getEmpList();
	}
	
	@Override
	public EmpVO getEmpInfo(int empid) {
		return empRepository.getEmpInfo(empid);
	}
	
	
	@Override
	public void deleteEmp(int empid, String email) throws Exception {
		empRepository.deleteEmp(empid, email);
		throw new Exception();
	}
	

	
	
}
