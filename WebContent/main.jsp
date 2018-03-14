<%--  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
</head>
<body>
<h1>从复选框中读取数据</h1>
<ul>
<li><p><b>Google 是否选中:</b>
   <%= request.getParameter("google")%>
</p></li>
<li><p><b>菜鸟教程是否选中:</b>
   <%= request.getParameter("runoob")%>
</p></li>
<li><p><b>淘宝是否选中:</b>
   <%= request.getParameter("taobao")%>
</p></li>
</ul>
</body>
</html>
--%>

<%--JSP Cookie测试   --%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<%
   // 编码，解决中文乱码   

   String str = new String((request.getParameter("name")).getBytes("ISO-8859-1"),"UTF-8");
	//String str = URLEncoder.encode(request.getParameter("name"),"utf-8"); 
	out.println(str);
	out.println(request.getCharacterEncoding());
	 // 设置 name 和 url cookie 
	   Cookie name = new Cookie("name",
			   URLEncoder.encode(request.getParameter("name"),"utf-8"));
	   Cookie url = new Cookie("url",
	              request.getParameter("url"));

	   // 设置cookie过期时间为24小时。
	   name.setMaxAge(60*60*24); 
	   url.setMaxAge(60*60*24); 

	   // 在响应头部添加cookie
	   response.addCookie( name );
	   response.addCookie( url );	   	   
%>
<html>
<head>
<title>设置 Cookie</title>
</head>
<body>

<h1>设置 Cookie</h1>

<ul>
<li><p><b>网站名:</b>
   <%= str%>
</p></li>
<li><p><b>网址:</b>
   <%= request.getParameter("url")%>
</p></li>
</ul>
</body>
</html>
--%>

<%--JSP Session测试   --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%
   // 获取session创建时间
   Date createTime = new Date(session.getCreationTime());
   // 获取最后访问页面的时间
   Date lastAccessTime = new Date(session.getLastAccessedTime());

   String title = "再次访问菜鸟教程实例";
   Integer visitCount = new Integer(0);
   String visitCountKey = new String("visitCount");
   String userIDKey = new String("userID");
   String userID = new String("ABCD");

   // 检测网页是否由新的访问用户
   if (session.isNew()){
      title = "访问菜鸟教程实例";
      session.setAttribute(userIDKey, userID);
      session.setAttribute(visitCountKey,  visitCount);
   } else {
       visitCount = (Integer)session.getAttribute(visitCountKey);
       visitCount += 1;
       userID = (String)session.getAttribute(userIDKey);
       session.setAttribute(visitCountKey,  visitCount);
   }
%>
<html>
<head>
<title>Session 跟踪</title>
</head>
<body>

<h1>Session 跟踪</h1>

<table border="1" align="center"> 
<tr bgcolor="#949494">
   <th>Session 信息</th>
   <th>值</th>
</tr> 
<tr>
   <td>id</td>
   <td><% out.print( session.getId()); %></td>
</tr> 
<tr>
   <td>创建时间</td>
   <td><% out.print(createTime); %></td>
</tr> 
<tr>
   <td>最后访问时间</td>
   <td><% out.print(lastAccessTime); %></td>
</tr> 
<tr>
   <td>用户 ID</td>
   <td><% out.print(userID); %></td>
</tr> 
<tr>
   <td>访问次数</td>
   <td><% out.print(visitCount); %></td>
</tr> 
</table> 
</body>
</html>






