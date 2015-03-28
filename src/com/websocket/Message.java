package com.websocket;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Message {

	public Message(){}
	
	public Message(String messageText) {
		super();
		this.messageText = messageText;
	}

	private String messageText;

	@XmlElement
	public void setMessageText(String messageText) {
		this.messageText = messageText;
	}

	public String getMessageText() {
		return messageText;
	}

}
