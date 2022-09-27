<%@page import="java.util.ArrayList"%>
<%@page import="com.online.examDto.ExamDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Exam</title>
</head>

<body>
<%
System.out.println("hello");
  List<ExamDto> list = request.getAttribute("questionlist") != null? ((List<ExamDto>) request.getAttribute("questionlist")): new ArrayList();
	//System.out.println("jsp"+list);
%>
<script>

<%
String clock = request.getParameter( "clock" );
if( clock == null ) clock = "180";
%>
var timeout = <%=clock%>;
function timer()
{
if( --timeout > 0 )
{
document.forma.clock.value = timeout;
window.setTimeout( "timer()", 1000 );
}
else
{
document.forma.clock.value = "Time over";
///disable submit-button etc
}
}

</script>

<div id="post27256276875452451528">
<form action="exam_submit.jsp" name="forma">
<h1><span style="font-family: georgia;">

Practice Test: Question Paper</span></h1>Time Remaining : <input type="text" value='<%=clock%>' name="clock" disabled="disabled"></h1>

<% for(ExamDto dto:list){   %>
<hr><b><span style="font-family: georgia;">
<%=dto.getQuestion_id() %>) <%=dto.getQuestions() %></span></b>
<ul><span style="font-family: georgia;"><input name="q1" type="radio" value="A">(A) <%=dto.getOptionA() %></span></ul>
<ul><span style="font-family: georgia;"><input name="q1" type="radio" value="B">(B) <%=dto.getOptionB() %></span></ul>
<ul><span style="font-family: georgia;"><input name="q1" type="radio" value="C">(C) <%=dto.getOptionC() %></span></ul>
<ul><span style="font-family: georgia;"><input name="q1" type="radio" value="D">(D) <%=dto.getOptionD() %></span></ul>

<%} %>



<style>
.main_div{text-align:left;}
.inner_div{margin-top:5px;}
.buttons a{font-size: 15px;}
.buttons a:hover{cursor:pointer; font-size: 15px;}
</style>


<button >Submit</button>
<hr>
</form>
</div>
<script>

timer(); 

</script>
</body>
</html>