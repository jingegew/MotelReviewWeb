package com.motelreview.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.motelreview.model.UserModel;
import com.motelreview.services.AccountService;

@Controller
public class AccountController {

	@Autowired
	AccountService accountService;

	private static final Log logger = LogFactory.getLog(AccountController.class);

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("index", "login", new UserModel());
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("User") UserModel userModel) {
		boolean result = accountService.login(userModel.getUsername(), userModel.getPassword());
		if(result){
			logger.info(userModel.getUsername() + " logging.");
			return "home";
		}
		else
			return "index";
	}

	@ModelAttribute("User")
	public UserModel populateUser() {
		return new UserModel();
	}
}
