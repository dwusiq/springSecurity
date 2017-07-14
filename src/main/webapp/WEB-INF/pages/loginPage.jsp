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
    <title>登录</title>
</head>
<body onload="document.f.usernmae.focus();">
     <form>
         <table>
             <tr>
                 <td>帐号：</td>
                 <td><input type="text" name="username"></td>
             </tr>
             <tr>
                 <td>密码：</td>
                 <td><input type="password" name="username"></td>
             </tr>
             <tr>
                 <input type="submit" name="submit" value="login"/>
                 <input type="hidden" name="_csrf" value="454576523565323523523422">
             </tr>
         </table>
     </form>
</body>
</html>