<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="conteiner"> 
            <div id="conteudo2">
                <h1>Clientes</h1>
                    <table id="lista">
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

                            <s:url var="updade" action="RedrectAtualizar">
                                <s:param name="codigo" value="getCodigo()"/>
                                <s:param name="nome" value="getNome()"/>
                                <s:param name="email" value="getEmail()"/>
                                <s:param name="login" value="getLogin()"/>
                                <s:param name="senha" value="getSenha()"/>
                            </s:url>

                            <tr>
                                <td><s:property value="#i.getCodigo()" /></td>
                                <td><s:property value="#i.getNome()" /></td>
                                <td><s:property value="#i.getEmail()" /></td>
                                <td><s:property value="#i.getLogin()" /></td>
                                <td><s:property value="#i.getSenha()" /></td>
                                <td><s:a href="%{delet}"> <img src="img/delete_mini.png" alt="apagar elemento" /></s:a></td>
                                <td><s:a href="%{updade}"> <img src="img/edit_mini.png" alt="alterar elemento" /></s:a></td>
                            </tr>
                        </s:iterator>
                    </table>
            </div>
        </div>
    </body>
</html>
