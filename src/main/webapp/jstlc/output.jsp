<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>output.jsp</title>
</head>
<body>
	<table class="out">
		<tr>
			<td align="center">
				<h3>숫자 : ${param.n },
				<c:if test="${param.n % 2 == 0}">짝수
				</c:if>
				<c:if test="${param.n % 2 == 1}">홀수
				</c:if>
				</h3>
			</td>
		</tr>
		<tr>
			<td><c:choose>
					<c:when test="${param.n > 10 }">
						<h3>10보다 큼</h3>
					</c:when>
					<c:when test="${param.n >= 5 }">
						<h3>5 ~ 10 사이</h3>
					</c:when>
					<c:otherwise>
						<h3>그 외</h3>
					</c:otherwise>
				</c:choose></td>
		<tr>
			<td><c:forEach var="v" begin="1" end="${param.n }" step="1">
					<label style="font-size: 30px;">${v }&nbsp;</label>
				</c:forEach></td>
		</tr>
		<!-- 신형 for 문 - forEach -->
		<tr>
			<td><c:forEach var="a" items="${ar}">
					<label style="font-size: 30px;">${a }&nbsp;</label>
				</c:forEach></td>
		</tr>
		<tr>
			<td><c:forEach var="b" items="${hal}">
					<h5>이름 : ${b.name }&nbsp;나이 : ${b.age }&nbsp;키 : ${b.height }&nbsp;몸무게 : ${b.weight }</h5>
				</c:forEach></td>
		</tr>
		<tr>
			<td>
				<c:catch var="myExcept">
					<% int result = 100 / 0; %>
					계산 결과 : <%= result %>
				</c:catch>
				<c:if test="${myExcept != null }">
					에러 발생 : ${myExcept.message}<br>
				</c:if>
			</td>
		</tr>
		<!-- java로 치면 sysout 같은 느낌 ...? -->
		<tr>
			<td>
			<c:out value="입력받은 값 : ${param.n } - 내장 함수 : ${myExcept.message }"/>
			</td>
		</tr>
		

	</table>

</body>
</html>