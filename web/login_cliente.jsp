<%-- 
    Document   : login_cliente
    Created on : 18/04/2017, 09:51:25
    Author     : Ramon Cordeiro
--%>

<%@page import="util.Conf"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Cliente</title>
    </head>
    <body>
         <body>
        
        <h1>Autenticação de Cliente </h1>
        
        <%
           String msg = (String) request.getAttribute("msg");
           if(msg!=null){
               
           
         %>
         
         <font color="red"> <%=msg%></font>
         <% } %>
         
         
         <form action="ControleAcessoCliente" method="POST">
             
             Login: <input type="text" name="txtLogin"><br />
             Senha: <input type="password" name="txtSenha"><br />
             <input type="submit" value="Entrar" name="acao">
             
         </form>
         <h3> Não possui cadastro ? Então 
         <a href="<%=Conf.getCaminhoContexto()%>cliente/cadastro_cliente.jsp">cadastre-se aqui!!</a></h3>
        
         
           

    </body>
    </body>
</html>
