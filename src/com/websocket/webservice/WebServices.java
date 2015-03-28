package com.websocket.webservice;


import java.util.List;
import java.util.Set;

import javax.ws.rs.*;

import com.websocket.ChatEndpoint;
import com.websocket.ChatMessage;
import com.websocket.Member;
import com.websocket.MemberIdentifierInt;
import com.websocket.MyService;

@Path("/services/")
 
public class WebServices {

	

	@GET
	@Path("/getGroupOnlineMembers/{memberID}/{groupID}")
	@Produces("application/json")
	public Set<Member> getMemberFriendsList(@PathParam("memberID") String memberID, @PathParam("groupID") String groupID) { 
	
		
		return ChatEndpoint.getMemberFriendsList(memberID,groupID); 
	} 
	  

	
	@GET
	@Path("/loadChatHistory/{memberID}/{friendID}/{groupID}")
	public List<ChatMessage> loadChatHistory(@PathParam("memberID") String memberID,@PathParam("friendID") String friendID ,@PathParam("groupID") String groupID)
	{
		return  MyService.loadMessageHistory(memberID, friendID, groupID);
	}
	
	
	
	
	
	
}
