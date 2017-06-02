/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import util.ConectaBanco;

/**
 *
 * @author Ramon Cordeiro
 */
public class Ordem_ServicoDAO {

    private static final String CADASTRA_ORDEM_SERVICO_PARCIAL_CLIENTE = "insert into ordem_servico (cliente,data_partida,endereco_origem,endereco_destino,dimensao_pacote,km_percorrido)values (?,?,?,?,?,?) returning id";
    private static final String ATUALIZA_VALOR_FRETE = "UPDATE ordem_servico set valor_viagem = ? where id = ? ";
    private static final String ATUALIZA_VEICULO_FRETE = "UPDATE ordem_servico set veiculo = ? where id = ? ";

    public void cadastrarOrdemServico(Ordem_Servico os, Endereco_Viagem endereco_origem, Endereco_Viagem endereco_destino, Pacote pacote, Cliente cliente) {
        Connection conexao = null;
        PreparedStatement pstmt = null;
        try {
            conexao = ConectaBanco.getConexao();
            pstmt = conexao.prepareStatement(CADASTRA_ORDEM_SERVICO_PARCIAL_CLIENTE);
            pstmt.setInt(1, cliente.getId());
            pstmt.setString(2, os.getData_partida());
            pstmt.setInt(3, endereco_origem.getId());
            pstmt.setInt(4, endereco_destino.getId());
            pstmt.setInt(5, pacote.getId());
            pstmt.setDouble(6, os.getKm_percorrido());

           ResultSet resultadoPk = pstmt.executeQuery(); 
           
           if(resultadoPk.next()){
                    os.setId(resultadoPk.getInt("id"));
                }
            

        } catch (SQLException sqlErro) {
            throw new RuntimeException(sqlErro);
        } finally {
            if (conexao != null) {
                try {
                    conexao.close();
                } catch (SQLException ex) {
                    throw new RuntimeException(ex);

                }
            }
        }

    }

    public Ordem_Servico setValorViagem(Ordem_Servico os) {

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            //Cria uma conexão com o banco
            conn = ConectaBanco.getConexao();

            //Cria um PreparedStatment, classe usada para executar a query
            pstm = conn.prepareStatement(ATUALIZA_VALOR_FRETE);

            pstm.setDouble(1, os.getValor_viagem());

            pstm.setInt(2, os.getId());

            pstm.execute();

        } catch (Exception e) {

            e.printStackTrace();
        } finally {

            //Fecha as conexões
            try {
                if (pstm != null) {

                    pstm.close();
                }

                if (conn != null) {
                    conn.close();
                }

            } catch (Exception e) {

                e.printStackTrace();
            }
        }
        return os;
    }
     public Ordem_Servico setVeiculoViagem(Ordem_Servico os, Veiculo veiculo) {

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            //Cria uma conexão com o banco
            conn = ConectaBanco.getConexao();

            //Cria um PreparedStatment, classe usada para executar a query
            pstm = conn.prepareStatement(ATUALIZA_VEICULO_FRETE);

            pstm.setInt(1, veiculo.getId());

            pstm.setInt(2, os.getId());

            pstm.execute();

        } catch (Exception e) {

            e.printStackTrace();
        } finally {

            //Fecha as conexões
            try {
                if (pstm != null) {

                    pstm.close();
                }

                if (conn != null) {
                    conn.close();
                }

            } catch (Exception e) {

                e.printStackTrace();
            }
        }
        return os;
    }

}


