<%-- 
    Document   : principal
    Created on : 23/03/2017, 16:10:44
    Author     : Ramon Cordeiro
--%>

<%@page import="util.Conf"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina principal </title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        
        <%
            //recupera o usuario da sessao
            
            Usuario usuario  = (Usuario) session.getAttribute("usuarioAutenticado");
            
            if(usuario !=null){
         %>
         <br>
         <br>
         <br>
         <br>
          <h1>Bem-Vindo, <%= usuario.getLogin() %> !  </h1> 
          
          <%}%>
          
          <button> <a href="manter_func.jsp"> Manter Funcionários</a><br/></button>
          <button><a href="manter_cliente.jsp"> Manter Clientes</a><br/></button>
          <br>
          <br>
                 
                 
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
    <li><a href="<%=Conf.getCaminhoContexto()%>ControleAcesso?acao=Sair">Sair</a></li>
	


   </ul>
  </div>
 </div>
</nav>
  

  <!-- jQuery (necessario para os plugins Javascript do Bootstrap) -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
        
        
    </body>
</html>
