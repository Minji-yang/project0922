<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check(){
		var doc=document.form;
	if(doc.id.value==""){
		alert("아이디를 입력하세요");
		doc.id.focus();	}
	else if(doc.name.value==""){
		alert("이름을 입력하세요");
		doc.name.focus();
	}else if(doc.dep.value==""){
		alert("부서를 입력하세요");	
		doc.dep.focus();
	}else{doc.submit();}
	
}
</script>
</head>
<body>

<%@include file="Header.jsp" %>
<%@include file="Nav.jsp" %>
<section>
<h3 id=head1>인사관리 사원 등록 화면</h3>
<form name=form method=post action="insertprocess.jsp">
<table border=1 id=tab2>
<tr>
<th>사원번호</th>
<td><input type="text" name=id></td>
</tr>
<tr>
<th>성명</th>
<td><input type=text name=name></td>
</tr>
<tr>
<th>소속부서</th>
<td>
<select name=dep>
<option value=인사부>인사부</option>
<option value=기획부>기획부</option>
<option value=영업부>영업부</option>
<option value=경리부>경리부 </option>
</select>
</td>
</tr>
<tr>
<th>직급</th>
<td>
<select name=position>
<option value=1>1급<option>
<option value=2>2급<option>
<option value=3>3급<option>
<option value=4>4급<option>
</select>
</td>
</tr>
<tr>
<th>직책</th>
<td><input type=text name=duty></td>
</tr>
<tr>
<th>연락처</th>
<td><input type=text name=phone></td>
</tr>
<tr>
<td colspan=2 id=center>
<input id=bt1 type=button value=저장 onclick="check()">
<input id=bt1 type=reset value=취소>
<tr>

</table>

</form>

</section>
<%@include file="Footer.jsp" %>
</body>
</html>