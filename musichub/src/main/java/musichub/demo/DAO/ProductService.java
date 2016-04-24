package musichub.demo.DAO;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import musichub.demo.model.Product;

@Service
@Transactional
public class ProductService 
{
	@Autowired
	ProductDAOImpl prodImpl;
	
	public List<Product> getAllProduct()
	{
		return prodImpl.getAllProducts();
	}
	
	public Product getProductByID(int id)
	{
		return prodImpl.getProductByID(id);
	}
}
