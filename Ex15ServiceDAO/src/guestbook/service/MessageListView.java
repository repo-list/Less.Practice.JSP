package guestbook.service;

import java.util.List;

import guestbook.model.Message;

public class MessageListView {
	private List<Message> messageList;
	private int totalMessageCount;
	private int currentPageNumber;
	private int messageCountPerPage;
	private int startRow;
	private int endRow;

	private int totalPageCount;
	
	public MessageListView(List<Message> messageList, int totalMessageCount, int currentPageNumber, int messageCountPerPage, int startRow, int endRow) {
		this.messageList = messageList;
		this.totalMessageCount = totalMessageCount;
		this.currentPageNumber = currentPageNumber;
		this.messageCountPerPage = messageCountPerPage;
		this.startRow = startRow;
		this.endRow = endRow;
		
		this.totalPageCount = calcTotalPageCount();
	}
	
	private int calcTotalPageCount() {
		int count = 0;
		
		if (totalMessageCount > 0) {
			count = totalMessageCount / messageCountPerPage;
			if (totalMessageCount % messageCountPerPage > 0) count++;
		}
		
		return count;
	}
	
	public int getTotalMessageCount() {
		return totalMessageCount;
	}
	
	public int getCurrentPageNumber() {
		return currentPageNumber;
	}
	
	public List<Message> getMessageList() {
		return messageList;
	}
	
	public int getTotalPageCount() {
		return totalPageCount;
	}
	
	public int getStartRow() {
		return startRow;
	}
	
	public int getEndRow() {
		return endRow;
	}
	public boolean isEmpty() {
		return totalMessageCount == 0;
	}
}
