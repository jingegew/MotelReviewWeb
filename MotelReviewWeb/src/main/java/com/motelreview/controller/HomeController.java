package com.motelreview.controller;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.motelreview.domain.Likert;
import com.motelreview.domain.Review;
import com.motelreview.domain.User;
import com.motelreview.model.ReviewModel;
import com.motelreview.repositories.CustomerRepository;
import com.motelreview.repositories.ReviewRepository;
import com.motelreview.services.AccountService;
import com.motelreview.services.ReviewService;

@Controller
public class HomeController {

	@Autowired
	ReviewService reviewService;
	@Autowired
	AccountService accountService;
	
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
		return new ModelAndView("home", "command", new ReviewModel());
	}

	@RequestMapping(value = "/addReview", method = RequestMethod.POST)
	public String addReview(HttpServletRequest request) {

		/*
		 * TODO use UUID later
        UUID uuid = UUID.randomUUID();
        String randomUUIDString = uuid.toString();
		*/
		for(String name : request.getParameterMap().keySet()){
			System.out.println(name + " : " + request.getParameter(name) );
		}
		
		String email = request.getParameter("email");
		User user = null;
		boolean addNewUser = false;
		if(email != null && email.trim().length() > 0){
			user = accountService.findUserByEmail(email);
			if(user == null){
				addNewUser = true;
			}
		} else{
			//save reviewer
			addNewUser = true;
		}
		if(addNewUser){
			user = new User();
			user.setFirstName(request.getParameter("firstName"));
			user.setLastName(request.getParameter("lastName"));
			user.setEmail(request.getParameter("email"));
			user.setPhone(request.getParameter("phone"));
			user.setUserType("Reviewer");		
			accountService.addUser(user);
		}
		//save review
		Review review = new Review();
		review.setUserId(user.getUserId());
		review.setCustomerId(1);
		review.setRoomNumber(request.getParameter("roomNumber"));
		review.setReview(request.getParameter("review"));
		String stay = request.getParameter("stay");
		review.setLikeStay(stay == null ? -1 : Integer.parseInt(stay));
		reviewService.insertReview(review);
		//HACK hard code
		String[] items = new String[]{"bed", "food", "parking", "ac", "wifi", "location"};
		for(String item : items){
			String likert_level = request.getParameter(item);
			if(likert_level != null){
				Likert likert = new Likert();
				likert.setReviewId(review.getReviewId());
				likert.setItem(item);
				likert.setValue(likert_level);
				reviewService.addLikert(likert);
			}
		}		
		return "result";
	}

	@ModelAttribute("Review")
	public ReviewModel populateUser() {
		return new ReviewModel();
	}
}
