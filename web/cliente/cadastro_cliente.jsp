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
        <title>Cadastro Cliente</title>
    </head>
    <body>
        <h1>Cadastro de clientes </h1>
        
        
        <%
            String msg = (String) request.getAttribute("msg");
            if(msg != null){
               
            
        
        
        %>
        <font color="blue"><%=msg %></font>
        <a href="<%=Conf.getCaminhoContexto()%>login_cliente.jsp">Entrar</a>

        <% } %>
        
        <form action="<%=Conf.getCaminhoContexto()%>ControleCliente" method="POST">
            
            Cpf : <input type="text" name="txtCpf"><br/>
            Nome : <input type="text" name="txtNome"><br/>
            Data de Nascimento:  <input type="date" name="txtData_Nasc"><br/>
            Rg : <input type="text" name="txtRg"><br/>
            Celular : <input type="text" name="txtCelular"><br/>
            Endereço : <input type="text" name="txtEndereco"><br/>
            <br></br>
             <br></br>
              <br></br>
             Login : <input type="text" name="txtLogin"><br/>
             Senha : <input type="password" name="txtSenha"><br/>
            
           
                
                 </select><br/>
                 
                 <input type="submit" value="Cadastrar" name="acao" >
            
         </form>
        <br>
        <a href="<%=Conf.getCaminhoContexto() %>login_cliente.jsp">Voltar</a>
        
        
    </body>
</html>
