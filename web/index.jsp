<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: wt
  Date: 2017/1/1
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>session内置对象</h1>
  <hr>
  <%
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日HH:mm:ss");
    Date date = new Date(session.getCreationTime());
    session.setAttribute("username","admin");
    session.setAttribute("password","123456");
    session.setAttribute("age",20);
  %>
  Session 创建时间：<%=simpleDateFormat.format(date)%><br>
  Session ID编号：<%=session.getId()%><br>
  从Session中获取所有属性：<%
    String[] names = session.getValueNames();
    for(int i=0;i<names.length;i++){
      out.println(names[i]+"&nbsp;");
    }


  %><br>
  </body>
</html>
