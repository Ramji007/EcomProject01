package com.niit.shoppingcartservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShoppingServlet
 */
public class ShoppingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String UserId = request.getParameter("username");
		String Password = request.getParameter("password");
		LoginDAO login = new LoginDAO();
		RequestDispatcher dispatcher ;
		if(login.isValidUser(UserId,Password)==true){
			//navigate to homepage
			dispatcher =request.getRequestDispatcher("home.jsp");
			dispatcher.forward(request, response);
			
		}else
		{	// Navigate to login page //include error message
			System.out.println("Invalid Credentials");
			PrintWriter writer = response.getWriter();
			writer.println("Plese enter valid credentials");
			
			dispatcher =request.getRequestDispatcher("login.html");
			dispatcher.forward(request, response);
		}
		
		
	}

}
