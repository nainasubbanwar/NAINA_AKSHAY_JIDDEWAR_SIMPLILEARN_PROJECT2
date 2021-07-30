package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		RequestDispatcher rd = null;
		if (username.equalsIgnoreCase("admin") && password.equals("admin")) {
			rd = request.getRequestDispatcher("admin.jsp");
			rd.forward(request, response);
		} else {
			rd = request.getRequestDispatcher("");
			PrintWriter out = response.getWriter();
			rd.include(request, response);
			out.println("Invalid Credentials");
		}
	}

}
