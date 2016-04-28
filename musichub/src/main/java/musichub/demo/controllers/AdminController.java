package musichub.demo.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.file.Path;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import musichub.demo.DAO.AdminService;
import musichub.demo.DAO.ProductService;
import musichub.demo.model.Product;

@Controller
public class AdminController 
{
	AdminService adminservice;
	ProductService ps;
	
	@Autowired
	public AdminController(AdminService adminservice) 
	{
		this.adminservice=adminservice;
	}
	
	@RequestMapping("/admin/addProduct")
	public String addProduct()
	{
		return "AddNewProduct";
	}
	@ModelAttribute("insertProductCommand")
	public Product construct()
	{
		return new Product();
	}
	
	@RequestMapping(value="/admin/addNewProduct",method=RequestMethod.POST)
	public ModelAndView insertProduct(@Valid @ModelAttribute("insertProductCommand") Product p, HttpServletRequest request, BindingResult result)
	{
		if(result.hasErrors())
		{
			return new ModelAndView("/admin/addNewProduct","",null);
		}
		String filename=null;
		int res = 0;
		ServletContext context=request.getServletContext();
		String path=context.getRealPath("./resources/"+p.getId()+".jpg");
		System.out.println("Path = "+path);
		System.out.println("File name = "+p.getImage().getOriginalFilename());
		File f=new File(path);
		if(!p.getImage().isEmpty())
		{
			try
			{
				//filename=p.getImage().getOriginalFilename();
				byte[] bytes=p.getImage().getBytes();
				BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
				System.out.println("Image uploaded");
				res=adminservice.insertProduct(p);
				System.out.println("Data Inserted");
			}
			catch(Exception ex)
			{
				System.out.println(ex.getMessage());
			}
		}
		else
		{
			res=0;
		}
		if(res>0)
		{
			//List<Product> products = ps.getAllProduct();
			//model.addAttribute("products", products );
			return new ModelAndView("index","", null);
			
		}
		else
		{
			/*return new ModelAndView("error","",null);*/
			return new ModelAndView("/admin/addNewProduct","",null);
		}
	}
	
	@RequestMapping(value="/deleteProduct", method=RequestMethod.GET)
	public ModelAndView deleteProduct(@RequestParam int pid)
	{
		boolean res=adminservice.deleteProduct(pid);
		if(res)
		{
			return new ModelAndView("index","",null);
		}
		else
		{
			return new ModelAndView("error","",null);
		}
	}
	

	
}
