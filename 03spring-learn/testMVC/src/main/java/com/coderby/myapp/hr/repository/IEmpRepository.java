package com.coderby.myapp.hr.repository;

import java.util.List;
import java.util.Map;

import com.coderby.myapp.hr.model.EmpVO;

public interface IEmpRepository {
	int getEmpCount();
	int getEmpCount(int deptid);
	List<EmpVO> getEmpList();
	EmpVO getEmpInfo(int empid);
}