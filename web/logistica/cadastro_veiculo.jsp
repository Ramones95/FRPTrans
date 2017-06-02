<%-- 
    Document   : cadastro_veiculo
    Created on : 05/05/2017, 19:00:14
    Author     : Ramon Cordeiro
--%>

<%@page import="util.Conf"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Veiculos</title>
    </head>
    <body>
        
        <h1>Cadastro de veículos</h1>

        <%
            String msg = (String) request.getAttribute("msg");
            if (msg != null) {


        %>
        <font color="blue"><%=msg%></font>
        <% }%>

        <form action="<%=Conf.getCaminhoContexto()%>ControleVeiculo" method="POST">

            Marca : <input type="text" name="txtMarca"><br/>
            Modelo : <input type="text" name="txtModelo"><br/>
            Data Revisão:  <input type="date" name="txtData_revisao"><br/>
            Placa: <input type="text" name="txtPlaca"><br/>
            Dimensão : <input type="text" name="txtDimensaoVeiculo"><br/>
            Cor : <input type="text" name="txtCor"><br/>
            Status : <input type="text" name="txtStatus"><br/>
            Ano : <input type="text" name="txtAno"><br/>
            Tipo : <input type="text" name="txtTipo"><br/>
            <br></br>
            <br></br>
            <br></br>
          



        </select><br/>

        <input type="submit" value="Cadastrar" name="acao" >

    </form>
           <a href="<%=Conf.getCaminhoContexto()%>logistica/manter_veiculo.jsp">Voltar</a>
</body>
</html>
