<%--
  Created by IntelliJ IDEA.
  User: xiaod
  Date: 2018/6/12
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="deleteForm" method="post" action="mydelete">
    <div align="center">
        <table width="100%">
            <tr>
               <td>
                   <div align="right"><font size="5">删除学生信息</font> </div>
               </td>
            </tr>

            <tr>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td width="50%">
                    <div align="right">请输入所要删除的学生学号</div>
                </td>
                <td width="50%">
                    <div align="left"><input type="text" name="number"></div>
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
