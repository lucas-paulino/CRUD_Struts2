<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Inicio</title>
    </head>
    <body>
        <div id="conteiner"> 
            <div id="conteudo">
                <s:url var="mostrar" action="Listar"></s:url>
                <h1>Inicio</h1>
                <nav>
                    <div id="criar">
                        <center>
                        <a href="cadastro.jsp">
                            <img src="img/user.png" alt=""/>
                            <h3>Create</h3>
                        </a>
                        </center>
                    </div>
                    <div id="listar">
                        <center>
                        <s:a href="%{mostrar}">
                            <img src="img/list.png" alt=""/>
                            <h3>Read</h3>
                        </s:a>
                        </center>
                    </div>
                </nav>
            </div>
        </div>      
    </body>
</html>
