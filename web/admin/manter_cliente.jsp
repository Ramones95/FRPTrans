<%-- 
    Document   : manter_cliente_jsp
    Created on : 27/04/2017, 14:42:52
    Author     : Ramon Cordeiro
--%>

<%@page import="java.util.List"%>
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
        <h1>Manter Clientes</h1>
        
          <%
           
            List<Cliente> mostrar = (List<Cliente>) request.getAttribute("retornaTodosClientes");
            
          %>
       
        

       
        <form action="<%=Conf.getCaminhoContexto()%>ControleCliente" method="POST">
           

            <input type="submit" value="ListarClientes" name="acao" >

        </form>
         
             
             
             <%
                 if(mostrar != null){%>
                  
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
                  for (Cliente c : mostrar) {
        %>
                 
            
          <tr style="background-color:highlight; color: black">
                <td><%=c.getNome()%></td>
                <td><%=c.getData_nasc()%></td>
                <td><%=c.getRg()%></td>
                <td><%=c.getCelular()%></td>
                <td><%=c.getEndereco()%></td>
                <td><br><a href="<%=Conf.getCaminhoContexto()%>ControleCliente?acao=buscarClienteEdicaoAdm&idCliente=<%=c.getId()%>"</a>Alterar <a href="<%=Conf.getCaminhoContexto()%>ControleCliente?acao=clienteExcluido&idCliente=<%=c.getId()%>"</a>Excluir </br></td>
                
                        
                    
                    
        
                    
               
                
                
            </tr>
   
                
                
                <%}%>
                        </table>
         
                  <%}%>
                  
                  <a href="<%=Conf.getCaminhoContexto()%>ControleAcesso?acao=Sair"> Logout</a>   
                  <a href="<%=Conf.getCaminhoContexto()%>admin/principal_admin.jsp">Voltar</a>
            
    </body>
</html>
