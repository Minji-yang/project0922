<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<%@include file="DBConn.jsp" %>


<%
request.setCharacterEncoding("utf-8");   //이거 대문자안써서 안됐던거같ㅇ느데
String id=request.getParameter("id");
String name=request.getParameter("name");  
String dep=request.getParameter("dep");  
String position=request.getParameter("position");  
String duty=request.getParameter("duty");  //폼에 지정했던 name과 동일하게
String phone=request.getParameter("phone");  

PreparedStatement pstmt=null;
try{
	

String sql="insert into person0922 values(?,?,?,?,?,?)";
pstmt=conn.prepareStatement(sql);

pstmt.setString(1,id);       //숫자는 DB에 Colum순서
pstmt.setString(2,name);       // 위에서 받은 값을 각각 넣는다
pstmt.setString(3,dep);
pstmt.setString(4,position);
pstmt.setString(5,duty);
pstmt.setString(6,phone);
pstmt.executeUpdate();          //반영시키기!
%>                     
<script>                  //값이 잘 들어갔다면!
 alert("등록이 완료 되었습니다.");        //창뜨고
 location.href="select.jsp";         //조회화면으로가 
</script>
<%
}catch(Exception e){
	e.printStackTrace();
	%>

	<script>
	alert("저장 실패")
	history.back(-1);
	</script>
	<% 
}%>


</body>
</html>