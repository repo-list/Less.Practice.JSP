package guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;

import guestbook.dao.MessageDAO;
import guestbook.model.Message;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class WriteMessageService {
	private static WriteMessageService instance = new WriteMessageService();
	
	private WriteMessageService() {}
	
	public static WriteMessageService getInstance() {
		return instance;
	}
	
	public void write(Message message) {
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			MessageDAO messageDAO = MessageDAO.getInstance();
			messageDAO.insert(conn, message);
		}
		catch (SQLException e) {
			throw new ServiceException("메시지 등록 실패 : " + e.getMessage());
		}
		finally {
			JdbcUtil.close(conn);
		}
	}
}
