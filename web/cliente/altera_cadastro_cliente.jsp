<%-- 
    Document   : altera_cadastro_cliente
    Created on : 27/04/2017, 08:34:45
    Author     : Ramon Cordeiro
--%>

<%@page import="java.lang.String"%>
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
            Cliente cliente = (Cliente) request.getAttribute("clienteEdicao");
        %>
        
        <h1>Altere seus dados</h1>
        
        <form action="<%=Conf.getCaminhoContexto()%>ControleCliente" method="POST">
            Nome: <input type="text" name="txtNome" value="<%=cliente.getNome()%>"><br/>
            Data de Nascimento: <input type="text" name="txtData_Nasc"value="<%=cliente.getData_nasc()%>"><br/>
            Rg: <input type="text" name="txtRg" value="<%=cliente.getRg()%>"><br/>
            Celular: <input type="text" name="txtCelular"value="<%=cliente.getCelular()%>"><br/>
            Endereco: <input type="text" name="txtEndereco"value="<%=cliente.getEndereco()%>"><br/>
            <input type="text" hidden name ="txtCpf"value="<%=cliente.getCpf()%>"></br>
            <br></br>
            <br></br>
            
           <input type="submit" value="Alterar" name="acao" >
            <a href="<%=Conf.getCaminhoContexto()%>cliente/principal_cliente.jsp">Voltar</a>
            
            
            
        </form>
    </body>
</html>
