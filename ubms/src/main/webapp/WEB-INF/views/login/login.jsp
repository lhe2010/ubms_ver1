<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<c:if test='${not empty message }'>
	<script>
		window.onload=function() {
			alert("아이디나  비밀번호가 틀립니다. 다시 로그인해주세요");
		}
	</script>
</c:if>
<title>Login Page</title>
</head>
<link href="${contextPath }/resources/css/myStyle.css" rel="stylesheet" />

<body>
	<div align="center">
		<h1>Login in to UBMS</h1>
		<br>
		<form action="${contextPath}/member/login.do" method="post">
			<table class="table table-hover">
				<colgroup>
					<col width="20%">
					<col width="60%">
				</colgroup>
				<tr>
					<td align="center"><label for="member_id">아이디</label></td>
					<td><input class="form-control" id="member_id" name="member_id" type="text" placeholder="아이디를 입력하세요." /></td>
				</tr>
				<tr align="center">
					<td><label for="member_pw">비밀번호</label></td>
					<td><input class="form-control" id="member_pw" name="member_pw" type="password" placeholder="비밀번호를 입력하세요." /></td>
				</tr>
				<tr >
					<td colspan="2" align="center"><input type="submit" class="btn btn-primary btn-sm" value="로그인"></td>
				</tr>
			</table>
			<p align="center">
	   			<img src="${contextPath}/resources/images/login_banner.jpg" alt="편의점택배안내공지">
	   		</p>
		</form>
	</div>
</body>
</html>