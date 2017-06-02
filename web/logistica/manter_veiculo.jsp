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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            List<Veiculo> mostrar = (List<Veiculo>) request.getAttribute("retornaTodosVeiculos"); 
        %>

        <h1>Manter Veiculos</h1>

        <a href="<%=Conf.getCaminhoContexto()%>logistica/cadastro_veiculo.jsp">Cadastro de Veículos</a>

        <form action="<%=Conf.getCaminhoContexto()%>ControleVeiculo" method="POST">


            <input type="submit" value="ConsultarTodos" name="acao" >

        </form>

        <%
            if (mostrar != null) {%>
            <table>
            <thead style="background-color:black; color: #FFF">
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

        
        <tr style="background-color:highlight; color: black">
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
        
        <a href="<%=Conf.getCaminhoContexto()%>ControleAcesso?acao=Sair"> Logout</a>
        <a href="<%=Conf.getCaminhoContexto()%>logistica/principal_func_logistica.jsp"> voltar</a>

    </body>
</html>
