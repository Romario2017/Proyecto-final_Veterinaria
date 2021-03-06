package com.veterinaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Marca;
import com.veterinaria.service.MarcaService;

@Controller
public class MarcaController {
	
	@Autowired
	private MarcaService service;
	
	@RequestMapping("/listaMarca")
	@ResponseBody
	public List<Marca> listaMarca() {
		return service.listaMarca();
	}
}
