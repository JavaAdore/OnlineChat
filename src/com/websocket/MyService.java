package com.websocket;

import java.util.ArrayList;
import java.util.List;

public class MyService {

	public static List<ChatMessage> loadMessageHistory(String userID , String friendID , String groupID)
	{
		
		ChatMessage chatMessage = new ChatMessage();
		chatMessage.setGroup(3L);
		chatMessage.setReciever(1L);
		chatMessage.setSender(4L);
		chatMessage.setMessage("test1 ");
		
		ChatMessage chatMessage2 = new ChatMessage();
		chatMessage2.setGroup(3L);
		chatMessage2.setReciever(4L);
		chatMessage2.setSender(1L);
		chatMessage2.setMessage("test2 ");
		
		

		ChatMessage chatMessage3 = new ChatMessage();
		chatMessage3.setGroup(3L);
		chatMessage3.setReciever(1L);
		chatMessage3.setSender(4L);
		chatMessage3.setMessage("test13 ");
		
		List<ChatMessage> result = new ArrayList();
		result.add(chatMessage);
		result.add(chatMessage2);
		result.add(chatMessage3);
		
		return result;
		
	}
	
	
}
