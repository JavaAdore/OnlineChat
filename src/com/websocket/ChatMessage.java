package com.websocket;

import java.util.Date;

public class ChatMessage {
	private String messageCode;
	private String message;
	private Long sender;
	private Long group;
	private Long reciever;
	private Boolean seen;
	private Date received;
	private Member member;
	private String senderProfilePicture;

	private Long conversationId;

	public ChatMessage(String messageCode, String message, Long sender,
			Long group, Long reciever, Date received) {
		super();
		this.messageCode = messageCode;
		this.message = message;
		this.sender = sender;
		this.group = group;
		this.reciever = reciever;
		this.received = received;
	}

	public ChatMessage() {
		super();
	}

	public String getMessageCode() {
		return messageCode;
	}

	public void setMessageCode(String messageCode) {
		this.messageCode = messageCode;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Long getSender() {
		return sender;
	}

	public void setSender(Long sender) {
		this.sender = sender;
	}

	public Long getGroup() {
		return group;
	}

	public void setGroup(Long group) {
		this.group = group;
	}

	public Long getReciever() {
		return reciever;
	}

	public void setReciever(Long reciever) {
		this.reciever = reciever;
	}

	public Date getReceived() {
		return received;
	}

	public void setReceived(Date received) {
		this.received = received;
	}

	public Long getConversationId() {
		return conversationId;
	}

	public void setConversationId(Long conversationId) {
		this.conversationId = conversationId;
	}

	public static ChatMessage prepareLeftingOfMessage(Member member, Group group) {

		ChatMessage chatMessage = new ChatMessage();
		chatMessage.setMessageCode("-1");
		chatMessage.setSender(member.getID());
		chatMessage.setGroup(group.getID());
		return chatMessage;
	}

	public static ChatMessage prepareCommingOnMessage(Member member, Group group) {
		ChatMessage chatMessage = new ChatMessage();
		chatMessage.setGroup(group.getID());
		chatMessage.setMessageCode("1");
		chatMessage.setMember(member);
		return chatMessage;
	}

	public String getSenderProfilePicture() {
		return senderProfilePicture;
	}

	public void setSenderProfilePicture(String senderProfilePicture) {
		this.senderProfilePicture = senderProfilePicture;
	}

	public Boolean getSeen() {
		return seen;
	}

	public void setSeen(Boolean seen) {
		this.seen = seen;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

}
