import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.motelreview.services.ReviewEmailAPI;
 

public class EmailTest {
 
	@SuppressWarnings("resource")
	public static void main1(String args[]) {
 
		// Spring Bean file you specified in /src/main/resources folder
		String crunchifyConfFile = "reivew-bean.xml";
		ConfigurableApplicationContext context = new ClassPathXmlApplicationContext(crunchifyConfFile);
 
		// @Service("crunchifyEmail") <-- same annotation you specified in CrunchifyEmailAPI.java
		ReviewEmailAPI emailAPI = (ReviewEmailAPI) context.getBean("reviewEmail");
		String toAddr = "wjin1210@gmail.com.com";
		String fromAddr = "test@motelreivew.com";
 
		// email subject
		String subject = "Hey.. This email sent by Crunchify's Spring MVC Tutorial";
 
		// email body
		String body = "There you go.. You got an email.. Let's understand details on how Spring MVC works -- By Crunchify Admin";
		emailAPI.crunchifyReadyToSendEmail(toAddr, fromAddr, subject, body);
	}
}