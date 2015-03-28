package com.websocket;

import java.io.Serializable;

import javax.persistence.Transient;
import javax.websocket.Session;

public class Conversation implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private long id;

	private MemberIdentifierInt member;

	private MemberIdentifierInt friend;

	@Transient
	private Session memberSession;

	@Transient
	private Session friendSession;

	public Conversation() {
	}

	public Conversation(MemberIdentifierInt member, MemberIdentifierInt friend) {
		super();
		this.member = member;
		this.friend = friend;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public MemberIdentifierInt getMember() {
		return member;
	}

	public void setMember(MemberIdentifierInt member) {
		this.member = member;
	}

	public MemberIdentifierInt getFriend() {
		return friend;
	}

	public void setFriend(MemberIdentifierInt friend) {
		this.friend = friend;
	}

	public Session getMemberSession() {
		return memberSession;
	}

	public void setMemberSession(Session memberSession) {
		this.memberSession = memberSession;
	}

	public Session getFriendSession() {
		return friendSession;
	}

	public void setFriendSession(Session friendSession) {
		this.friendSession = friendSession;
	}

	public boolean isMemberSessionActive() {
		return (memberSession != null && memberSession.isOpen());
	}

	public boolean isFriendSessionActive() {
		return (friendSession != null && friendSession.isOpen());
	}

	public String getOtherPartId(String senderID) {
		if (member != null && String.valueOf(member.getID()).equals(senderID)) {
			if (friend != null) {
				if (friend.getID() != null) {
			 		return String.valueOf(friend.getID());
				}
			}
		} else if (member != null
				&& (String.valueOf(member.getID()).equals(senderID) == false)) {
			return String.valueOf(member.getID());
		}
		return senderID;
	}

}
