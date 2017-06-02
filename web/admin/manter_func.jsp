<%-- 
    Document   : manter_func
    Created on : 27/04/2017, 14:45:07
    Author     : Ramon Cordeiro
--%>

<%@page import="java.util.List"%>
<%@page import="model.Usuario"%>
<%@page import="util.Conf"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%

            List<Usuario> mostrar = (List<Usuario>) request.getAttribute("retornaTodosUsuarios");

        %>
        <h1>Manter Funcionários </h1>

        <a href="<%=Conf.getCaminhoContexto()%>/admin/cadastro_usuario.jsp"> Cadastrar Funcionários </a><br/>

        <form action="<%=Conf.getCaminhoContexto()%>ControleUsuario" method="POST">


            <input type="submit" value="ListarUsuarios" name="acao" >

        </form>


        <%
            if (mostrar != null) {%>
        <table>
            <thead style="background-color:black; color: #FFF">
            <th>Nome</th>
            <th>Login</th>
            <th>Senha</th>
            <th>Ações Relacionadas</th>

        </thead>

        <%
            for (Usuario u : mostrar) {
        %>





        <tr style="background-color:highlight; color: black">
            <td><%=u.getNome()%></td>
            <td><%=u.getLogin()%></td>
            <td><%=u.getSenha()%></td>
            <td><br><a href="<%=Conf.getCaminhoContexto()%>ControleUsuario?acao=buscarUsuarioEdicao&idUsuario=<%=u.getId()%>"</a>Alterar <a href="<%=Conf.getCaminhoContexto()%>ControleUsuario?acao=usuarioExcluido&idUsuario=<%=u.getId()%>"</a>Excluir </br></td>






        </tr>



        <%}%>
    </table>

   
    <%}%>

 <a href="<%=Conf.getCaminhoContexto()%>ControleAcesso?acao=Sair"> Logout</a>   
    <a href="<%=Conf.getCaminhoContexto()%>admin/principal_admin.jsp">Voltar</a>

</body>
</html>
