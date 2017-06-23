/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.homesport.dao;

import br.com.homesport.connection.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import br.com.homesport.model.Usuario;

/**
 *
 * @author KaioT
 */
public class UsuarioDAO {
    private EntityManager Em;
    
    public EntityManager getEm() {
        return Em;
    }

    public void setEm(EntityManager Em) {
        this.Em = Em;
    }
        
    
    public void create(Usuario usuario){
        
        PreparedStatement sql;
        try {
            sql = ConnectionFactory.getConnection().prepareStatement(
                    "INSERT INTO USUARIO (NOME,SOBRENOME,LOCALMORADIA,ESPORTEFAVORITO,RECEBERHOSPEDE,QUANTIDADEHOSPEDE,LOGIN,SENHA) values(?,?,?,?,?,?,?,?)");
            sql.setString(1, usuario.getNome());
            sql.setString(2, usuario.getSobrenome());
            sql.setString(3, usuario.getLocalMoradia());
            sql.setString(4, usuario.getEsporteFavorito());
            sql.setString(5, usuario.getReceberHospede());
            sql.setString(6, Integer.toString(usuario.getQuantidadeHospede()));
            sql.setString(7, usuario.getLogin());
            sql.setString(8, usuario.getSenha());
            
            sql.execute();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void create(String nome,String sobreNome,String localMoradia,String esporteFavorito,String receberHospede,String login,String senha){
        
        PreparedStatement sql;
        try {
            sql = ConnectionFactory.getConnection().prepareStatement(
                    "INSERT INTO USUARIO (NOME,SOBRENOME,LOCALMORADIA,ESPORTEFAVORITO,RECEBERHOSPEDE,LOGIN,SENHA) values(?,?,?,?,?,?,?)");
            sql.setString(1, nome);
            sql.setString(2, sobreNome);
            sql.setString(3, localMoradia);
            sql.setString(4, esporteFavorito);
            sql.setString(5, receberHospede);
            sql.setString(6, login);
            sql.setString(7, senha);
            sql.execute();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }    
    
    public Usuario autenticacao (String login, String senha){
        Usuario usuarioRetorno = null;
        PreparedStatement sql;
        try {
            sql = ConnectionFactory.getConnection().prepareStatement(
                    "SELECT * FROM USUARIO WHERE LOGIN=? and SENHA=?");
            sql.setString(1, login);
            sql.setString(2, senha);
            ResultSet resultado = sql.executeQuery();
            if(resultado.next()){
                usuarioRetorno = new Usuario(resultado.getInt(1),resultado.getString(2),resultado.getString(3),resultado.getString(4),resultado.getString(5),resultado.getString(6),resultado.getInt(7),resultado.getString(8),resultado.getString(9));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return usuarioRetorno;
    }

     public List<Usuario> consultarTodos() throws SQLException {
        EntityManager em = getEm();
        List<Usuario> usuarios; 
        
        try{
        Query q = em.createNamedQuery("Usuario.findAll");
        usuarios = q.getResultList();
        } catch (Exception e){
            usuarios = new ArrayList();
        } finally {
            em.close();
        }
        return usuarios;
    }
     
    public Usuario consultarUserid(int usuarioId) throws SQLException {
        Usuario usuarioRetorno = null;
        PreparedStatement sql;
        try {
            sql = ConnectionFactory.getConnection().prepareStatement(
                    "SELECT * FROM USUARIO WHERE USUARIOID=?");
            sql.setInt(1, usuarioId);
            ResultSet resultado = sql.executeQuery();
            if(resultado.next()){
                usuarioRetorno = new Usuario(resultado.getInt(1),resultado.getString(2),resultado.getString(3),resultado.getString(4),resultado.getString(5),resultado.getString(6),resultado.getInt(7),resultado.getString(8),resultado.getString(9));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return usuarioRetorno;
    }
    public boolean existeUsuario(Usuario usuario){
        boolean existe = false;
        
        PreparedStatement sql;
        try {
            sql = ConnectionFactory.getConnection().prepareStatement(
                    "SELECT * FROM USUARIO WHERE LOGIN=? and SENHA=?");
            sql.setString(1, usuario.getLogin());
            sql.setString(2, usuario.getSenha());
            ResultSet resultado = sql.executeQuery();
            if(resultado.next()){
                existe = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return existe;
    }

}