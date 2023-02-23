package cn.techtutorial.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.techtutorial.connection.DbCon;
import cn.techtutorial.dao.*;
import cn.techtutorial.model.*;

@WebServlet("/user-register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			
			String username = request.getParameter("login-username");
			String password = request.getParameter("login-password");
			String email = request.getParameter("login-email");
			String phoneno = request.getParameter("login-number");

			RegisterDao udao = new RegisterDao(DbCon.getConnection());
			
			User user = udao.register(email, password, username, phoneno);
			
			if (user != null) {
				request.getSession().setAttribute("auth", user);
				response.sendRedirect("index.jsp");
			} else {
				out.println("Error Occured");
			}
			
		
		} catch (ClassNotFoundException|SQLException e) {
			e.printStackTrace();
		} 

	}
}
