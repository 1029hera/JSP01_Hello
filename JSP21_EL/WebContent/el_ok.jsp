<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>EL 내장객체</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String [] hobby = request.getParameterValues("hobby");
	%>
	
	아이디: <%= id %><br>
	비밀번호: <%= pw %><br>
	취미:
	<% for(int i = 0; i < hobby.length; i++){ %>
		<%= hobby[i] %> 
	<% } %>
	
	<hr>
	아이디: ${param.id }<br>
	비밀번호: ${param.pw }<br>
	취미: ${param.hobby }<br>
	취미: ${paramValues.hobby[0] }
		${paramValues.hobby[1] }
		${paramValues.hobby[2] } <br>

	<hr>
	아이디: ${param["id"] }<br>
	비밀번호: ${param["pw"] }<br>
	취미: ${param["hobby"] }<br>
	취미: ${paramValues["hobby"][0] }
		${paramValues["hobby"][1] }
		${paramValues["hobby"][2] } <br>
	
	<hr>
	ContextPath<br>
	<%= request.getContextPath() %><br>
	${pageContext.request.contextPath }<br>
	
	<a href="el_form.jsp">입력폼</a><br>
	<a href="./el_form.jsp">입력폼</a><br>
	<a href="/JSP21_EL/el_form.jsp">입력폼</a><br> <%-- ㄱ비추 --%>
	<a href="${pageContext.request.contextPath }/el_form.jsp">입력폼</a><br>
	
</body>
</html>

























