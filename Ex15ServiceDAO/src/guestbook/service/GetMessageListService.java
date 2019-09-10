package guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import guestbook.dao.MessageDAO;
import guestbook.model.Message;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class GetMessageListService {
	private static final int MESSAGE_COUNT_PER_PAGE = 3;
	
	private static GetMessageListService instance = new GetMessageListService();
	
	private GetMessageListService() {}
	
	public static GetMessageListService getInstance() {
		return instance;
	}
	
	public MessageListView getMessageList(int pageNumber) {
		MessageListView messageListView = null;
		Connection conn = null;
		int currentPageNumber = pageNumber;
		
		try {
			conn = ConnectionProvider.getConnection();
			MessageDAO messageDAO = MessageDAO.getInstance();
			
			int totalMessageCount = messageDAO.getSelectCount(conn);
			
			List<Message> messageList = null;
			int startRow = 0;
			int endRow = 0;
			if (totalMessageCount > 0) {
				startRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE + 1;
				endRow = startRow + MESSAGE_COUNT_PER_PAGE - 1;
				messageList = messageDAO.selectList(conn, startRow, endRow);
			}
			else {
				currentPageNumber = 0;
				messageList = Collections.emptyList();
			}
			messageListView = new MessageListView(messageList, totalMessageCount, currentPageNumber, MESSAGE_COUNT_PER_PAGE, startRow, endRow);
		}
		catch (SQLException e) {
			throw new ServiceException("목록 구하기 실패 : " + e.getMessage(), e);
		}
		finally {
			JdbcUtil.close(conn);
		}
		
		return messageListView;
	}
}
