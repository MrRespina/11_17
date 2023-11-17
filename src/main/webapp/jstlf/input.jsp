<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- 보통 둘 다 가져옴. core가 있어야 fmt 쓸 수 있는건 아님. --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input.jsp</title>
</head>
<%--
	type:
		number = 보통의 숫자
		currency = 통화(돈)
		percent = 퍼센트(소수점 반올림!)
		
		pattern = 패턴에 맞춰 변화. #.00 < 소수점 둘째 자리까지.(반올림)
		
	formatDate
		type:
			date = date 타입. dateStyle을 long,short 두개 선택 가능.
			time = date 타입. timeStyle을 long,short 선택 가능.
			both = date,time 둘다 사용. dateStyle과 timeStyle을 동시에 줄 수 있음.	
			pattern 에 원하는 방식으로 넣어서 커스텀 사용도 가능.	
	
 --%>
<body>
	<form name="jstlfForm" action="JSTLFController" onsubmit="">
		<table align="center">
			<tr>
				<td align="center"><label> JSTLF </label></td>
			</tr>
			<tr>
				<td align="center">a : <fmt:formatNumber value="${a }"
						type="number" /></td>
			</tr>
			<tr>
				<td align="center">a : <fmt:formatNumber value="${a }"
						type="currency" /></td>
			</tr>
			<tr>
				<td align="center">b : <fmt:formatNumber value="${b }"
						type="percent" /></td>
			</tr>
			<tr>
				<td align="center">c : <fmt:formatNumber value="${c }"
						pattern="#.00" /></td>
			</tr>
			<tr>
				<td align="center">d(long) : <fmt:formatDate value="${d }"
						type="date" dateStyle="long" /></td>
			</tr>
			<tr>
				<td align="center">d(short) : <fmt:formatDate value="${d }"
						type="date" dateStyle="Short" /></td>
			</tr>
			<tr>
				<td align="center">d(long) : <fmt:formatDate value="${d }"
						type="time" timeStyle="long" /></td>
			</tr>
			<tr>
				<td align="center">d(short) : <fmt:formatDate value="${d }"
						type="time" timeStyle="short" /></td>
			</tr>
			<tr>
				<td align="center">d(long/long) : <fmt:formatDate value="${d }"
						type="both" dateStyle="long" timeStyle="long" /></td>
			</tr>
			<tr>
				<td align="center">d(pattern custom) : <fmt:formatDate value="${d }"
						pattern="yyyy-MM-dd E a hh:mm" /></td>
			</tr>			
			<tr>
			<td><c:forEach var="s" items="${snacks}">
					${s.name } - <fmt:formatNumber value="${s.price }"
						type="currency" /> - <fmt:formatDate value="${s.exp }" type="both" dateStyle="long" timeStyle="long"/><br>
				</c:forEach></td>
		</tr>
		</table>
	</form>
</body>
</html>