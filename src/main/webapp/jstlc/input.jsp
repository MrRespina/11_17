<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input.jsp</title>
</head>
<body>
	<form name="jstlcForm" action="JSTLCController" onsubmit="return check();">
		<table>
			<tr>
				<td align="center">
					<label> 숫자 : </label>
					<input placeholder="x" autofocus="autofocus" autocomplete="off" name="n">
				</td>
			</tr>
			<tr>
			<td align="center"><button>보내기</button></td>
			</tr>

		</table>
	</form>
</body>
</html>