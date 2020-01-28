package com.coderby.myapp.hr.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.hr.model.CustVO;
import com.coderby.myapp.hr.repository.ICustRepository;

@Service
public class CustService implements ICustService {

	@Autowired
	ICustRepository custRepository;
	
	@Override
	public int getCustCount() {
		return custRepository.getCustCount();
	}

	@Override
	public int getCustCount(int deptid) {
		return custRepository.getCustCount(deptid);
	}

	@Override
	public List<CustVO> getCustList() {
		return custRepository.getCustList();
	}

	@Override
	public CustVO getCustInfo(int custid) {
		return custRepository.getCustInfo(custid);
	}
}