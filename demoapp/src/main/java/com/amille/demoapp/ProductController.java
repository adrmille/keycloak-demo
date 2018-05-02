package com.amille.demoapp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
class ProductController {

	@Autowired
	ProductService productService;

	@GetMapping(path = "/products")
	public String getProducts(Model model) {
		model.addAttribute("products", productService.getProducts());
		return "products";
	}

	@GetMapping(path = "/breakout")
	public String getBreakout(Model model) {
		return "breakout";
	}

	@GetMapping(path = "/logout")
	public String logout(HttpServletRequest request) throws ServletException {
		request.logout();
		return "/";
	}
}
