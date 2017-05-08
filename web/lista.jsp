<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Clientes</h1>
        <h2><s:property value="nome" /></h2>
        <table>
            <tr>
                <td>Codigo</td>
                <td>Nome</td>
                <td>Email</td>
                <td>Login</td>
                <td>Senha</td>
            </tr>
            <s:iterator value="clientes" var="i">
                <s:url var="delet" action="Remover">
                    <s:param name="codigo" value="getCodigo()"/>
                </s:url>
                
                <s:url var="updade" action="Atualizar">
                    <s:param name="codigo" value="getCodigo()"/>
                </s:url>
                
                <tr>
                    <td><s:property value="#i.getCodigo()" /></td>
                    <td><s:property value="#i.getNome()" /></td>
                    <td><s:property value="#i.getEmail()" /></td>
                    <td><s:property value="#i.getLogin()" /></td>
                    <td><s:property value="#i.getSenha()" /></td>
                    <td><s:a href="%{delet}">remover</s:a></td>
                    <td><s:a href="%{updade}">alterar</s:a></td>
                </tr>
            </s:iterator>
        </table>
    </body>
</html>
