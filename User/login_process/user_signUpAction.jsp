<%@page import="kr.co.goyang.user.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="kr.co.goyang.user.dao.UserDAO" %>
    <%@ page import="java.io.PrintWriter" %>
    <% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://211.63.89.132/jsp_prj/common/css/main_v1_220901.css"/>
<style type="text/css">

</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	
	
    <jsp:useBean id="uVO" class="kr.co.goyang.user.vo.UserVO" scope="page"/>
    <jsp:setProperty name="uVO" property="*"/>
<%

if(uVO.getId()!=null || uVO.getPassword()!=null || uVO.getEmail()!=null ||
	uVO.getName()!=null || uVO.getPhone()!=null || uVO.getZipcode()!=null ||
	uVO.getAddr()!=null || uVO.getDeAddr()!=null){
	UserDAO dao=new UserDAO();
	int result=dao.insertUser(uVO);
	if(result==-1){
		PrintWriter pw=response.getWriter();
		pw.println("<script>");
		pw.println("alert('회원가입에 실패하였습니다')");
		pw.println("history.back()");
		pw.println("</script>");
	}else {
		PrintWriter pw=response.getWriter();
		pw.println("<script>");
		pw.println("alert('회원가입에 성공하셨습니다')");
		pw.println("location.href='../main/index.jsp'");		
		pw.println("</script>");
	}
	
}
	
%>
</body>
</html>