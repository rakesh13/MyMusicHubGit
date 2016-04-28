package musichub.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;


import musichub.demo.DAO.ProductService;

import musichub.demo.model.Product;
//import musichub.musichubService.model.Cart;

@Controller
public class UserController 
{
	ProductService service;
	//CartService cartservice;
	
	@Autowired
	public UserController(ProductService service) 
	{
		this.service=service;
	}
	@RequestMapping("/")
	public String landingPage()
	{
		return "index";
	}
	
	@RequestMapping("/allproduct")
	public String getAllProduct(ModelMap model)
	{
		List<Product> products = service.getAllProduct();
		model.addAttribute("products", products );
	
		return "AllProduct";
	}
	@RequestMapping(value="/viewProduct",method=RequestMethod.GET)
	public ModelAndView getProductById(@RequestParam int pid)
	{
		Product p=new Product();
		p=service.getProductByID(pid);
		return new ModelAndView("productDetails","product",p);
	}
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login()
	{
		return "login";
	}
	/*public static final String REST_SERVICE_URI ="http://localhost:9088/musichub/musichubService";
	@RequestMapping(value="/user/addCart",method=RequestMethod.GET)
	public void addToCart(@RequestParam int pid)
	{
		Product p=new Product();
		p=service.getProductByID(pid);
		//Cart c=new Cart();
		c.setId(pid);
		c.setName(p.getName());
		c.setPrice(p.getPrice());
		c.setQuantity(2);
		RestTemplate rest=new RestTemplate();
		Cart res=rest.postForObject(REST_SERVICE_URI, c, Cart.class);
		System.out.println("Total = "+res.getTotal());
		//return new ModelAndView("ShoppingCart","allCartItems",allitems);
	}*/
	
}
