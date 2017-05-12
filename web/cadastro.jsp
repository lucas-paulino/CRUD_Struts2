<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Cadastro</title>
    </head>
    <body>
        <div id="conteiner">
            <div id="voltar"> 
                <a href="/Struts_Pratica/"> 
                    <img src="img/voltar.png" alt="voltar"> 
                </a> 
            </div>
            <div id="conteudo">
                <h1>Cadastro</h1>
                <s:form action="Cadastrar">
                    <s:textfield name="nome" label="Nome" required="required" />
                    <s:textfield name="email" label="Email" required="required" />
                    <s:textfield name="login" label="Login" required="required" />
                    <s:password name="senha" label="Senha" required="required" />
                    <s:submit value="Enviar" />
                </s:form>
            </div>
        </div>
    </body>
</html>
