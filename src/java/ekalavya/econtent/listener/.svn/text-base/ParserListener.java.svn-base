/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.listener;

/**
 *
 * @author rkjangir
 */
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import ekalavya.econtent.helper.ParserUtility;
public class ParserListener implements ServletContextListener{
	ServletContext context;
	public void contextInitialized(ServletContextEvent contextEvent) {
		System.out.println("Context Created");
		context = contextEvent.getServletContext();
		// set variable to servlet context
                ParserUtility parser = new ParserUtility();
                context.setAttribute("parser", parser);
	}
	public void contextDestroyed(ServletContextEvent contextEvent) {
		context = contextEvent.getServletContext();
		System.out.println("Context Destroyed");
	}
}