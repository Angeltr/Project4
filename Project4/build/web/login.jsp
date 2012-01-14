<%-- 
    Document   : login
    Created on : Dec 28, 2011, 5:47:15 PM
    Author     : Angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<head>
    <title>Login Form</title>
    <link rel="stylesheet" type="text/css" href="Login_CSS.css" />
</head>
<body>

    <p id="logo">angeltr</p>

    <a id="home" href="/Project4" style>Home</a>
    <a id="info" href="info.jsp">Info</a>
    <a id="login" href="login.jsp">Login</a>
    <br />
    <p id="line">______________________________________________________________________________________________________________________</p>
    <br /><br />

    <html:form action="/login">
        <table border="0">
            <tbody>
                <tr>
                    <td colspan="2">
                        <bean:write name="LoginForm" property="error" filter="false"/>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>Enter your name:</td>
                    <td><html:text property="name" /></td>
                </tr>
                <tr>
                    <td>Enter your email:</td>
                    <td><html:text property="email" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><html:submit value="Login" /></td>
                </tr>
            </tbody>
        </table>
    </html:form>


</body>
</html>
