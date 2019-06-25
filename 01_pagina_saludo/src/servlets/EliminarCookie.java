package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EliminarCookie
 */
@WebServlet("/EliminarCookie")
public class EliminarCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Cookie ck = new Cookie("credenciales", "");
		ck.setMaxAge(0);
		response.addCookie(ck);
		request.getRequestDispatcher("formulario").forward(request, response);
		
		
	}

}
