package com.iot.reservation;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iot.member.memberVO;

@Controller
public class resvController {
	@Autowired
	resvService service;
	
	@RequestMapping("/myResvList.do")
	public ModelAndView myResvList(HttpSession session) {
		/*System.out.println("myResvList");*/
		ModelAndView mav = new ModelAndView();
		memberVO user = (memberVO)session.getAttribute("user");
		List<resvVO> list = service.select(user.getUser_id());
		/*System.out.println(list);*/
		mav.addObject("resvlist", list);
		mav.setViewName("myResv");
		return mav;
	}
}
