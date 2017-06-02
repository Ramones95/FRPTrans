<%-- 
    Document   : principal_func_logistica
    Created on : 08/04/2017, 14:27:50
    Author     : Ramon Cordeiro
--%>

<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal_Func_Logistica</title>
    </head>
    <body>
        <%
            //recupera o usuario da sessao
            
            Usuario usuario  = (Usuario) session.getAttribute("usuarioAutenticado");
            
            if(usuario !=null){
         %>
         
         <h1>Bem-Vindo, <%= usuario.getLogin() %> Esta é uma tela para funcionários da Logística  !  </h1> 
          
         
        <br> <a href="manter_veiculo.jsp">Manter Veículos</a></br>
         
         <%}%>
         
         
         <a href="ControleAcesso?acao=Sair"> Logout</a>
    </body>
</html>
