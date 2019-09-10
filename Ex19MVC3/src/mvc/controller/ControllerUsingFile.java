package mvc.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import mvc.command.NullHandler;

public class ControllerUsingFile extends HttpServlet {
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
	
	@Override
	public void init() throws ServletException {
		String configFile = getInitParameter("configFile");
		String configFilePath = getServletContext().getRealPath(configFile); // Context -> 실제 객체와의 통신을 담당하는 녀석(?)
		Properties prop = new Properties();
		
		try (FileInputStream fis = new FileInputStream(configFilePath)) {
			prop.load(fis);
		}
		catch (IOException e) {
			throw new ServletException(e);
		}
		
		Iterator itr = prop.keySet().iterator();
		while (itr.hasNext()) {
			String command = (String)itr.next(); // Key를 얻어와서
			String handlerClassName = prop.getProperty(command); // Value (패키지 구조까지 포함된 클래스 이름)를 변수에 저장
			try {
				Class<?> handlerClass = Class.forName(handlerClassName); // 해당 이름을 가진 Class 객체를 얻어오고,
				CommandHandler handlerInstance = (CommandHandler)handlerClass.newInstance(); // Class 객체를 통해 해당 클래스의 생성자 호출 및 생성된 instance 대입
				commandHandlerMap.put(command, handlerInstance);
			}
			catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// String command = request.getParameter("cmd"); // 파라미터로 처리
		
		String command = request.getRequestURI(); // context 경로를 포함하여 web.xml에 mapping된 값을 리턴 (/Ex18MVC2/controllerUsingFile);
		if (command.indexOf(request.getContextPath()) == 0) { // getContextPath -> /Ex18MVC2
			command = command.substring(request.getContextPath().length());
		}
		
		request.setAttribute("requestURI", request.getRequestURI()); // 실제로 무슨 값이 나오는지 알아보기 위한 코드 (없어도 됨)
		request.setAttribute("contextPath", request.getContextPath()); // 실제로 무슨 값이 나오는지 알아보기 위한 코드 (없어도 됨)
		
		CommandHandler handler = commandHandlerMap.get(command);
		
		if (handler == null) handler = new NullHandler();
		
		String viewPage = null;
		try {
			viewPage = handler.process(request, response);
		}
		catch (Exception e) {
			throw new ServletException(e);
		}
		
		if (viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
	}
}
