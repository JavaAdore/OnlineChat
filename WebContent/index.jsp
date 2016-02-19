<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><%@ page
	language="java" autoFlush="true" buffer="1094kb"
	import="java.util.*,java.io.*,java.util.regex.*,java.util.*"%>
<%@ page language="java" import="java.net.URLEncoder"%>
<%@ page import="java.net.URLDecoder"%>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Campusoxide</title>


<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/menu-vertical.css" rel="stylesheet" type="text/css" />
<link href="css/colorbox.css" rel="stylesheet" media="screen" />
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.3/jquery.min.js"></script>
<!--<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>-->

<script src="js/jQuery.bubbletip-1.0.6.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.colorbox.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#user_menu').click(function() {
			$('#user_menu > ul').animate({
				height : 'toggle'
			}, 200);
		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".close").click(function() {
			var button = $(this);
			button.parent().animate({
				height : 'toggle'
			}, 300);

		});
	});
	$(document).ready(function() {
		$(".add_comment > textarea").click(function() {
			var button = $(this);
			button.parent().addClass("view_button");

		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".group1").colorbox({
			rel : 'group1'
		});
		$(".inline2").colorbox({
			inline : true,
			width : "40%"
		});
	});
</script>

<script type="text/javascript">
	$(document).ready(function() {
		$(".inline3").colorbox({
			inline : true,
			width : "880px",
			height : "80%"
		});
	});

	$(document).ready(function() {
		$("#chat-sidebar-open").click(function() {
			var button = $(this);
			button.parent().addClass("open");

		});

		$("#chat-sidebar-close").click(function() {
			var button = $(this);
			button.parent().removeClass("open");

		});
		$('#chat-sidebar-header').click(function() {
			$('#chat-sidebar-content').animate({
				height : 'toggle'
			}, 200);
		});

	});

	
</script>
</head>

<body>

	<a onclick="leaveCurrentGroup()" style="color: red">Link</a>

	<div id="chat-sidebar">
		<div>
			<div id="chat-sidebar-header">
				Friends Online<span id="chat-sidebar-open">Open</span><span
					id="chat-sidebar-close"><a
					href="javascript:close_popup('narayan-prusty');">Close</a></span>
			</div>
			<div id="chat-sidebar-content">
				
			</div>
		</div>
	</div>
	<div id="chatboxes">
		
	</div>



	<script>
		var webSocket;
		var UID = 'UID-';
		var applicationName = window.location.pathname.substr(0, window.location.pathname.lastIndexOf('/'));
		applicationName = applicationName.replace('/',''); 
		serviceLocation = "/"+applicationName+"/chat";
		var membersList = $("<div/>");

		window.addEventListener("beforeunload", "myFunction", true);
		
			
		

		function leaveCurrentGroup() {
			window.location = "leaveGroupServlet?group=" + groupID;
		}

		$(document).ready(function() {
			loginMemberID = "${sessionScope.member.getID().longValue()}";
			groupID = 3;
			initializeMenu('chat-sidebar-content');

			

		});

		function initializeMenu(menuID) {

			var menu = getElementByID(menuID);
			
			$(menu).empty();

			$.ajax({
				contentType : "application/json; charset=utf-8",
				url : "ws/services/getGroupOnlineMembers/" + loginMemberID
						+ "/" + groupID,
				type : "GET",
				async : false,
				success : function(result) {
					for (i = 0; i < result.length; i++) {
						if (result[i].id == loginMemberID) {
							continue;
						}

						g = (result[i].group != null) ? result[i].group
								: groupID;
						addUserMenuItem(result[i].id, g, result[i].name, result[i].profilePicture);
					}
				},
				error : function(xhr, msg) {
					alert(msg);
				}
			});

			$(menu).append(membersList);

		}

		function addUserMenuItem(friendID, groupID, email,profilePicture) {
			
			if (friendID == loginMemberID) {
				return;
			}

			var alradyExist = document.getElementById(friendID + "-" + groupID);
			if (alradyExist != null) {
				return;
			}

			var userListItem = $("<div/>").addClass("sidebar-name").attr("UID",
					friendID);
			$(userListItem).attr('GID', groupID);
			$(userListItem).attr('id', friendID + "-" + groupID);
			var innerTable = $("<table>").append("<tr />");

			var imageTD = $("<td/>");
			$(imageTD)
					.prepend(
							$('<img>',
									{
										id : 'IMG_'+friendID,
										src : profilePicture
									}).css("width", "30").css("height", "30"));
			var nameSpan = $("<span />").attr('id', "U_" + friendID).append(
					email);
			$(nameSpan).attr('GID', groupID);
			$(innerTable).append(imageTD);
			$(innerTable).append("<td />").append(nameSpan);

			$(innerTable).appendTo(userListItem);
			$(userListItem).appendTo(membersList);

			$(userListItem).click(function() {
				var friendID = $(this).attr('UID');
				var chatBox = loadOrInitiateChatBox(friendID, groupID , profilePicture);

				$(chatBox).animate({
					height : 'toggle'
				}, 0);
			});

		}

		function trimPrefex(str, pref) {
			return str.replace(pref, '');
		}

		function getElementByID(elementID) {
			var myID = '#' + elementID;
			return $(myID);
		}

		var chatBoxs = {};

		function loadOrInitiateChatBox(userID, groupID) {
			var chatWindow = getChatWindow(userID, groupID);
			if (isNotDefined(chatWindow)) {
				chatWindow = defineAndRegisterWindow(userID, groupID);
			}
			return chatWindow;
		}

		function initializeNewChatBoxsMap() {
			chatBoxs = {};
		}

		function getChatWindow(userID, groupID) {
			var compositKey = initiateCompisitKey(userID, groupID);
			return chatBoxs[compositKey];
		}
		function initiateCompisitKey(userID, groupID) {
			return loginMemberID + '-' + userID + '-' + groupID;
		}

		function isNotDefined(obj) {
			return obj == null || obj == 'undefined';
		}

		function defineAndRegisterWindow(userID, groupID) {

			chatWindow = createNewWindow(userID, groupID);

			addInChatWindowsBar(chatWindow);

			registerWindow(initiateCompisitKey(userID, groupID), chatWindow);

			return chatWindow;
		}

		function addInChatWindowsBar(chatWindow) {

		var numberOfOpendWindows = 	$("#chatboxes").children().length;
			
			
				$("#chatboxes").append(chatWindow);
			

		}

		function createNewWindow(userID, groupID) {
			var compositKey = initiateCompisitKey(userID, groupID);
			var chatWindowBox = $("<div />").addClass('fb').attr('id',
					compositKey);
			var head = prepareChatWindowHead(userID);

			var body = prepareChatWindowBody(userID, groupID);
			var footer = prepareChatTextFooter(userID, groupID);
			$(head).appendTo(chatWindowBox);
			$(body).appendTo(chatWindowBox);
			$(footer).appendTo(chatWindowBox);
			$(head).click(function() {
				$(chatWindowBox).animate({
					height : 'toggle'
				}, 0);
			});
			$(head).last().click(function() {
				$(this).parent().click();
			});

			return chatWindowBox;

		}

		function prepareChatWindowHead(userID) {
			var headDiv = $("<div />").addClass("fb-head");
			var fbOnlineSpan = $("<span />").addClass("fb-online");
			var nameSpan = document.getElementById('U_'+userID);
			var nameLink = $('<a/>');
			nameLink.attr('href', 'somewhere_far_far_away');
			nameLink.text($(nameSpan).text());

			var closeLink = $("<a />").addClass("fb-close");

			$(fbOnlineSpan).appendTo(headDiv);
			$(nameLink).appendTo(headDiv);
			$(closeLink).appendTo(headDiv);
			return headDiv;

		}

		function prepareChatWindowBody(userID, groupID) {
			var fbContent = $("<div />").addClass("fb-content");

			var chatMessageContainers = prepareChatMessagesContainer(userID,
					groupID);

			// 			var oldChatHistory = fetchOldHistory(userID, groupID);

			$(chatMessageContainers).appendTo(fbContent);

			return fbContent;

		}

		function prepareChatMessagesContainer(userID, groupID) {
			var compositKey = initiateCompisitKey(userID, groupID);
			var messageContainer = $("<ul />").addClass("chatMessages").attr(
					"id", 'CON_' + compositKey);
			return messageContainer;

		}

		function fetchOldHistory(userID, groupID) {
			$.ajax({
				contentType : "application/json; charset=utf-8",
				url : "OnlineChatHTML/ws/services/loadChatHistory/"
						+ loginMemberID + "/" + userID + "/" + groupID,
				type : "GET",
				async : false,
				success : function(result) {

				}
			});
		}

		function prepareChatTextFooter(userID, groupID) {
			var footerDiv = $("<div />").addClass("fb-footer");
			var inputText = $("<input />").addClass("fb-chat-box").attr(
					"placeholder", "Write your message here...").attr("type",
					"text").attr('UID', userID);
			$(inputText).attr("GID", groupID);
			var sticker = $("<div />").addClass("fb-sticker");
			$(inputText).keydown(
					function(e) {
						if (e.keyCode == 13) {
							var a = $(inputText).val().trim();
							if (a.length > 0) {
								reciever = $(inputText).attr('UID');
								var msg = '{"message":"' + $(inputText).val()
										+ '"' + ',"sender":"' + loginMemberID
										+ '"' + ',"reciever":"' + reciever
										+ '"' + ',"group":"'
										+ $(inputText).attr('GID') + '"' + "}";
								webSocket.send(msg);
								$(inputText).val('');

							}
						} else if (e.keyCode == 27) {
							$(this).parent().parent().animate({
								height : 'toggle'
							}, 300);

						}
					});
			$(inputText).appendTo(footerDiv);
			$(sticker).appendTo(footerDiv);
			return footerDiv;

		}

		function registerWindow(key, chatWindow) {
			chatBoxs[key] = chatWindow;
		}



		var bSaved = false;
		window.onbeforeunload = function(e){
		  bSaved = true;
		  
		  var msg = '{"message":"' + '' + '"' + ',"sender":"' + loginMemberID
			+ '"' + ',"reciever":"' + '-100' + '"' + ',"group":"'
			+ groupID + '"' + ',"messageCode":"-100"' + "}";

			webSocket.send(msg);
	
		  window.setTimeout('bSaved = true',2000);

		  while (!bSaved) {}

		  };
		    

	

	
		
		$(document).ready(
				function() {

					try
					{
					webSocket = new WebSocket("ws://"
							+ window.location.hostname
							+ (location.port ? ':' + location.port : '')
							+ serviceLocation + "/" + loginMemberID + "/"
							+ groupID);
					}catch(e)
					{
						alert(e);
					}

				
					
					
				     
					webSocket.onmessage = function onMessageReceived(evt) {

						// var msg = eval('(' + evt.data + ')');
						var msg = JSON.parse(evt.data); // native API

						if (msg.messageCode == null
								|| msg.messageCode == 'undefined') {
							var window;
							if (imTheSender(msg)) {
								window = loadOrInitiateChatBox(msg.reciever,
										msg.group );
							} else {
								window = loadOrInitiateChatBox(msg.sender,
										msg.group);
							}

							appendMessage(msg, window);

						} else {
							handleSystemMessage(msg);

						}
					};

				}

		);

		function handleSystemMessage(msg) {

			if (msg.messageCode == 1) {

				
				addUserMenuItem(msg.member.id, msg.group, msg.member.name , msg.member.profilePicture);

			} else if (msg.messageCode == -1) {

				removeUserMenuItem(msg.sender, msg.group);
			}
		}

		function removeUserMenuItem(friendID, group) {
			try {
				var x = document.getElementById(friendID + "-" + group);
				$(x).remove();
			} catch (exception) {

			}
		}

		function imTheSender(msg) {
			return msg.sender == loginMemberID;
		}

		function appendMessage(msg, windo) {

			var chatArea = $(windo).children()[1];
			if (msg.sender != loginMemberID) {
				var image = getElementByID('IMG_'+msg.sender);
				var frinedName = $(getElementByID('U_'+msg.sender)).text();
				$("<li></li>").html(
						'<table><tr><td><img   src="'+$(image).attr('src')+'" style="max-width:30px ; max-height:30px" width="30px" height="30px" '+"title = "+frinedName+" alt = "+frinedName+'></td><td>'
								+ msg.message + '</td></tr></table>').appendTo(
						chatArea);
			} else {
				$("<li></li>").html(
						'<table><tr><td style="position:absolute; right:0px" >' + msg.message + '</td></tr></table>')
						.appendTo(chatArea);

			}

			if (isNotVisible(windo)) {
				$(windo).animate({
					height : 'toggle'
				}, 200);

			}
		}

		function isNotVisible(windo) {
			return $(windo).is(":hidden");
		}
	</script>
</body>
</html>
