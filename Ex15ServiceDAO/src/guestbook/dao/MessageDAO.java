package guestbook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import guestbook.model.Message;
import jdbc.JdbcUtil;

public class MessageDAO {
	private static MessageDAO messageDAO = new MessageDAO();
	
	private MessageDAO() {}
	
	public static MessageDAO getInstance() {
		return messageDAO;
	}
	
	public int insert(Connection conn, Message message) throws SQLException {
		int updateCount = 0;
		PreparedStatement pstmt = null;
		
		try {
			String query = "INSERT INTO `guestbook_message` " +
						   "(`guest_name`, `password`, `message`) VALUES (?, ?, ?);";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, message.getGuestName());
			pstmt.setString(2, message.getPassword());
			pstmt.setString(3, message.getMessage());
			
			updateCount = pstmt.executeUpdate();
		}
		finally {
			JdbcUtil.close(pstmt);
		}
		
		return updateCount;
	}
	
	public Message select(Connection conn, int messageId) throws SQLException {
		Message message = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String query = "SELECT * FROM `guestbook_message` WHERE `id_message` = ?;";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, messageId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) message = makeMessageFromResultSet(rs);
		}
		finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return message;
	}
	
	private Message makeMessageFromResultSet(ResultSet rs) throws SQLException {
		Message message = new Message();
		
		message.setId(rs.getInt("id_message"));
		message.setGuestName(rs.getString("guest_name"));
		message.setPassword(rs.getString("password"));
		message.setMessage(rs.getString("message"));
		
		return message;
	}
	
	public int getSelectCount(Connection conn) throws SQLException {
		int selectCount = 0;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			String query = "SELECT COUNT(*) FROM `guestbook_message`";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			rs.next();
			selectCount = rs.getInt(1);
		}
		finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
		
		return selectCount;
	}
	
	public List<Message> selectList(Connection conn, int startRow, int endRow) throws SQLException {
		List<Message> messageList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String query = "SELECT * FROM `guestbook_message`" +
						   "ORDER BY `id_message` DESC LIMIT ?, ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow - 1); // 시작 행 (0-based row number)
			pstmt.setInt(2, endRow - startRow + 1); // 개수
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				messageList = new ArrayList<Message>();
				do {
					messageList.add(makeMessageFromResultSet(rs));
				}
				while (rs.next());
			}
		}
		finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return messageList;
	}
	
	public int delete(Connection conn, int messageId) throws SQLException {
		int updateCount = 0;
		PreparedStatement pstmt = null;
		
		try {
			String query = "DELETE FROM `guestbook_message` WHERE `id_message` = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, messageId);
			updateCount = pstmt.executeUpdate();
		}
		finally {
			JdbcUtil.close(pstmt);
		}
		
		return updateCount;
	}
}
