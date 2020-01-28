package com.coderby.myapp.hr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.coderby.myapp.hr.model.ProjVO;
import com.coderby.myapp.hr.service.IProjService;

@Controller
public class ProjController {

	@Autowired
	IProjService projService;
	
	//home
	@RequestMapping(value="/")
	public String getProj(Model model) {
		List<ProjVO> projList = projService.getProjList();
		model.addAttribute("projList", projList);
		return "home";
	}
	
	//insert
	@RequestMapping(value="/insert1")
	public String connectinsert(Model model) {
		int max = 0;
		max = projService.maxindex();
		max++;
		model.addAttribute("max", max);
		return "/hr/insert";
	}
	
	@RequestMapping(value="/insert1", method=RequestMethod.POST)
	public String insertProjForm(ProjVO proj, Model model) {
		projService.insertProj(proj);
		return "redirect:/";
	}
	
	//search
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String searchProj(@RequestParam(value="customerType") int customerType,
			@RequestParam(value="searchString", required=false, defaultValue="0") String searchString, 
			Model model) {
		List<ProjVO> projList = projService.searchProj(customerType ,searchString);
		model.addAttribute("projList", projList);
		return "home";
	}
	
	
	//view
	@RequestMapping(value="/{cId}")
	public String getEmpInfo(@PathVariable int cId, Model model) {
		ProjVO proj = projService.getProjInfo(cId);
		model.addAttribute("proj", proj);
		return "/hr/view2";
	}
	
	//update
	@RequestMapping(value="/update2", method=RequestMethod.GET)
	public String updateProj(int cId, Model model) {
		model.addAttribute("proj", projService.getProjInfo(cId));
		return "hr/updateform2";
	}
	
	@RequestMapping(value="/update2", method=RequestMethod.POST)
	public String updateProj(ProjVO proj, Model model) {
		projService.updateProj(proj);
		return "redirect:/"+proj.getcId();
	}
	
	//delete
	@RequestMapping(value="/delete1", method=RequestMethod.GET)
	public String deleteProj(int cId, Model model) {
		projService.deleteProj(cId);
		return "redirect:/";
	}
	
	
	
}//end class