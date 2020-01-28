package com.coderby.myapp.hr.repository;

import java.util.List;
import java.util.Map;

import com.coderby.myapp.hr.model.CustVO;

public interface ICustRepository {
	int getCustCount();
	int getCustCount(int deptid);
	List<CustVO> getCustList();
	CustVO getCustInfo(int custid);
}