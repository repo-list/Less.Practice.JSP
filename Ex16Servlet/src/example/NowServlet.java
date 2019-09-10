package example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NowServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><title>Ex16 - Servlet - Now Servlet</title></head>");
		out.println("<body>");
		out.println("	현재 시각은" + new Date().toString() + "입니다.<br>");
		out.println(getInitParameter("testParam"));
		out.println("</body>");
		out.println("</html>");
	}
}
