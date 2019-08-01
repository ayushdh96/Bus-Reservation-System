/**
 * 
 */
package com.lti.bus.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

/*
 * This class simply define a @ControllerAdvice and 
 * a method with @ExceptionHandler. 
 * This method will be called whenever an 
 * unhandled exception occurs. and will display exception.jsp
 */
@ControllerAdvice
public class ExceptionControllerAdvice {

	@ExceptionHandler(Exception.class)
	public ModelAndView handleAllExceptions(Exception e) {

		ModelAndView mav = new ModelAndView("exception");// view name
		mav.addObject("name", e.getClass().getSimpleName());// model for ex name
		mav.addObject("message", e.getMessage());// model for ex msg
		return mav;
	}
	@ExceptionHandler(CustomException.class)
	public ModelAndView handleCustomException(Exception e) {

		ModelAndView mav = new ModelAndView("error");// view name
		mav.addObject("name", e.getClass().getSimpleName());// model for ex name
		mav.addObject("message", e.getMessage());// model for ex msg
		return mav;
	}
	//replace the below commented line with your own custom exception class
	@ExceptionHandler(BusException.class)
	public ModelAndView handleBusException(Exception e) {

		ModelAndView mav = new ModelAndView("error");// view name
		mav.addObject("name", e.getClass().getSimpleName());// model for ex name
		mav.addObject("message", e.getMessage());// model for ex msg
		return mav;
	}
	
}

/*Notes

@ExceptionHandler(Exception.class) indicates that this method would handle exceptions of the specific type.
Create an error response object and return it with a specific error view name.*/