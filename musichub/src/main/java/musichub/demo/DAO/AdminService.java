package musichub.demo.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import musichub.demo.model.Product;

@Service
@Transactional
public class AdminService 
{
	@Autowired
	ProductDAOImpl adminprodImpl;
	
	public int insertProduct(Product p)
	{
		return adminprodImpl.insertProduct(p);
	}
	public boolean deleteProduct(int id)
	{
		return adminprodImpl.deleteProduct(id);
	}
}
