package btlSpringMvc;

import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;


import btlSpringMvc.dao.GeneralDAOAc;
import btlSpringMvc.dao.GeneralDAOPro;
import btlSpringMvc.entities.Account;
import btlSpringMvc.entities.Account_roles;
import btlSpringMvc.entities.Cart;
import btlSpringMvc.entities.Categories;
import btlSpringMvc.entities.Images;

import btlSpringMvc.entities.ProductDetail;
import btlSpringMvc.entities.Products;
import btlSpringMvc.entities.Role;

@Controller
public class WebController {
	
	@Autowired
	private GeneralDAOAc<Account> accountDao;
	
	@Autowired
	private GeneralDAOAc<Role> roleDao;
	
	@Autowired
	private GeneralDAOAc<Account_roles> arDao;
	
	@Autowired
	private GeneralDAOPro<ProductDetail> proDetailDao;
	
	@Autowired
	private GeneralDAOPro<Categories> ctDao;
	
	@Autowired
	private GeneralDAOPro<Products> proDao;
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sf, true));
	}
	
	//trang chu
	@RequestMapping(value = { "/", "/home"})
	public String homePage(Model model) {
		List<Products> listsale = proDao.getAllSale();
		model.addAttribute("listSale", listsale);
		List<Products> listfeatured = proDao.getFeatured();
		model.addAttribute("listFeatured", listfeatured);
		List<Products> listnew = proDao.getNewProduct();
		model.addAttribute("listNew", listnew);
		List<Products> listbestseller = proDao.getBestSellerList();
		model.addAttribute("listBSL", listbestseller);
		return "web/home";
	}
	
	@RequestMapping("/shop")
	public String proFilePage(Model model) {
		
		List<Categories> listCt = ctDao.getAll();
		model.addAttribute("listCt", listCt);
		
		List<Products> list = proDao.getAll();
		model.addAttribute("list", list);
		
		return "web/shop";
	}


	// trang chi tiet
	@RequestMapping("/detail")
	public String detailPage(@RequestParam("proId") Long proId, Model model) {
		
		Cart cart = new Cart();
		model.addAttribute("cart", cart);
		
		Products proDetail = proDao.findById(proId);
		model.addAttribute("pro", proDetail);
		
		
		ProductDetail pd = proDetailDao.findById(proId);
		Set<Images> imgList = new HashSet<Images>();
		imgList.addAll(pd.getListImage());
		model.addAttribute("imgList", imgList);
		return "web/detail";
	}
	
	
	
	//trang gio hang
	
	@RequestMapping("/AddToCart")
	public String addToCart(@RequestParam("proId") Long proId,
			@ModelAttribute("cart") Cart cart,
			HttpSession session) {
		HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
        if (cartItems == null) {
            cartItems = new HashMap<>();
        } else {
        	Cart items = cartItems.get(proId);
        }
        Products pro = proDao.findById(proId);
        
        if(pro != null) {
        	if(cartItems.containsKey(cartItems)) {
        		if(cartItems.get(proId).getColorCart() != cart.getColorCart()) {
        			Cart item1 = new Cart();
            		item1.setPro(pro);
        			item1.setSizeCart(cart.getSizeCart());
        			item1.setColorCart(cart.getColorCart());
                    item1.setQuantity(cart.getQuantity());
                    cartItems.put(proId, item1);
        		} else if(cartItems.get(proId).getSizeCart() != cart.getSizeCart()) {
        			Cart item1 = new Cart();
            		item1.setPro(pro);
        			item1.setSizeCart(cart.getSizeCart());
        			item1.setColorCart(cart.getColorCart());
                    item1.setQuantity(cart.getQuantity());
                    cartItems.put(proId, item1);
        		} else {
        			Cart item = cartItems.get(proId);
        			item.setPro(pro);
        			item.setSizeCart(cart.getSizeCart());
        			item.setColorCart(cart.getColorCart());
        			item.setQuantity(cart.getQuantity());
        			cartItems.put(proId, item);
        		}
        	}  else {
        		Cart item = new Cart();
        		item.setPro(pro);
    			item.setSizeCart(cart.getSizeCart());
    			item.setColorCart(cart.getColorCart());
                item.setQuantity(cart.getQuantity());
                cartItems.put(proId, item);
        	}
        }
        
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartItem", totalItem(cartItems));
        session.setAttribute("myCartNumber", cartItems.size());
		return "redirect:/cart";
	}
	
	@RequestMapping("/cart")
	public String cartPage(Model model) {
		model.addAttribute("cartU", new Cart());
		return "web/cart";
	}
	
	@RequestMapping("/updateCart")
    public String viewUpdate(@RequestParam("proId") Long proId,
    		@ModelAttribute("cartU") Cart cart,
			HttpSession session) {
        HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
        if (cartItems == null) {
            cartItems = new HashMap<>();
        }
        
        if (cartItems.containsKey(proId)) {
        	Cart item = cartItems.get(proId);
        	item.setSizeCart(cart.getSizeCart());
			item.setColorCart(cart.getColorCart());
            item.setQuantity(cart.getQuantity());
            cartItems.put(proId, item);
        }
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartItem", totalItem(cartItems));
        session.setAttribute("myCartNumber", cartItems.size());
        return "redirect:/cart";
    }

    @RequestMapping("/removeItem")
    public String viewRemove(@RequestParam("proId") Long proId,
			HttpSession session) {
        HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
        if (cartItems == null) {
            cartItems = new HashMap<>();
        }
        if (cartItems.containsKey(proId)) {
            cartItems.remove(proId);
        }
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartItem", totalItem(cartItems));
        session.setAttribute("myCartNumber", cartItems.size());
        return "redirect:/cart";
    }
    @RequestMapping("/clearCart")
    public String viewClear(HttpSession session) {
        HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
        if (cartItems == null) {
            cartItems = new HashMap<>();
        }
        cartItems.clear();
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartItem", totalItem(cartItems));
        session.setAttribute("myCartNumber", cartItems.size());
        return "redirect:/cart";
    }
	
	
	 public double totalPrice(HashMap<Long, Cart> cartItems) {
	        int count = 0;
	        for (Map.Entry<Long, Cart> list : cartItems.entrySet()) {
	        	if(list.getValue().getPro().getSalePrice() == 0) {
	        		count += list.getValue().getPro().getPrice() * list.getValue().getQuantity();
	        	} else {
	        		count += list.getValue().getPro().getSalePrice() * list.getValue().getQuantity();
	        	}
	        }
	        return count;
	    }
	 
	 public Integer totalItem(HashMap<Long, Cart> cartItems) {
	        int count = 0;
	        for (Map.Entry<Long, Cart> list : cartItems.entrySet()) {
	        	if(list.getValue().getPro().getSalePrice() == 0) {
	        		count += list.getValue().getPro().getPrice() * list.getValue().getQuantity();
	        	}
	        }
	        return count;
	    }
	 public Long getItem(HashMap<Long, Cart> cartItems, Long id) {
	        Long count;
	        for (Map.Entry<Long, Cart> list : cartItems.entrySet()) {
	        	if(list.getValue().getPro().getId() == id) {
	        		count = list.getValue().getPro().getId();
	        	}
	        }
	        return count;
	    }
	
	
	
	
//	Đăng Ký Tài khoản
	@RequestMapping("/register")
	public String registerPage(Model model) {
		Account ac = new Account();
	    model.addAttribute("ac", ac);
		return "web/register";
	}
	
	@RequestMapping("/createAccount")
	public String createAccount(
			@RequestParam("confirmPassword") String cp,
			@Valid @ModelAttribute("ac") Account accout,
			BindingResult result,Model model) {
		
		accout.setEnabled(true);
		
		if (result.hasErrors()) {
			model.addAttribute("ac", accout);
			return "web/register";			
		} else if(!accout.getPassword().equalsIgnoreCase(cp)) {

			model.addAttribute("err", "Passwords do not match");
			return "web/register";	
		} else {
			
			Account_roles ar = new Account_roles();
			String rl = "ROLE_USER";
			Role role = roleDao.findByName(rl);
			ar.setAc(accout);
			ar.setRole(role);
			
			boolean bl = accountDao.insert(accout);
			boolean bl2 = arDao.insert(ar);
			if(bl & bl2) {
				model.addAttribute("done", "Account successfully created");
				return "web/login";
			} else {
				model.addAttribute("err", "There is error Create Failed!");
				return "web/register";	
			}
		}
	}
	
	
	
	
	
	
	
// Đăng Nhập và Đăng Xuất
	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false)String error, Model model) {
		if(error!=null) {
			model.addAttribute("mess", "Login failed!");
		}
		return "web/login";
	}

	@RequestMapping("/logout")
	public String logout(Model model) {
		model.addAttribute("mess", "Has Logged out!!!");
		return "web/login";
	}
}
