package musichub.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import musichub.demo.DAO.ProductService;
import musichub.demo.model.Product;

@Controller
public class UserController 
{
	ProductService service;
	
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
	
}
