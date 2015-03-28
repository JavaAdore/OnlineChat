package com.websocket;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.websocket.Session;

import org.codehaus.jackson.annotate.JsonIgnore;

public class Member implements Marker {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Long ID;
	
	private String name;
	
	private String email;
	
	private String profilePicture;
	
	private int status;
	
	private String password;
	
	private Map<Group , Set<Session>> memberGroupSessions ;
	
	{
		memberGroupSessions = new HashMap<Group, Set<Session>>();
	}
	
	
	public Member() {
		super();
	}
	
	
	

	public Member(String friendID) {
		super();
		ID = Long.valueOf(friendID);
	}

	public Member(Long friendID) {
		super();
		ID = friendID;
	}


	@JsonIgnore
	private List<Member> friendsList;

	public void setFriendsList(List<Member> friendsList) {
		this.friendsList = friendsList;
	}
 
	public List<Member> getFriendsList() {
		return friendsList;
	}

	public Long getID() {
		return ID;
	}

	public void setID(Long iD) {
		ID = iD;
	}

	@JsonIgnore
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ID == null) ? 0 : ID.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
	
		Member other = (Member) obj;
		if (ID == null) {
			if (other.getID() == null)
				return false;
		} else if (ID.longValue() != other.getID().longValue())
			return false;
		return true;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProfilePicture() {
		return profilePicture;
	}

	public void setProfilePicture(String profilePicture) {
		this.profilePicture = profilePicture;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}



	@JsonIgnore
	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}


 
	@JsonIgnore
	public Map<Group, Set<Session>> getMemberGroupSessions() {
		return memberGroupSessions;
	}




	public void setMemberGroupSessions(Map<Group, Set<Session>> memberGroupSessions) {
		this.memberGroupSessions = memberGroupSessions;
	}



	

}
