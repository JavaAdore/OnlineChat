package com.websocket.bean;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import com.websocket.ChatEndpoint;
import com.websocket.Member;

@ManagedBean
@ViewScoped
public class LoginBean implements Serializable {

	private static final long serialVersionUID = 1L;

	Map<String, String> loginUsers;
	private String username;
	private String password;
	private FacesMessage fm;

	@PostConstruct
	public void init() {
		if (loginUsers == null) {
			loginUsers = new HashMap<>();
			loginUsers.put("a", "a");
			loginUsers.put("b", "b");
			loginUsers.put("c", "c");
			loginUsers.put("d", "d");
			loginUsers.put("f", "f");
			loginUsers.put("g", "g");
		}
		setMessage("Just sign in :)");
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public FacesMessage getFm() {
		return fm;
	}

	private void setMessage(String message) {
		fm = new FacesMessage(FacesMessage.SEVERITY_INFO, message, "Details");
		FacesContext.getCurrentInstance().addMessage(null, fm);
	}

	public void doLogin() {
		try {
			
			
				Member member = ChatEndpoint.login(username, password);
			if(member !=null)
			{
			HttpSession httpSession = (HttpSession)	FacesContext.getCurrentInstance().getExternalContext().getSession(true);
			httpSession.setAttribute("member", member);
				FacesContext.getCurrentInstance().getExternalContext()
						.redirect("index.jsp");

			} else {
				fireMessage(FacesMessage.SEVERITY_ERROR,
						"Wrong user name or password :(");
			}

		} catch (Exception ex) {
			fireMessage(FacesMessage.SEVERITY_FATAL, "Exception :(");
			ex.printStackTrace();
		}

	}

	public static void fireMessage(FacesMessage.Severity severity,
			String messageToDisplay) {
		FacesContext
				.getCurrentInstance()
				.getCurrentInstance()
				.addMessage(null,
						new FacesMessage(severity, messageToDisplay, "Details"));

	}
}
