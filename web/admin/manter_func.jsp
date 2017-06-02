<%-- 
    Document   : manter_func
    Created on : 27/04/2017, 14:45:07
    Author     : Ramon Cordeiro
--%>

<%@page import="java.util.List"%>
<%@page import="model.Usuario"%>
<%@page import="util.Conf"%>
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

            List<Usuario> mostrar = (List<Usuario>) request.getAttribute("retornaTodosUsuarios");

        %>
        <br>
        <br>
        <br>
        <br>
        <h1>Manter Funcionários </h1>

        <button> <a href="<%=Conf.getCaminhoContexto()%>/admin/cadastro_usuario.jsp"> Cadastrar Funcionários </a><br/> </button>

        <form action="<%=Conf.getCaminhoContexto()%>ControleUsuario" method="POST">


            <input type="submit" value="ListarUsuarios" name="acao" >

        </form>


        <%
            if (mostrar != null) {%>
        <table>
            <thead style="background-color:black; color: #FFF">
            <th>Nome</th>
            <th>Login</th>
            <th>Senha</th>
            <th>Ações Relacionadas</th>

        </thead>

        <%
            for (Usuario u : mostrar) {
        %>





        <tr style="background-color:highlight; color: black">
            <td><%=u.getNome()%></td>
            <td><%=u.getLogin()%></td>
            <td><%=u.getSenha()%></td>
            <td><br><a href="<%=Conf.getCaminhoContexto()%>ControleUsuario?acao=buscarUsuarioEdicao&idUsuario=<%=u.getId()%>"</a>Alterar <a href="<%=Conf.getCaminhoContexto()%>ControleUsuario?acao=usuarioExcluido&idUsuario=<%=u.getId()%>"</a>Excluir </br></td>






        </tr>



        <%}%>
    </table>

   
    <%}%>

   
    <button><a href="<%=Conf.getCaminhoContexto()%>admin/principal_admin.jsp">Voltar</a></button>
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
