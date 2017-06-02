<%-- 
    Document   : cadastro_usuario
    Created on : 23/03/2017, 16:08:31
    Author     : Ramon Cordeiro
--%>

<%@page import="util.Conf"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Àrea de acesso restrito aos administradores</h1>
        <h2>Cadastro de novo usuário </h2>
        
        <%
            String msg = (String) request.getAttribute("msg");
            if(msg != null){
               
            
        
        
        %>
        <font color="blue"><%=msg %></font>
        <% } %>
        
        <form action="<%=Conf.getCaminhoContexto()%>ControleUsuario" method="POST">
            Login : <input type="text" name="txtLogin"><br/>
            Senha : <input type="password" name="txtSenha"><br/>
            Nome : <input type="text" name="txtNome"><br/>
            Perfil: <select name="optPerfil">
                <option>MOTORISTA</option>
                <option>ADMINISTRADOR</option>
                <option>FUNC_LOGISTICA</option>
                
                 </select><br/>
                 
                 <input type="submit" value="Cadastrar" name="acao" >
            
         </form>
        <a href="<%=Conf.getCaminhoContexto()%>/admin/principal_admin.jsp">Página Principal</a>
        <br>
        <a href="<%=Conf.getCaminhoContexto()%>admin/manter_func.jsp">Voltar</a>
        
        
    </body>
</html>
