package com.websocket;

import java.io.IOException;
import java.io.StringReader;
import java.util.Date;

import javax.websocket.DecodeException;
import javax.websocket.Decoder;
import javax.websocket.EndpointConfig;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
 
public class ChatMessageDecoder implements Decoder.Text<ChatMessage> {
	@Override
	public void init(final EndpointConfig config) {
	}
  
	@Override
	public void destroy() {  
	}
   
	@Override 		  
	public ChatMessage decode(final String textMessage) throws DecodeException {
		ChatMessage chatMessage = new ChatMessage();
//		JsonObject obj = Json.createReader(new StringReader(textMessage))
//				.readObject();
//		chatMessage.setMessage(obj.getString("message")); 
//		chatMessage.setSender(Long.valueOf(obj.getString("sender")));
//		chatMessage.setReceived(new Date());
//		chatMessage.setReciever(Long.valueOf(obj.getString("reciever")));
//		chatMessage.setGroup(Long.valueOf(obj.getString("group")));
//		try{
//			chatMessage.setMessageCode(obj.getString("messageCode"));
//		}catch(Exception ex)
//		{
//			// just ignore ir 
//		}
//		return chatMessage;
		 ObjectMapper mapper = new ObjectMapper();

		    try {
				return  mapper.readValue(textMessage, ChatMessage.class);
			} catch (JsonGenerationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JsonMappingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			return null;
	}
 
	
	@Override 
	public boolean willDecode(final String s) {
		return true;
	}
}