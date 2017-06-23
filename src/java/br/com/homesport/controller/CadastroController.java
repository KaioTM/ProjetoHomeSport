/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.homesport.controller;

import br.com.homesport.dao.UsuarioDAO;
import br.com.homesport.model.Usuario;
import br.com.homesport.session.HibernateSessionFactory;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author kaio.teixeira
 */
@Controller
public class CadastroController {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @return 
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @RequestMapping("/autocadastro")
    protected String adiciona(Usuario usuario){
        UsuarioDAO cadastroUsuario = new UsuarioDAO();
        System.out.println("Usuario adicionado:" + usuario);
        cadastroUsuario.create(usuario);
//        Session session = HibernateSessionFactory.getSession();
//        try (PrintWriter out = response.getWriter()) {
//        session.beginTransaction();
//        
//        if (request.getParameter("receberHospede").equals("S")){
//            UsuarioDAO cadastroUsuario = new UsuarioDAO();
//            cadastroUsuario.create(request.getParameter("nome"), request.getParameter("sobrenome"), request.getParameter("localMoradia"), request.getParameter("esporteFavorito"), request.getParameter("receberHospede"), request.getParameter("quantidadeHospede"), request.getParameter("login"), request.getParameter("senha"));
////            Usuario usuario = new Usuario(request.getParameter("id"),request.getParameter("nome"), request.getParameter("sobrenome"),request.getParameter("localMoradia"),request.getParameter("esporteFavorito"),request.getParameter("receberHospede"),Integer.parseInt(request.getParameter("quantidadeHospede")));
////            request.setAttribute("usuario", usuario);
////            session.save(usuario);
//
//        }else{
//            UsuarioDAO cadastroUsuario = new UsuarioDAO();
//            cadastroUsuario.create(request.getParameter("nome"), request.getParameter("sobrenome"), request.getParameter("localMoradia"), request.getParameter("esporteFavorito"), request.getParameter("receberHospede"), request.getParameter("login"), request.getParameter("senha"));
//        }
//        
//        
//        session.getTransaction().commit();
//        session.close();

        return "ok";
        //view.forward(request, response);
        }
    }


