package musichub.demo.DAO;

import java.util.List;

import musichub.demo.model.Product;

public interface ProductDAO 
{
	public List<Product> getAllProducts();
	public int insertProduct(Product p);
	public boolean deleteProduct(int id);
	public Product getProductByID(int id);
}
