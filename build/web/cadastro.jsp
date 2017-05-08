<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro</h1>
        <s:form action="Cadastrar">
            <s:textfield name="nome" label="Nome" />
            <s:textfield name="email" label="Email" />
            <s:textfield name="login" label="Login" />
            <s:password name="senha" label="Senha" />
            <s:submit value="Enviar" />
        </s:form>
    </body>
</html>
