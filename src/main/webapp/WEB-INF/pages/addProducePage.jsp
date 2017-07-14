<%--
  Created by IntelliJ IDEA.
  User: wicker
  Date: 2017/6/28
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加商品页面</title>
</head>
<body>
<form action="/springSsecurity/produceManage/insertProduce.do", method="get">
        <table>
            <tr>
                <td>产品名称：</td>
                <td><input type="text" name="produceName"/></td>
            </tr>
            <tr>
                <td>产品价格：</td>
                <td><input type="text" name="producePrice"/></td>
            </tr>
        </table>
        <input type="submit" value="提交"/>
    </form>
</body>
</html>
