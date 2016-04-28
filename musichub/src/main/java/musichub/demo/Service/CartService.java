package musichub.demo.Service;

import java.util.List;

import musichub.demo.model.Cart;

public interface CartService 
{
	Cart findById(int id);
	
	Cart findByName(String name);
	
	void addToCart(Cart cart);
	
	//void updateCart(Cart cart);
	
	void deleteCartById(int id);

	List<Cart> getAllCart(); 
	
	void deleteAllCart();
}