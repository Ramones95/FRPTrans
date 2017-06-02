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
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FRPTRANS - QUALIDADE EM TRANSPORTE</title>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
       <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <%
            //recupera o usuario da sessao

            Cliente cliente = (Cliente) session.getAttribute("clienteAutenticado");
            List<Cliente> mostrar = (List<Cliente>) request.getAttribute("retornaCliente");

            if (cliente != null && mostrar == null) {
        %>
        <br>
        <br>
        <br>
        <br>
        <h1>Bem-Vindo, <%= cliente.getLogin()%> !  </h1> 

        <h3>Digite seu CPF para consulta de seus dados</h3>
        <form action="<%=Conf.getCaminhoContexto()%>ControleCliente" method="POST">
            Cpf : <input type="text" name="txtCpf"><br/>

            <input type="submit" value="Consultar" name="acao" >

        </form>
        <a href="<%=Conf.getCaminhoContexto()%>ControleAcessoCliente?acao=Sair"> Logout</a>






        <%} else if (cliente != null && mostrar != null) {    %>

        <div class="table-responsive">
           <table class="table table-striped table-bordered table-hover">
             <thead>
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
    <button> <a href="<%=Conf.getCaminhoContexto()%>/cliente/principal_cliente.jsp"/>Voltar</a> </button>

<%}%>
 <nav class="navbar navbar-inverse navbar-fixed-top">
  <div id="main" class="container-fluid">
  <div class="navbar-header">
 
   <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
    <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
   </button>
   <a class="navbar-brand" href="#">FRPTRANS</a>
  </div>
  <div id="navbar" class="navbar-collapse collapse">
   <ul class="nav navbar-nav navbar-right">
    <li><a href="#">Início</a></li>
    <li><a href="#">Opções</a></li>
    <li><a href="#">Minha Conta</a></li>
    <li><a href="<%=Conf.getCaminhoContexto()%>ControleAcessoCliente?acao=Sair">Sair</a></li>
    

     </ul>
  </div>
  </div>
</nav>
        <!-- jQuery (necessario para os plugins Javascript do Bootstrap) -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>




</body>
</html>
