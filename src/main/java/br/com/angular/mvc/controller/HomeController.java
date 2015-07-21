package br.com.angular.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.angular.mvc.model.Usuario;
import br.com.angular.mvc.service.UsuarioService;

@Controller
@RequestMapping("/home")
public class HomeController {

	@Autowired
	UsuarioService service;

	@RequestMapping("/index")
	@Transactional
	public void index() {
		Usuario usuario = new Usuario();
		usuario.setNome("Bruno");
		usuario.setSobreNome("Carvalho");
		service.createUser(usuario);
		for (Usuario usu : service.getAllUsers()) {
			System.out.println(usu.getId() + usu.getNome());
		}
	}
}
