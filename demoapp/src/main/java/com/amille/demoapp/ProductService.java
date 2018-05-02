package com.amille.demoapp;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
class ProductService {

	public List<String> getProducts() {
		return Arrays.asList("iPad", "iPod", "iPhone");
	}

}
