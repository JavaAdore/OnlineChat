package com.websocket;

import java.io.Serializable;
import java.util.List;

public interface MemberIdentifierInt extends Serializable {

	public Long getID();

	public void setID(Long ID);
 
	public List<? extends MemberIdentifierInt> getFriendsList();

	public boolean equals(Object member);

	public int hashCode();
	
	public String getEmail();
	
	public String getProfilePicture();
	
	public int getStatus();
	

}
