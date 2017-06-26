/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.homesport.controller;

import br.com.homesport.dao.UsuarioDAO;
import br.com.homesport.model.Usuario;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author KaioT
 */
@Controller
public class LoginController {

    @RequestMapping("efetuaLogin")
    public String efetuaLogin(Usuario usuario, HttpSession session) {
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        Usuario usuarioRetornoBase = new Usuario();
        if (usuarioDAO.existeUsuario(usuario)) {
            usuarioRetornoBase = usuarioDAO.autenticacao(usuario);
            session.setAttribute("usuarioLogado", usuarioRetornoBase);
            return "index-logado";
        }
        return "ok";
    }

}
