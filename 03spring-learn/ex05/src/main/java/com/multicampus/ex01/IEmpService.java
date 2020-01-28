package com.multicampus.ex01;

import java.util.List;

public interface IEmpService {
	int getEmpCount();
	int getEmpCount(int deptid);
	void deleteEmp(int empid, String email) throws Exception;
	List<EmpVO> getEmpList();
	EmpVO getEmpInfo(int empid);
}
