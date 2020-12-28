package com.cloud.test;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	ModelAndView mav;	//어떤 jsp로 어떤 데이터를 출력하고자 할 때 사용하는 클래스
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "home";	//home.jsp 파일을 호출함
	}
	
	//request방식 : get, post
	//method를 안쓰면 get, post 둘다 받을 수 있음.
	//rest 방식 : get, post, put(patch), delete
	@RequestMapping(value = "/testview")
	public String testview() {
		
		return "test";	//home.jsp 파일을 호출함
	}
	
	//form태그로 전송된 값 출력하기
	@RequestMapping(value = "/param")
	public ModelAndView paramTest(@RequestParam("param1") String param1,
							@RequestParam("param2") String param2) {
		
		System.out.println("controller에서 전달받은값 : " + param1 + ", " + param2);
		
		//param1, param2를 가지고 test2.jsp로 이동하기
		mav = new ModelAndView();
		
		//mav에 파라미터 담기
		mav.addObject("pa1", param1);
		mav.addObject("pa2", param2);
		
		//mav에 목적지(출력할 jsp) 지정
		mav.setViewName("test2");
		
		return mav;
	}
	
	//controller에서 값을 담아 화면으로 가져가기
	//화면에 값을 출력하려면 어떤 방식으로 이동을 하나요?
	//dispatch, redirect
	
	
}


