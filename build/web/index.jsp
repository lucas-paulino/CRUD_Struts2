<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <s:url var="mostrar" action="Listar">
        </s:url>
        
        <h1>Inicio</h1>
        <ul>
            <li><a href="cadastro.jsp">Create</a></li>
            <li><s:a href="%{mostrar}">Read</s:a></li>
        </ul>
    </body>
</html>
