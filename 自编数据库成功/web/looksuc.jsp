<%--
  Created by IntelliJ IDEA.
  User: xiaod
  Date: 2018/6/12
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%! String unum; %>
<%! String unam; %>
<%! String usoc; %>
<%
    String num= (String) request.getAttribute("NUMBER");
    Connection conn = null;
    ResultSet res = null;
    PreparedStatement ps = null;
    String sql = "select * from student1 where number = '" + num + "'";

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
        res = ps.executeQuery();
        res.next();
        unum=res.getString(1);
        unam=res.getString(2);
        usoc=res.getString(3);

        System.out.println("MySQL链接成功");

    } catch (SQLException e) {
        if(res.next()){
            System.out.println("不为null");
        }
        else{
            System.out.println("null");
        }
        System.out.println("MySQL链接失败");
        e.printStackTrace();
    }
    finally {
        try{
            res.close();
            ps.close();
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
            <td width="50%">
                <div align="right">学生学号：</div>
            </td>
            <td width="50%">
                <div align="left"><input type="text" name="number1"  readonly="true" value="<%=unum%>"></div>
            </td>
        </tr>
        <tr>

        <tr>
            <td width="50%">
                <div align="right">学生姓名：</div>
            </td>
            <td width="50%">
                <div align="left"><input type="text" name="name1" readonly="true" value="<%=unam%>"></div>
            </td>
        </tr>

        <tr>
            <td width="50%">
                <div align="right">学生成绩：</div>
            </td>
            <td width="50%">
                <div align="left"><input type="text" name="score1" readonly="true" value="<%=usoc%>"></div>
            </td>
        </tr>

        <tr>
            <td>
                <div align="right"><a href="index.jsp">点击返回主界面 </a> </div>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
