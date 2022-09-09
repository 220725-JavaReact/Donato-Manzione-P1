package com.revature.services;


import java.util.List;

import com.revature.dao.ProductDAO;
import com.revature.models.Product;

public class ProductService {

	private ProductDAO productDAO;

	public ProductService(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}

	public List<Product> getAllProducts() {
		
		return productDAO.readAll();
	}
}