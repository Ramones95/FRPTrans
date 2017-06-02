<%-- 
    Document   : altera_cadastro_cliente
    Created on : 27/04/2017, 08:34:45
    Author     : Ramon Cordeiro
--%>

<%@page import="model.Usuario"%>
<%@page import="model.Usuario"%>
<%@page import="model.Cliente"%>
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
            Usuario usuario = (Usuario) request.getAttribute("usuarioEdicao");
        %>
        <h1>Altere seus dados</h1>
        
        <form action="<%=Conf.getCaminhoContexto()%>ControleUsuario" method="POST">
             Nome: <input type="text" name="txtNome" value="<%=usuario.getNome()%>"><br/>
             Login: <input type="text" name="txtLogin" value="<%=usuario.getLogin()%>"><br/>
             Senha: <input type="text" name="txtSenha" value="<%=usuario.getSenha()%>"><br/>
          
             <input type="text" hidden name ="txtId"value="<%=usuario.getId()%>"></br>
            <br></br>
            <br></br>
            
       
                             
             <input type="submit" value="Alterar" name="acao" > 
            <a href="<%=Conf.getCaminhoContexto()%>admin/manter_cliente.jsp">Voltar</a>
           
           
            
            
            
        </form>
    </body>
</html>
