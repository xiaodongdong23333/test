<%--
  Created by IntelliJ IDEA.
  User: xiaod
  Date: 2018/6/12
  Time: 8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="addForm" method="post" action="myadd">
<div align="center">
    <table width="100%">
        <tr>
            <td>
                <div align="right"><font size="5">添加学生信息</font></div>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td width="50%">
                <div align="right">学生学号：</div>
            </td>
            <td width="50%">
                <div align="left"><input type="text" name="number"></div>
            </td>
        </tr>
        <tr>
            <td width="50%">
                <div align="right">学生姓名：</div>
            </td>
            <td width="50%">
                <div align="left"><input type="text" name="name"></div>
            </td>
        </tr>
        <tr>
            <td width="50%">
                <div align="right">学生成绩：</div>
            </td>
            <td width="50%">
                <div align="left"><input type="text" name="score"></div>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div align="center"><input type="submit" name="submit1" value="确定 "> </div>
            </td>
        </tr>
    </table>
</div>
</form>
</body>
</html>
