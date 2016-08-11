package com.niit.shoppingcart;
import java.lang.*;
import java.io.*;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class TestCategory {
	
	AnnotationConfigApplicationContext context  = new AnnotationConfigApplicationContext();
	context.scan("com.niit");
	context.refresh();
	context.getBean("Category");
	System.out.Println("Bean Created Successfully");	
}
