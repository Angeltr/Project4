<%-- 
    Document   : form
    Created on : Dec 29, 2011, 4:01:49 PM
    Author     : Angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="Index_CSS.css" />
        <script type="text/javascript">
            function loadXMLDoc(dname)
            {
                if (window.XMLHttpRequest)
                {
                    xhttp=new XMLHttpRequest();
                }
                else
                {
                    xhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xhttp.open("GET",dname,false);
                xhttp.send();
                return xhttp.responseXML;
            }
        </script>
    </head>
    <body>

        <p id="logo">angeltr</p>

        <a id="home" href="/Project4" style>Home</a>
        <a id="info" href="info.jsp">Info</a>
        <a id="login" href="login.jsp">Login</a>
        <br />
        <p id="line">______________________________________________________________________________________________________________________</p>
        <br /><br />
        <h1>Welcome To The Online Bookstore</h1><br /><br />

        <p style="font-family: 'Imprint MT Shadow', sans-serif;font-size: 20px;color: #F1EBE3;margin-left: 10%">
            Hello <c:out default="${cookie.username.value}" value="${LoginForm.name}" > guest</c:out>
            </p>
            <br /><br />



        <html:form action="/compute" >
            <table align="center">
                <tr id="header">
                    <th>Title</th>
                    <th>Author</th>
                    <th>Year</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>

                <script type="text/javascript">
                    var x,y,z,v,xmlDoc;
                    xmlDoc=loadXMLDoc("bookstore.xml");
                    x=xmlDoc.getElementsByTagName("title");
                    y=xmlDoc.getElementsByTagName("author");
                    z=xmlDoc.getElementsByTagName("year");
                    v=xmlDoc.getElementsByTagName("price");
                </script>

                <tr>
                    <td><script type="text/javascript">  document.write(x[0].childNodes[0].nodeValue); </script></td>
                    <td><script type="text/javascript">  document.write(y[0].childNodes[0].nodeValue); </script></td>    
                    <td><script type="text/javascript">  document.write(z[0].childNodes[0].nodeValue); </script></td>      
                    <td><script type="text/javascript">  document.write(v[0].childNodes[0].nodeValue); </script></td>   
                    <td><html:text property="quantity" value="${cookie.quaCookies0.value}" /></td>         
                    <td><c:out default="${cookie.totalCookies0.value}" value="${books[0].total}" /></td>
                </tr>
                <tr>
                    <td><script type="text/javascript">  document.write(x[1].childNodes[0].nodeValue); </script></td>
                    <td><script type="text/javascript">  document.write(y[1].childNodes[0].nodeValue); </script></td>    
                    <td><script type="text/javascript">  document.write(z[1].childNodes[0].nodeValue); </script></td>      
                    <td><script type="text/javascript">  document.write(v[1].childNodes[0].nodeValue); </script></td>   
                    <td><html:text property="quantity" value="${cookie.quaCookies1.value}" /></td>         
                    <td><c:out default="${cookie.totalCookies1.value}" value="${books[1].total}" /></td>
                </tr>
                <tr>
                    <td><script type="text/javascript">  document.write(x[2].childNodes[0].nodeValue); </script></td>
                    <td><script type="text/javascript">  document.write(y[2].childNodes[0].nodeValue); </script></td>    
                    <td><script type="text/javascript">  document.write(z[2].childNodes[0].nodeValue); </script></td>      
                    <td><script type="text/javascript">  document.write(v[2].childNodes[0].nodeValue); </script></td>   
                    <td><html:text property="quantity" value="${cookie.quaCookies2.value}" /></td>         
                    <td><c:out default="${cookie.totalCookies2.value}" value="${books[2].total}"/></td>
                </tr>
                <tr>
                    <td><script type="text/javascript">  document.write(x[3].childNodes[0].nodeValue); </script></td>
                    <td><script type="text/javascript">  document.write(y[3].childNodes[0].nodeValue); </script></td>    
                    <td><script type="text/javascript">  document.write(z[3].childNodes[0].nodeValue); </script></td>      
                    <td><script type="text/javascript">  document.write(v[3].childNodes[0].nodeValue); </script></td>   
                    <td><html:text property="quantity" value="${cookie.quaCookies3.value}" /></td>         
                    <td><c:out default="${cookie.totalCookies3.value}" value="${books[3].total}"/></td>
                </tr>
                <tr>
                    <td><script type="text/javascript">  document.write(x[4].childNodes[0].nodeValue); </script></td>
                    <td><script type="text/javascript">  document.write(y[4].childNodes[0].nodeValue); </script></td>    
                    <td><script type="text/javascript">  document.write(z[4].childNodes[0].nodeValue); </script></td>      
                    <td><script type="text/javascript">  document.write(v[4].childNodes[0].nodeValue); </script></td>   
                    <td><html:text property="quantity" value="${cookie.quaCookies4.value}" /></td>         
                    <td><c:out default="${cookie.totalCookies4.value}" value="${books[4].total}"/></td>
                </tr>
                <tr>
                    <td><script type="text/javascript">  document.write(x[5].childNodes[0].nodeValue); </script></td>
                    <td><script type="text/javascript">  document.write(y[5].childNodes[0].nodeValue); </script></td>    
                    <td><script type="text/javascript">  document.write(z[5].childNodes[0].nodeValue); </script></td>      
                    <td><script type="text/javascript">  document.write(v[5].childNodes[0].nodeValue); </script></td>   
                    <td><html:text property="quantity" value="${cookie.quaCookies5.value}" /></td>         
                    <td><c:out default="${cookie.totalCookies5.value}" value="${books[5].total}"/></td>
                </tr>
                <tr>
                    <td><script type="text/javascript">  document.write(x[6].childNodes[0].nodeValue); </script></td>
                    <td><script type="text/javascript">  document.write(y[6].childNodes[0].nodeValue); </script></td>    
                    <td><script type="text/javascript">  document.write(z[6].childNodes[0].nodeValue); </script></td>      
                    <td><script type="text/javascript">  document.write(v[6].childNodes[0].nodeValue); </script></td>   
                    <td><html:text property="quantity" value="${cookie.quaCookies6.value}" /></td>         
                    <td><c:out default="${cookie.totalCookies6.value}" value="${books[6].total}"/></td>
                </tr>

                <tr>
                    <td>Total</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><c:out default="${cookie.finalTotal.value}" value="${total}"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <html:submit value="Calculate"/>
                    </td>
                </tr>
            </table><br />
        </html:form>


    </body>
</html>

<%--
    <c:forEach begin="0" end="6" step="1" var="i" >
                    <tr>
                        <td>
                            <script type="text/javascript">
                                document.write(x[${i}].childNodes[0].nodeValue);
                            </script>
                        </td>
                        <td>
                            <script type="text/javascript">
                                document.write(y[${i}].childNodes[0].nodeValue);
                            </script>
                        </td>
                        <td>
                            <script type="text/javascript">
                                document.write(z[${i}].childNodes[0].nodeValue);
                            </script>
                        </td>
                        <td>
                            <script type="text/javascript">
                                document.write(v[${i}].childNodes[0].nodeValue);
                            </script>
                        </td>
                        <td>
                            <html:text property="quantity" value="0" />
                        </td>
                        <td>
                            <c:out default="${cookie.totalCookies[i].value}" value="${books[i].total}"/>
                            
                        </td>
                    </tr>
                </c:forEach> 

--%>