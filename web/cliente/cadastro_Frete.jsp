<%-- 
    Document   : cadastro_Frete
    Created on : 03/05/2017, 13:56:56
    Author     : Ramon Cordeiro
--%>

<%@page import="util.Conf"%>
<%@page import="model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Frete</title>
       <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
       <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <%Cliente cliente = (Cliente) session.getAttribute("clienteAutenticado"); %>
        <br>
        <br>
        <form action="<%=Conf.getCaminhoContexto()%>ControleOrdemServico" method="POST">
       <div id="main" class="container-fluid">
       <h3 class="page-header">Envio</h3>
        <div id="main" class="container-fluid">
        <h3>Informe o endereço de origem </h3>
        <div class="row">
         <div class="form-group col-md-4">
        <label for="campo1">CEP </label>
           <input type="text" class="form-control" name="txtCep_O"><br/>
        </div>
        <div class="row">
         <div class="form-group col-md-4">
          <label for="campo2">Rua </label>
           <input type="text" class="form-control" name="txtRua_O"><br/>
         </div>
        <div class="row">
         <div class="form-group col-md-4">
          <label for="campo3">Numero </label>
           <input type="number" class="form-control" name="txtNumero_O"><br/>
        </div>
        </div>
        </div>
            </div>
          <div class="row">
           <div class="form-group col-md-4">
            <label for="campo4">Cidade </label>
             <input type="text" class="form-control" name="txtCidade_O"><br/>
        </div>
          <div class="row">
           <div class="form-group col-md-4">
            <label for="campo5">Bairro </label>
             <input type="text" class="form-control" name="txtBairro_O"><br/>
        </div>	
          </div>
          </div>
              <h3> Informe o endereço de destino </h3>
          <div class="row">
          <div class="form-group col-md-4">
           <label for="campo6">CEP </label>
           <input type="text" class="form-control" name="txtCep_D"><br/>
        </div>
        <div class="row">
         <div class="form-group col-md-4">
         <label for="campo7">Rua </label>
        <input type="text" class="form-control" name="txtRua_D"><br/>
         </div>
         <div class="row">
        <div class="form-group col-md-4">
         <label for="campo8">Numero </label>
         <input type="number" class="form-control" name="txtNumero_D"><br/>
        </div>   
         </div>
            </div>
              </div>
        <div class="row">
         <div class="form-group col-md-4">
          <label for="campo9">Cidade </label>
           <input type="text" class="form-control" name="txtCidade_D"><br/>
        </div>
        <div class="row">
         <div class="form-group col-md-4">
          <label for="campo10">Bairro </label>
           <input type="text" class="form-control" name="txtBairro_D"><br/>
        </div>
        </div>   
        </div>
       </div>
       <br>
        <h3>Informe as dimensões do pacote para envio</h3>
        <div class="row">
          <div class="form-group col-md-4">
           <label for="campo11">Altura </label>
            <input type="number" class="form-control" name="txtAltura"><br/>
        </div> 
        <div class="row">
          <div class="form-group col-md-4">
           <label for="campo12">Comprimento </label>
            <input type="number" class="form-control" name="txtComprimento"><br/>
         </div>
        <div class="row">
         <div class="form-group col-md-4">
          <label for="campo13">Largura </label>
           <input type="number" class="form-control" name="txtComprimento"><br/>
        </div>
        </div>
       </div>
        </div>
            
        <div class="row">
         <div class="form-group col-md-4">
          <label for="campo14">Data Partida </label>
           <input type="date" class="form-control" name="txtDataPartida"><br/>
        </div>
        <div class="row">
         <div class="form-group col-md-4">
          <label for="campo15">KM Percorrido </label>
           <input type="number" class="form-control" name="txtKmPercorrido"><br/>
         </div>
        </div>
        </div>
            </div>
            <input type="text" hidden name ="txtIdCliente" value="<%=cliente.getId()%>"></br>
             <input type="submit"  value="Cadastrar" name="acao" >
        </div>
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
</div>
</nav>
       <!-- jQuery (necessario para os plugins Javascript do Bootstrap) -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
          </form>

         </body>
           </html>
