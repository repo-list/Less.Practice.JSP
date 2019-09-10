package mvc.simple;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SimpleController extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청 파악
		String type = request.getParameter("type");
		
		// 요청한 기능 수행
		String result = "";
		if (type == null || type.equals("greeting")) {
			result = "안녕하세요";
		}
		else if (type.equals("date")) {
			result = new java.util.Date().toString();
		}
		else {
			result = "Invalid Type";
		}
		
		// request나 session에 처리 결과를 저장
		request.setAttribute("result", result);
		
		// RequestDispatcher를 사용하여 알맞은 뷰로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("/simpleView.jsp");
		dispatcher.forward(request, response);
	}
}
