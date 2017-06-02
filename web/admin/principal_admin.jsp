<%-- 
    Document   : principal
    Created on : 23/03/2017, 16:10:44
    Author     : Ramon Cordeiro
--%>

<%@page import="util.Conf"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina principal </title>
    </head>
    <body>
        <%
            //recupera o usuario da sessao
            
            Usuario usuario  = (Usuario) session.getAttribute("usuarioAutenticado");
            
            if(usuario !=null){
         %>
          <h1>Bem-Vindo, <%= usuario.getLogin() %> !  </h1> 
          
          <%}%>
          
          <a href="manter_func.jsp"> Manter Funcionários</a><br/>
          <a href="manter_cliente.jsp"> Manter Clientes</a><br/>
          <a href="<%=Conf.getCaminhoContexto()%>ControleAcesso?acao=Sair"> Logout</a>
        
        
        
    </body>
</html>
