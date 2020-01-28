package com.coderby.myapp.hr.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.coderby.myapp.hr.model.CustVO;
import com.coderby.myapp.hr.service.ICustService;

@Controller
public class CustController {

	@Autowired
	ICustService custService;
	
	@RequestMapping(value="/cs/customercount")
	public String CustCount(
		@RequestParam(value="deptid", required=false, defaultValue="0") int deptid, 
		Model model) {
		if(deptid==0) {
			model.addAttribute("count", custService.getCustCount());
		}else {
			model.addAttribute("count", custService.getCustCount(deptid));
		}
		return "hr/count2";
	}

	@RequestMapping(value={"/customerlist", "/hr/customerlist"})
	public String getAllCusts(Model model) {
		List<CustVO> custList = custService.getCustList();
		model.addAttribute("custList", custList);
		return "hr/list2";
	}
	
	@RequestMapping(value={"/"})
	public String getCusts(Model model) {
		List<CustVO> custList = custService.getCustList();
		model.addAttribute("custList", custList);
		return "home";
	}
	
	

	@RequestMapping(value="/customer/{customerId}")
	public String getCustInfo(@PathVariable int customerId, Model model) {
		CustVO cust = custService.getCustInfo(customerId);
		model.addAttribute("cust", cust);
		return "hr/view2";
	}
}//end class