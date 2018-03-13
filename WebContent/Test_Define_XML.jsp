
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜鸟教程(runoob.com)</title>
</head>
<body>

ServletName<%=config.getServletName() %> <br/>
ServletContext<%=config.getServletContext() %> <br/>
Server_Port= <%=request.getServerPort() %> <br/>
Head_Name= <%=request.getHeader("host") %>
 <% Enumeration headerNames = request.getHeaderNames(); %>
 
 <h2>表格实例</h2>
<table width="100%" border="1" align="center">
<tr bgcolor="#949494">
<th>Header Name</th><th>Header Value(s)</th>
</tr>
<%
int i=0;
while(i<3){
	out.print("<tr><td>"+" "+"</td>\n");
	out.println("<td> " +" "+ "</td></tr>\n");
	i++;
}
%>

<%

%>










 
 
 
</body>
</html>