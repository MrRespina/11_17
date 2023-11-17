package com.ji.servlet012.jstlc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class JSTLCDataMaker {

	public static void make(HttpServletRequest request) {
		
		int[] ar = {123,456,78,90,2345};
		request.setAttribute("ar", ar);
		
		// ArrayList 이용해서 [사람] 이름, 나이, 키, 몸무게 한세트를 4~5개 넣어두고
		// JSTL 반복문으로 정보 호출
		ArrayList<Human> hal = new ArrayList<Human>();
		Human h1 = new Human("지병천",29,178.5,65.5);
		Human h2 = new Human("안성호",27,175.8,67.5);
		Human h3 = new Human("차종원",28,182.5,72.9);
		Human h4 = new Human("이은혜",25,158.6,49.5);
		hal.add(h1);
		hal.add(h2);
		hal.add(h3);
		hal.add(h4);

		request.setAttribute("hal", hal);
		
	}
	
}
