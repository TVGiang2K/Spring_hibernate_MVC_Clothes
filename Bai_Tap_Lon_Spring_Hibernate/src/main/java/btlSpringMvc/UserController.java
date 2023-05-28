package btlSpringMvc;

import java.security.Principal;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import btlSpringMvc.entities.Cart;
import btlSpringMvc.entities.CustomAccountDetails;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@RequestMapping("/profile")
	public String userPage(Principal principal,Model model) {
		
		model.addAttribute("mess", "Welcome user page");
		CustomAccountDetails ac = (CustomAccountDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("ac", ac);
			if(ac == null) {
				return "web/login";
			} else {
				return "web/profile";			
			}
	}
	
	// Order 
		 @RequestMapping("/order")
			public String orderPage(Model model) {
				CustomAccountDetails ac = (CustomAccountDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
				model.addAttribute("ac", ac);
				if(ac == null) {
					return "web/login";
				} else {		
					return "web/order";
				}
			}
	
}
