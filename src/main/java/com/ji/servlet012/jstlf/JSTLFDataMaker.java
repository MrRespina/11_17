package com.ji.servlet012.jstlf;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

// DAO

public class JSTLFDataMaker {

	public static void make(HttpServletRequest request) {
		
		int a = 123456789;
		request.setAttribute("a", a);
		
		double b = 10 / 24.0;
		request.setAttribute("b", b);
		
		double c = 123.456789;
		request.setAttribute("c", c);
		
		Date now = new Date();
		request.setAttribute("d", now);

		// String e = "2023/11/17";
		// jstl-formatting 으로는 해결이 안 된다.
		
		ArrayList<Snack> snacks = new ArrayList<Snack>();
		snacks.add(new Snack("몽쉘",4500,new Date()));
		snacks.add(new Snack("프링글스",2800,new Date()));
		snacks.add(new Snack("엄마손파이",3200,new Date()));
		snacks.add(new Snack("포카칩",2600,new Date()));
		request.setAttribute("snacks", snacks);
		
	}
	
}
