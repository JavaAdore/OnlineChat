package com.websocket;

import java.util.HashSet;
import java.util.Set;

public class Group implements Marker{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Long ID;
	
	private Set<Member> members = new HashSet();
	
	
	public Group(){}
	
	

	public Group(Long ID) {
		super();
		this.ID = ID;
	}

	
	public Group(String ID)
	{
		this(Long.parseLong(ID));
	}


	public Long getID() {
		return ID;
	}

	public void setID(Long ID) {
		this.ID = ID;
	}

	public Set<Member> getMembers() {
		return members;
	}

	public void setMembers(Set<Member> members) {
		this.members = members;
	}



	public void removeMember(Member member) {
		members.remove(member);
		
	}



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
		if (getClass() != obj.getClass())
			return false;
		Group other = (Group) obj;
		if (ID == null) {
			if (other.ID != null)
				return false;
		} else if (!ID.equals(other.ID))
			return false;
		return true;
	}
	
	
	
	
	

	
	
}
