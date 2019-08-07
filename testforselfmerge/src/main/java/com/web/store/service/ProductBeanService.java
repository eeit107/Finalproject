package com.web.store.service;

import java.util.List;


//import com.web.store.model.CompanyBean;
import com.web.store.model.ProductBean;

public interface ProductBeanService {
	List<ProductBean> getAllProducts();

	void updateAllStocks();

	List<String> getAllCategories();

	public List<ProductBean> getAlltitle();

	List<ProductBean> getProductsByCategory(String category);

	public ProductBean getProductById(int productId);

	List<ProductBean> getProductByCompanyid(int companyId);

	void addProduct(ProductBean product);

	public void update(ProductBean product);

	public void save(ProductBean product, int productId);

	public List<ProductBean> getProductsBytitle(String title);

	public void updateStock(int productId, int newQuantity);

	public void deleteProductBean(int productId);

	public ProductBean getProductBytitle(String title);

}
