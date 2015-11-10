package com.motelreview.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.motelreview.domain.Review;
import com.motelreview.model.ReviewModel;
import com.motelreview.services.ReviewService;

@Controller
public class HomeController {

	@Autowired
	ReviewService reviewService;

	private static final Log logger = LogFactory.getLog(HomeController.class);
	/*
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! the client locale is " + locale + ".");
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		return "home";
	}

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public ModelAndView helloWorld() {

		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from CrunchifyHelloWorld.java **********</div><br><br>";
		return new ModelAndView("welcome", "message", message);
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Model model) {
		String greetings = "Greetings, Spring MVC!";
		model.addAttribute("message", greetings);
		return "test";
	}
*/
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView review() {
		return new ModelAndView("home", "review", new ReviewModel());
	}

	@RequestMapping(value = "/addReview", method = RequestMethod.POST)
	public String addReview(@ModelAttribute("Review") ReviewModel reviewModel) {
		// TODO Save Data to DB
		Review review = new Review();
		//review.setUserId(0);
		review.setCustomerId(1);
		review.setReview(reviewModel.getReview());
		//TODO Likerts
		//review.setLikerts(reviewModel.getLikerts());
		reviewService.insertData(review);
		return "result";
	}

	@ModelAttribute("Review")
	public ReviewModel populateUser() {
		return new ReviewModel();
	}
}
