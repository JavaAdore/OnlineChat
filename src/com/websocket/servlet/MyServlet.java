package com.websocket.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.websocket.Member;

public class MyServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Set response content type
		response.setContentType("text/html");
		
		String id = request.getParameter("id");
		
		// Actual logic goes here.
		PrintWriter out = response.getWriter();
		out.println("<h1>" + " Well it works fine" + "</h1>");
		
		Member member = new Member();
		member.setID(Long.valueOf(id));
		
		request.getSession(true).setAttribute("member", member);
		
	}

}
