package musichub.demo.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transaction;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import musichub.demo.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO
{
	
	List<Product> product;
	
	@Autowired
	SessionFactory sf;
    public ProductDAOImpl() 
	{
		product=new ArrayList<>();
	}
	@Override
	public List<Product> getAllProducts() 
	{
		Session s=sf.openSession();
		Query q=s.createQuery("from Product");
		product=q.list();
		return product;
		
	}
	public int insertProduct(Product p)
	{
		try
		{
			Session s=sf.openSession();
			org.hibernate.Transaction tx=s.beginTransaction();
			s.save(p);
			s.flush();
			tx.commit();
			s.close();
			return 1;
		}
		catch(Exception ex)
		{
			//tx.rollback();
			return 0;
		}
	}
	@Override
	public boolean deleteProduct(int id) 
	{
		try
		{
			Session s=sf.openSession();
			org.hibernate.Transaction tx=s.beginTransaction();
			Product p=(Product) s.get(Product.class, new Integer(id));
			s.delete(p);
			s.flush();
			tx.commit();
			s.close();
			return true;
		}
		catch(Exception ex)
		{
			return false;
		}
	}
	@Override
	public Product getProductByID(int id) 
	{
		try
		{
			Session s=sf.openSession();
			org.hibernate.Transaction tx=s.beginTransaction();
			Product p=(Product) s.get(Product.class, new Integer(id));
			tx.commit();
			return p;
		}
		catch(Exception ex)
		{
			return null;
		}
	}

}
