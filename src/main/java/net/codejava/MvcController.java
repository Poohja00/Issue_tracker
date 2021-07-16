package net.codejava;

import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MvcController {
	
	@RequestMapping("/register")
	public String home() {
		System.out.println("Going home...");
		return "index";
	}
	
	//Registeration as user
	
	@GetMapping("/registerasuser")
	public String showForm(Model model) {
		User user = new User();
		
		model.addAttribute("user", user);	
		return "register_form";
	}
	
	@PostMapping("/registerasuser")
	public String submitForm(@Valid @ModelAttribute("user") User user,
			BindingResult bindingResult, Model model) {
		System.out.println("Professing form...");
		System.out.println(user);
		
		if (bindingResult.hasErrors()) {
						return "register_form";
		}
		
		return "register_success";
	}
	
	//Register as Representative
	@GetMapping("/registerasrepresentatives")
	public String showForm2(Model model) {
		Representative representative= new Representative();
		
		model.addAttribute("representative",representative);	
		return "register_form_representative";
	}
	
	@PostMapping("/registerasrepresentatives")
	public String submitForm2(@Valid @ModelAttribute("representative") Representative representative,
			BindingResult bindingResult, Model model) {
		System.out.println("Professing form...");
		System.out.println(representative);
		
		if (bindingResult.hasErrors()) {
						return "register_form_representative";
		}
		
		return "register_success_representative";
	}
}
