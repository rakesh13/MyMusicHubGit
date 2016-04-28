package musichub.demo.DAO;

import java.util.List;

import musichub.demo.model.Cart;

public interface CartDAO 
{
	public List<Cart> getAllCartItems();
	public boolean addToCart(Cart c);
}
