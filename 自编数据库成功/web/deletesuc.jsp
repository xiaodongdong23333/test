<%--
  Created by IntelliJ IDEA.
  User: xiaod
  Date: 2018/6/12
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String num= (String) request.getAttribute("NUMBER");
    Connection conn = null;
    Statement stat = null;
    PreparedStatement ps = null;
    String sql = "delete from student1 where number = '" + num + "'";
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("JDBC加载成功");
    } catch (ClassNotFoundException e1) {
        System.out.println("JDBC加载失败");
        e1.printStackTrace();
    }
    try {
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useSSL=false&serverTimezone=UTC",
                "root", "long8772521");
        ps=conn.prepareStatement(sql);
        ps.executeUpdate();

        System.out.println("MySQL链接成功");

    } catch (SQLException e) {

        System.out.println("MySQL链接失败");
        e.printStackTrace();
    }
    finally {
        try{
            conn.close();
            System.out.println("MySQL关闭成功！");
        }catch (SQLException e2){
            System.out.println("MySQL关闭成功！");
            e2.printStackTrace();
        }
    }
%>

<BR>
<div align="center">
    <table width="100%">

        <tr>
            <td>
                <div align="center">删除成功！</div>
            </td>
        </tr>

        <tr>
            <td>
                <div align="center"><a href="index.jsp">点击返回主界面 </a> </div>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
