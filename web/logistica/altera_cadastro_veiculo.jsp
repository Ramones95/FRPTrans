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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Veiculo veiculo = (Veiculo) request.getAttribute("veiculoEdicao");
        %>
        <h1>Altere os dados de Veiculo</h1>

        <form action="<%=Conf.getCaminhoContexto()%>ControleVeiculo" method="POST">
            Marca: <input type="text" name="txtMarca" value="<%=veiculo.getMarca()%>"><br/>
            Modelo: <input type="text" name="txtModelo" value="<%=veiculo.getModelo()%>"><br/>
            Cor: <input type="text" name="txtCor" value="<%=veiculo.getCor()%>"><br/>
            Placa: <input type="text" name="txtPlaca" value="<%=veiculo.getPlaca()%>"><br/>
            Dimensao: <input type="number" name="txtDimensaoVeiculo" value="<%=veiculo.getDimensaoVeiculo()%>"><br/>
            Data Revisão:  <input type="date" name="txtData_revisao" value="<%=veiculo.getData_revisao()%>"><br/>
            Status: <input type="text" name="txtStatus" value="<%=veiculo.getStatus()%>"><br/>
            Ano: <input type="text" name="txtAno" value="<%=veiculo.getAno()%>"><br/>
            Tipo: <input type="text" name="txtTipo" value="<%=veiculo.getTipo()%>"><br/>

            <input type="text" hidden name ="txtId"value="<%=veiculo.getId()%>"></br>
            <br></br>
            <br></br>



            <input type="submit" value="Alterar" name="acao" > 
            <a href="<%=Conf.getCaminhoContexto()%>logistica/manter_veiculo.jsp">Voltar</a>





        </form>



    </body>
</html>
