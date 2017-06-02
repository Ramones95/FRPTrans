<%-- 
    Document   : altera_cadastro_veiculo
    Created on : 12/05/2017, 11:00:36
    Author     : Ramon Cordeiro
--%>

<%@page import="util.Conf"%>
<%@page import="model.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FRPTRANS - QUALIDADE EM TRANSPORTE</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <%
            Veiculo veiculo = (Veiculo) request.getAttribute("veiculoEdicao");
        %>
        <br>
        <br>
        <br>
        <br>
        <h1>Altere os dados de Veiculo</h1>

        <form action="<%=Conf.getCaminhoContexto()%>ControleVeiculo" method="POST">
 <div class="row">
 <div class="form-group col-md-4">
   <label for="campo1">Marca </label>
   <input type="text" value="<%=veiculo.getMarca()%>" class="form-control" name="txtMarca">
 </div>
 
 <div class="form-group col-md-4">
   <label for="campo2">Modelo</label>
   <input type="text" value="<%=veiculo.getModelo()%>" class="form-control" name="txtModelo">
   </div>
   <div class="form-group col-md-4">
   <label for="campo8">Cor</label>
   <input type="text" value="<%=veiculo.getCor()%>" class="form-control" name="txtCor">
 </div>
</div>
<div class="row">
 <div class="form-group col-md-4">
   <label for="campo4">Placa</label>
   <input type="text" value="<%=veiculo.getPlaca()%>" class="form-control" name="txtPlaca">
 </div>
 
 <div class="form-group col-md-4">
   <label for="campo5">Dimensoes</label>
   <input type="text"  value="<%=veiculo.getDimensaoVeiculo()%>" class="form-control" name="txtDimensaoVeiculo">
 </div>
 <div class="form-group col-md-4">
   <label for="campo6">Data Revisão</label>
   <input type="Date" value="<%=veiculo.getData_revisao()%>" class="form-control" name="txtData_revisao">
 </div>
 
 </div>
<div class="row">
 <div class="form-group col-md-4">
   <label for="campo9">Status</label>
   <input type="text" value="<%=veiculo.getStatus()%>" class="form-control" name="txtStatus">
 </div>
 <div class="form-group col-md-4">
   <label for="campo9">Ano</label>
   <input type="Date" value="<%=veiculo.getAno()%>" class="form-control" name="txtAno">
 </div>
 <div class="form-group col-md-4">
   <label for="campo9">Tipo</label>
   <input type="text" value="<%=veiculo.getTipo()%>" class="form-control" name="txtTipo">
 </div>
</div>
            
            <input type="text" hidden name ="txtId"value="<%=veiculo.getId()%>"></br>
            <br></br>
            <br></br>



            <input type="submit" value="Alterar" name="acao" > 
            <button> <a href="<%=Conf.getCaminhoContexto()%>logistica/manter_veiculo.jsp">Voltar</a> </button>





        </form>
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
