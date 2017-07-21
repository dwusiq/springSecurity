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
<body onload='document.f.username.focus();'>
     <form name='f' action="${pageContext.request.contextPath}/login/loginDo" method="POST">
         <table>
             <tr>
                 <td>帐号：</td>
                 <td><input type="text" name="userId"></td>
             </tr>
             <tr>
                 <td>密码：</td>
                 <td><input type="password" name="userPwd"></td>
             </tr>
             <tr>
                 <td colspan="2">
                     <input type="submit" name="submit" value="login"/>
              <%--       <input type="hidden" name="_csrf" value="454576523565323523523422">--%>
                 </td>


             </tr>
         </table>
     </form>
</body>
</html>