<%-- 
    Document   : manter_veiculo
    Created on : 05/05/2017, 18:50:35
    Author     : Ramon Cordeiro
--%>

<%@page import="util.Conf"%>
<%@page import="model.Veiculo"%>
<%@page import="java.util.List"%>
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

            List<Veiculo> mostrar = (List<Veiculo>) request.getAttribute("retornaTodosVeiculos"); 
        %>
        <br>
        <br>
        <br>
        <br>
        <br>
        
        <h1>Manter Veiculos</h1>

        <button> <a href="<%=Conf.getCaminhoContexto()%>logistica/cadastro_veiculo.jsp">Cadastro de Veículos</a> </button>

        <form action="<%=Conf.getCaminhoContexto()%>ControleVeiculo" method="POST">


            <input type="submit" value="ConsultarTodos" name="acao" >

        </form>

        <%
            if (mostrar != null) {%>
            <div class="table-responsive">
             <table class="table table-striped table-bordered table-hover">
            <thead>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Cor</th>
            <th>Placa</th>
            <th>Dimensao</th>
            <th>Data_revisao</th>
            <th>Status</th>
            <th>Ano</th>



            <th>Ações Relacionadas</th>
        </thead>
<%

                for (Veiculo v : mostrar) {
        %>

        
        
                <td><%=v.getMarca()%></td>
                <td><%=v.getModelo()%></td>
                <td><%=v.getCor()%></td>
                <td><%=v.getPlaca()%></td>
                <td><%=v.getDimensaoVeiculo()%></td>
                <td><%=v.getData_revisao()%></td>
                <td><%=v.getStatus()%></td>
                <td><%=v.getAno()%></td>
                <td><br><a href="<%=Conf.getCaminhoContexto()%>ControleVeiculo?acao=buscarVeiculoEdicao&idVeiculo=<%=v.getId()%>"</a>Alterar <a href="<%=Conf.getCaminhoContexto()%>ControleVeiculo?acao=veiculoExcluido&idVeiculo=<%=v.getId()%>"</a>Excluir </br></td>


            </tr>
       

        <%}%>
        </table>
        
        <%}%>
        
        <button> <a href="<%=Conf.getCaminhoContexto()%>ControleAcesso?acao=Sair"> Logout</a> </button>
        <button> <a href="<%=Conf.getCaminhoContexto()%>logistica/principal_func_logistica.jsp"> voltar</a> </button>

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
    <li><a href="#">Ajuda</a></li>
    

     </ul>
  </div>
  </div>
</nav>
        <!-- jQuery (necessario para os plugins Javascript do Bootstrap) -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
      
    </body>
</html>
