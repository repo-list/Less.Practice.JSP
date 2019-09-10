package guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;

import guestbook.dao.MessageDAO;
import guestbook.model.Message;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class DeleteMessageService {
	private static DeleteMessageService instance = new DeleteMessageService();
	
	private DeleteMessageService() {}
	
	public static DeleteMessageService getInstance() {
		return instance;
	}
	
	public void deleteMessage(int messageId, String password) {
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			MessageDAO messageDAO = MessageDAO.getInstance();
			Message message = messageDAO.select(conn, messageId);
			if (message == null) {
				throw new MessageNotFoundException("메시지 없음");
			}
			if (!message.matchPassword(password)) {
				throw new InvalidPasswordException("잘못된 패스워드 입력");
			}
			messageDAO.delete(conn, messageId);
			conn.commit();
		}
		catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new ServiceException("삭제 실패 : " + e.getMessage(), e);
		}
		catch (InvalidPasswordException | MessageNotFoundException e) {
			JdbcUtil.rollback(conn);
			throw e;
		}
		finally {
			JdbcUtil.close(conn);
		}
	}
}
