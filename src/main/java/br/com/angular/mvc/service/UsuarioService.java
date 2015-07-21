package br.com.angular.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.angular.mvc.model.Usuario;
import br.com.angular.mvc.repositories.UsuarioRepository;

@Service
public class UsuarioService {

	@Autowired
	private UsuarioRepository usuarioRepository;

	public List<Usuario> getAllUsers() {
		return this.usuarioRepository.getAllUsers();
	}

	public Integer createUser(Usuario usuario) {
		return this.usuarioRepository.createUser(usuario);
	}
}
