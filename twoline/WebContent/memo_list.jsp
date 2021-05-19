<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="twoline.OnelineDAO" %>
<%@ page import="twoline.OnelineDTO" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Memo</title>
	<link rel="stylesheet" href="memo.css">
</head>
<%
	OnelineDAO dao = new OnelineDAO();
	ArrayList<OnelineDTO> dtos = dao.getList();
%>
<body>
	<div id="container">
		<header>
			<div>
				<h1>My Memo</h1>
			</div>
		</header>
		<main>
			<form method="post" action="memo_write.jsp">
				<div class="int-area">
					<h2>메모할 내용을 <br>입력해 보세요.</h2>
					<label class="box1">입력</label>
					<input type="text" name="memo">
				</div>
				<div class="button">
					<input type="submit" value="등록">
				</div>
			</form>	
		<%
			for(int i = 0; i < dtos.size(); i++) {
				OnelineDTO dto = dtos.get(i);
				out.print("<p>" + dto.getMemo() + ": " + dto.getWdate() + "<input type=\"button\" value=\"X\" onClick=\"location.href='memo_delete.jsp?no="+dto.getNo()+"'\"></p><br>");
				
			}
		%>
		</main>
	</div>
</body>
</html>