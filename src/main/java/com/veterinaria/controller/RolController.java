package com.veterinaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Rol;
import com.veterinaria.service.RolService;

@Controller
public class RolController {
	
	@Autowired
	private RolService service;
	
	@RequestMapping("/listaRol")
	@ResponseBody
	public List<Rol> listaRol() {
		return service.listaRol();
	}
	
	@RequestMapping("/listaRolPorUsuario")
	@ResponseBody
	public List<Rol> listaRolPorUsuario(Integer codigo_usuario) {
		return service.listaRolPorUsuario(codigo_usuario);
	}
	
}
