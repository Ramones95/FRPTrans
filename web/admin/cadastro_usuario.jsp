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
        <title>FRPTRANS- QUALIDADE EM TRANSPORTE</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        
        
        
        <%
            String msg = (String) request.getAttribute("msg");
            if(msg != null){
               
            
        
        
        %>
        <font color="blue"><%=msg %></font>
        <% } %>
        <br>
        <br>
        
        <form action="<%=Conf.getCaminhoContexto()%>ControleUsuario" method="POST">
     <div id="main" class="container-fluid">
      <h3 class="page-header">Cadastro Funcionario </h3>
       <form action="index.html">
  <!-- area de campos do form -->
        <div class="row">
         <div class="form-group col-md-4">
          <label for="campo1">Login </label>
           <input type="text" class="form-control" name="txtLogin">
       </div>
 
 <div class="form-group col-md-4">
   <label for="campo2">Senha</label>
   <input type="password" class="form-control" name="txtSenha">
   </div>
   <div class="form-group col-md-4">
   <label for="campo8">Nome</label>
   <input type="text" class="form-control" name="txtNome">
 </div>
</div>
<div class="row">
  <div class="form-group col-md-4">
    <label for="exampleSelect1">Perfil</label>
    <select class="form-control" name="optperfil">
      <option>MOTORISTA</option>
      <option>ADMINISTRADOR</option>
      <option>FUNC_LOGISTICA</option>
      
    </select>
  </div>
 </div>
           
                 
                 <input type="submit" value="Cadastrar" name="acao" >
            
         </form>
        <br>
        <a href="<%=Conf.getCaminhoContexto()%>admin/manter_func.jsp">Voltar</a>
        
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
    <li><a href="<%=Conf.getCaminhoContexto()%>/admin/principal_admin.jsp">Minha Conta</a></li>
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
