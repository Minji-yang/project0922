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
<%@include file="Header.jsp" %>
<%@include file="Nav.jsp" %>
<section>
<h3 id=head1> 직원 정보 조회</h3>
<table border=1 id=tab1>

<tr>
<th>no</th>
<th>성명</th>
<th>사번</th>
<th>직급</th>
<th>직책</th>
<th>연락처</th>
<th>소속부서</th>
</tr>
<% 
	PreparedStatement pstmt=null;
 	ResultSet rs=null;
 	int no=0;
 	try{
 		String sql="select*from person0922";
 		pstmt=conn.prepareStatement(sql);
 		rs=pstmt.executeQuery();              //결과가져와서
 		
 		while(rs.next()){                     //하나하나 읽기
 			String id=rs.getString("id");              //
 			String name=rs.getString("name");
 			String dep=rs.getString(3);
 			String position=rs.getString(4);
 			String duty=rs.getString(5);
 			String phone=rs.getString(6);     //오라클 DB Column 순서에 맞춰 숫자로 적어도 됨, 대소문자상관없나보네
 		    no++;
%>

<tr id=center>
<td><%=no %></td>
<td><%=id %></td>
<td><%=name %></td>
<td><%=dep %></td>
<td><%=position %></td>
<td><%=duty %></td>
<td><%=phone %></td>


</tr>

	<% 	 		} }
 	catch(Exception e){
 		System.out.println("데이터베이스 에러");
 		e.printStackTrace();
 	}
 	%></table>
</section>
<%@include file="Footer.jsp" %>
</body>
</html>