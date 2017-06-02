<%-- 
    Document   : principal_cliente
    Created on : 14/04/2017, 00:45:16
    Author     : Ramon Cordeiro
--%>

<%@page import="java.util.List"%>
<%@page import="util.Conf"%>
<%@page import="model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //recupera o usuario da sessao

            Cliente cliente = (Cliente) session.getAttribute("clienteAutenticado");
            List<Cliente> mostrar = (List<Cliente>) request.getAttribute("retornaCliente");

            if (cliente != null && mostrar == null) {
        %>
        <h1>Bem-Vindo, <%= cliente.getLogin()%> !  </h1> 

        <h3>Diite seu CPF para consulta de seus dados</h3>
        <form action="<%=Conf.getCaminhoContexto()%>ControleCliente" method="POST">
            Cpf : <input type="text" name="txtCpf"><br/>

            <input type="submit" value="Consultar" name="acao" >

        </form>
        <a href="<%=Conf.getCaminhoContexto()%>ControleAcessoCliente?acao=Sair"> Logout</a>






        <%} else if (cliente != null && mostrar != null) {    %>

        <table>
             <thead style="background-color:black; color: #FFF">
            <th>Nome</th>
            <th>Data de nascimento</th>
            <th>Rg</th>
            <th>Celular</th>
            <th>Endereço</th>
            <th>Ações Relacionadas</th>

        </thead>

        <%
            for (Cliente r : mostrar) {
        %>

        <h1>Meus Dados:</h1> 



        <tr style="background-color:highlight; color: black">
            <td><%=r.getNome()%></td>
            <td><%=r.getData_nasc()%></td>
            <td><%=r.getRg()%></td>
            <td><%=r.getCelular()%></td>
            <td><%=r.getEndereco()%></td>
            <td><br><a href="<%=Conf.getCaminhoContexto()%>ControleCliente?acao=BuscarClienteEdicao&idCliente=<%=r.getId()%>">Alterar</a></br></td>








        </tr>


        <%}%>
    </table>
    <br></br>
    <a href="<%=Conf.getCaminhoContexto()%>/cliente/principal_cliente.jsp"/>Voltar</a>

<%}%>





</body>
</html>
