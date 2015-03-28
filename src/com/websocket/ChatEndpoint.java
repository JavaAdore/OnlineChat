package com.websocket;

import java.awt.Cursor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

import javax.websocket.EncodeException;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint(value = "/chat/{memberID}/{groupID}", encoders = ChatMessageEncoder.class, decoders = ChatMessageDecoder.class)

public class ChatEndpoint extends Thread {
	private final Logger log = Logger.getLogger(getClass().getName());

	static Map<Member, Set<Session>> sessionsMap = new HashMap();

	static List<Member> friendsList = new ArrayList();

	static Set<Group> groupsSet = new HashSet<Group>(
			Arrays.asList(new Group[] { new Group(3L) }));

	static {
		Member mustafa = new Member();
		mustafa.setID(1L);
		mustafa.setName("Mustafa");
		mustafa.setEmail("mustafa@gmail.com");
		mustafa.setStatus(0);
		mustafa.setProfilePicture("images/apple.png");

		Member amr = new Member();
		amr.setID(2L);
		amr.setName("amr");
		amr.setEmail("amr@gmail.com");
		amr.setStatus(0);
		amr.setProfilePicture("images/green.png");

		Member mohammed = new Member();
		mohammed.setID(3L);
		mohammed.setName("mohammed");
		mohammed.setEmail("mohammed@gmail.com");
		mohammed.setStatus(0);
		mohammed.setProfilePicture("images/smile.png");

		Member mohab = new Member();
		mohab.setID(4L);
		mohab.setName("mohab");
		mohab.setEmail("mohab@gmail.com");
		mohab.setStatus(0);
		mohab.setProfilePicture("images/spider.png");

		friendsList.add(mustafa);
		friendsList.add(amr);
		friendsList.add(mohammed);
		friendsList.add(mohab);
	}

	public ChatEndpoint() {
		sessionsMap = Collections.synchronizedMap(sessionsMap);
		groupsSet = Collections.synchronizedSet(groupsSet);
		start();

	}

	public void run() {
		Map<Member, Group> sessionsToBeRemoved = new HashMap();
//		while (true) {
//
//			sessionsToBeRemoved.clear();
//			Iterator<Member> members = sessionsMap.keySet().iterator();
//
//			while (members.hasNext()) {
//				Member member = members.next();
//  
//				synchronized (members) {
//					Set<Session> sessions = sessionsMap.get(member);
//					Iterator<Session> sessionsIterator = sessions.iterator();
//					while (sessionsIterator.hasNext()) {
//						Session session = sessionsIterator.next();
//
//						if (session.isOpen() == false) {
//							doClosedSessionBusiness(member, session);
//							sessionsIterator.remove();
//
//						}
//
//					}
//				} 
//
//				try {
//					Thread.sleep(5000);
//				} catch (InterruptedException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//		}

	}

	private void doClosedSessionBusiness(Member member, Session session) {
		Group group = getGroupOfSession(member, session);
		if (group != null) {
			if (member.getMemberGroupSessions().get(group).size() == 0) {

				member.getMemberGroupSessions().remove(group);
				group.getMembers().remove(member);
				notifyGroupMembersByHisLeftingOf(group, member);
			} else {
				member.getMemberGroupSessions().get(group).remove(session);

			}
		}

	}

	private void removeSessions(Map<Member, Group> sessionsToBeRemoved) {
		for (Member member : sessionsToBeRemoved.keySet()) {
			Group group = sessionsToBeRemoved.get(member);
			notifyGroupMembersByHisLeftingOf(group, member);
		}
	}

	private Group getGroupOfSession(Member member, Session session) {
		Iterator<Group> groups = member.getMemberGroupSessions().keySet()
				.iterator();
		while (groups.hasNext()) {
			Group group = groups.next();
			Iterator<Session> sessionIterator = member.getMemberGroupSessions()
					.get(group).iterator();

			while (sessionIterator.hasNext()) {

				if (sessionIterator.next().equals(session)) {
					member.getMemberGroupSessions().get(group).remove(session);
					return group;
				}

			}
		}
		return null;
	}

	private void notifyOnlineFriends(String member, int key) {

		// List<MemberIdentifierInt> friends = getMemberFriendsList(member);
		// for(MemberIdentifierInt friend: friends)
		// {
		// //if(friend.getStatus()==1)
		// { int mapSize = sessionsMap.size();
		// Session session = sessionsMap.get( String.format("%s",friend.getID())
		// );
		// if(session !=null && session.isOpen())
		// {
		// ChatMessage chatMessage = new ChatMessage();
		// chatMessage.setMessageCode(String.format("%s-%s",member,1));
		// try {
		// session.getBasicRemote().sendObject(chatMessage);
		// System.out.println("sent");
		// } catch (IOException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// } catch (EncodeException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }catch(Exception ex)
		// {
		// ex.printStackTrace();
		// }
		// }
		// }
		// }

	}

	@OnOpen
	public void open(final Session session,
			@PathParam("memberID") final String memberID,
			@PathParam("groupID") final String groupID) {

		Member member = getMemberByID(memberID);

		if (sessionsMap.containsKey(member) == false) {
			Set<Session> sessions = new HashSet();
			sessions.add(session);
			sessionsMap.put(member, sessions);
		} else {
			sessionsMap.get(member).add(session);
		}

		registerInGroup(member, groupID, session);

	}

	private static Member getMemberByID(String memberID) {
		for (Member curMember : friendsList) {
			if (curMember.getID() != null
					&& curMember.getID().toString().equals(memberID)) {
				return curMember;
			}
		}
		return new Member(memberID);
	}

	@OnMessage
	public void onMessage(final Session session, ChatMessage chatMessage)
			throws IOException, EncodeException {

		if (chatMessage.getMessageCode() == null
				|| chatMessage.getMessageCode().trim().length() == 0) {

			handleNormalMessage(session, chatMessage);

		} else {
			handleSystemMessage(session, chatMessage);

		}

	}

	private void handleSystemMessage(Session session, ChatMessage chatMessage) {
		System.out.println();

		if (chatMessage.getMessageCode().equals("-100")) {
			Group group = Utils.extractFromMarkerSet(groupsSet, new Group(
					chatMessage.getGroup()));
			Member member = getMemberByID(chatMessage.getSender().toString());
			if (member != null) {
				doClosedSessionBusiness(member, session);
			}

		}

	}

	private void handleNormalMessage(Session session, ChatMessage chatMessage) {
		Set<Session> sessions = sessionsMap.get(new Member(chatMessage
				.getReciever()));

		if (sessions != null) {
			for (Session friendSession : sessions) {
				chatMessage = persistMessage(chatMessage);
				
				sendMessage(friendSession, chatMessage);
			}

		} else {
			chatMessage = persistMessage(chatMessage);

		}

		sessions = sessionsMap.get(new Member(chatMessage.getSender()));
		for (Session senderSession : sessions) {
			chatMessage = persistMessage(chatMessage);

			sendMessage(senderSession, chatMessage);
		}

	}

	private static void sendMessage(Session otherMemberSender,
			ChatMessage chatMessage) {
		try {
			if (otherMemberSender != null && chatMessage != null) {
				if (otherMemberSender.isOpen()) {
					otherMemberSender.getBasicRemote().sendObject(chatMessage);
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (EncodeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private static void removeMemberCachedData(final Member member) {

		sessionsMap.remove(member);

	}

	private ChatMessage persistMessage(ChatMessage chatMessage) {
		return chatMessage;
	}

	private void registerMessageToBePersisted(ChatMessage chatMessage) {
		// TODO Auto-generated method stub

	}

	public static Set<Member> getMemberFriendsList(String memberID,
			String groupID) {

		Group group = Utils.<Group> extractFromMarkerSet(groupsSet, new Group(
				groupID));

		if (group != null) {
			return group.getMembers() != null ? group.getMembers()
					: new HashSet<Member>();
		}
		return new HashSet<Member>();
	}

	public static Member login(String userName, String password) {
		for (Member member : friendsList) {
			if (member.getName().equalsIgnoreCase(userName)) {
				return member;
			}
		}
		return null;
	}

	public static void registerInGroup(final Member member,
			final String groupID, Session session) {

		Group group = null;

		group = Utils.<Group> extractFromMarkerSet(groupsSet,
				new Group(groupID));

		if (member.getMemberGroupSessions().get(group) == null) {
			Set<Session> sessions = new HashSet();
			sessions.add(session);
			member.getMemberGroupSessions().put(group, sessions);
		} else {
			member.getMemberGroupSessions().get(group).add(session);
		}

		group.getMembers().add(member);
		notifyGroupMembersByHisCommingOn(group, member);

	}

	private static void notifyGroupMembersByHisLeftingOf(final Group group,
			final Member member) {

		ChatMessage chatMessage = ChatMessage.prepareLeftingOfMessage(member,
				group);
		for (Member curMember : group.getMembers()) {
			if (curMember.equals(member) == false) {

				for (Session session : sessionsMap.get(curMember)) { 

					sendMessage(session, chatMessage);
				}
			}
		}

	}

	private static void notifyGroupMembersByHisCommingOn(final Group group,
			final Member member) {

		ChatMessage chatMessage = ChatMessage.prepareCommingOnMessage(member,
				group);
		for (Member curMember : group.getMembers()) {
			if (curMember.equals(member) == false) {

				for (Session session : sessionsMap.get(curMember)) {
					sendMessage(session, chatMessage);
				}
			}
		}
	}

	public static void refreshSession(Member member) {

	}

	public static void leaveGroup(String memberID, String groupID) {

		Group group = Utils.<Group> extractFromMarkerSet(groupsSet, new Group(
				groupID));

		if (group != null) {

			notifyGroupMembersByHisLeftingOf(group,getMemberByID(memberID) );

		}
	}

}
