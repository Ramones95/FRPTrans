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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadasrto de Frete</title>
    </head>
    <body>
        <%Cliente cliente = (Cliente) session.getAttribute("clienteAutenticado"); %>
        
       
       
        
       
         <form action="<%=Conf.getCaminhoContexto()%>ControleOrdemServico" method="POST">
        <h1>Cadastre seu Frete !!!</h1>
        <h3>Informe o endereço de origem </h3>
        Cep : <input type="text" name="txtCep_O"><br/>
        Rua : <input type="text" name="txtRua_O"><br/>
        Número : <input type="number" name="txtNumero_O"><br/>
        Cidade : <input type="text" name="txtCidade_O"><br/>
        Bairro : <input type="text" name="txtBairro_O"><br/>
        
        <h3>Informe o endereço de destino </h3>
        Cep : <input type="text" name="txtCep_D"><br/>
        Rua : <input type="numer" name="txtRua_D"><br/>
        Número : <input type="text" name="txtNumero_D"><br/>
        Bairro : <input type="text" name="txtBairro_D"><br/>
        Cidade : <input type="text" name="txtCidade_D"><br/>
        
        <h3>Informe as dimensões do pacote para envio</h3>
        Altura: <input type="number" name="txtAltura"><br/>
        Comprimento: <input type="number" name="txtComprimento"><br/>
        Largura <input type="number" name="txtComprimento"><br/>
        
        Data Partida: <input type="date" name="txtDataPartida"><br/>
        KM Percorrido: <input type="number" name="txtKmPercorrido"><br/>
      
        
       <input type="text" hidden name ="txtIdCliente"value="<%=cliente.getId()%>"></br> 
       
        
           

            <input type="submit"  value="Cadastrar" name="acao" >

        </form>


         </body>
</html>
