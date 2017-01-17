<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="util.DBHelper" %><%--
  Created by IntelliJ IDEA.
  User: wt
  Date: 2017/1/15
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

        try {
            conn = DBHelper.getConnection();
            for(int i=0;i<1;i++) {
                String tm = "t" + i;
                String value = request.getParameter(tm);
                String sql = "INSERT INTO testone VALUES ('" + tm + "','" + value + "');";
                stmt = conn.prepareStatement(sql);
                stmt.executeUpdate();
            }


        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            // 释放数据集对象
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }

%>


<%--<html>--%>
<%--<head>--%>
    <%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--</body>--%>
<%--</html>--%>
