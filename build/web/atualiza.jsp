<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Atualizar</title>
    </head>
    <body>
        <div id="conteiner"> 
            <div id="conteudo">
                <h1>Atualizar</h1>
                <s:form action="Atualizar">
                    <s:hidden name="codigo"/>
                    <s:textfield name="nome" label="Nome" />
                    <s:textfield name="email" label="Email" />
                    <s:textfield name="login" label="Login" />
                    <s:textfield name="senha" label="Senha" />
                    <s:submit value="Enviar" />
                </s:form>
            </div>
        </div>
    </body>
</html>
