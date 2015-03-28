<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><%@ page language="java" autoFlush="true"  buffer="1094kb"  import="java.util.*,java.io.*,java.util.regex.*,java.util.*" %>
<%@ page language="java" import="java.net.URLEncoder"%>
<%@ page import = "java.net.URLDecoder"%>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Campusoxide</title>


<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/menu-vertical.css" rel="stylesheet" type="text/css" />
<link href="css/colorbox.css" rel="stylesheet" media="screen"/>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.3/jquery.min.js"></script>
<!--<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>-->

<script src="js/jQuery.bubbletip-1.0.6.js" type="text/javascript"></script>
<script  type="text/javascript" src="js/jquery.colorbox.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
     $('#user_menu').click(function() {
          $('#user_menu > ul').animate({
               height: 'toggle'
               }, 200
          );
     });
});
</script>
<script type="text/javascript">
$(document).ready(function(){
    $(".close").click(function(){
        var button = $(this);
        button.parent().animate({
               height: 'toggle'
               }, 300
          );

    });
});
$(document).ready(function(){
     $(".add_comment > textarea").click(function(){
        var button = $(this);
        button.parent().addClass("view_button");

    });
});
</script>
<script type="text/javascript">
		$(document).ready(function(){
		$(".group1").colorbox({rel:'group1'});
		$(".inline2").colorbox({inline:true, width:"40%"});
		});
</script>

<script type="text/javascript">
$(document).ready(function(){
		$(".inline3").colorbox({inline:true, width:"880px", height:"80%"});
});

$(document).ready(function() {
      $("#chat-sidebar-open").click(function(){
        var button = $(this);
        button.parent().addClass("open");

    });

     $("#chat-sidebar-close").click(function(){
        var button = $(this);
        button.parent().removeClass("open");

    });
	$('#chat-sidebar-header').click(function() {
          $('#chat-sidebar-content').animate({
               height: 'toggle'
               }, 200
          );
     });

    
});

$(document).ready(function(){
    $(".fb-head > .fb-close").click(function(){
        var button = $(this);
        button.parent().parent().animate({
               height: 'toggle'
               }, 0
          );

    });
});
$(document).ready(function() {
     $('#chatbox1').click(function() {
          $('#chat-box1').animate({
               height: 'toggle'
               }, 0
          );
     });
	 $('#chatbox2').click(function() {
          $('#chat-box2').animate({
                height: 'toggle'
               },0
          );
     });
	 $('#chatbox3').click(function() {
          $('#chat-box3').animate({
               height: 'toggle'
               },0
          );
     });
});


$(function () {
    $("#text-messages1").keydown(function (e){
    if(e.keyCode == 13){
        var a = $("#text-messages1").val().trim();
        if (a.length > 0) {
           $("#text-messages1").val('');
            $("#text-messages1").focus();
            $("<li></li>").html('<img src="images/img_11.jpg"/><span>' + a + '</span>').appendTo("#messages1");
        }
}
    });
	
});
$(function () {
    $("#text-messages2").keydown(function (e){
    if(e.keyCode == 13){
        var a = $("#text-messages2").val().trim();
        if (a.length > 0) {
           $("#text-messages2").val('');
            $("#text-messages2").focus();
            $("<li></li>").html('<img src="images/img_11.jpg"/><span>' + a + '</span>').appendTo("#messages2");
        }
}
    });
	
});
$(function () {
    $("#text-messages3").keydown(function (e){
    if(e.keyCode == 13){
        var a = $("#text-messages3").val().trim();
        if (a.length > 0) {
           $("#text-messages3").val('');
            $("#text-messages3").focus();
            $("<li></li>").html('<img src="images/img_11.jpg"/><span>' + a + '</span>').appendTo("#messages3");
        }
}
    });
	
});


</script>
</head>

<body>
<html:form action="searchCollegeResult.do" method="post" enctype="multipart/form-data">
<div id="wrapper">
	<div id="header">
    <div id="logo"><a href="index.html"><img src="images/logo.png" alt="" /></a></div>
    <div id="user_menu"><p><img src="images/icon_1.jpg" alt="" />Sachin</p>
    <ul>
    <li><a href="#">Home</a></li>
    <li><a href="#">Edit My Profile</a></li>
    <li><a href="#">Create a Campagin</a></li>
    <li><a href="#">Account Settings</a></li>
    <li><a href="#">Logout</a></li>
</ul>
    </div>
    <div id="msg"><a href="#"></a></div>
    <div id="flag"><a href="#"><img src="images/flag.png" alt="" /></a></div>
    <div id="navigation">
    <ul><li class="active"><a href="#">PROFILE</a></li> <li><a href="#">COMPANIES</a></li> <li><a href="#">JOBS</a></li> <li><a href="#">INTERVIEW</a></li> <li><a href="#">NOTES</a></li></ul>
    </div>
    </div>
    
<div id="content" class="whitebox3">
<div id="nav">
<ul>
<li class="active"><a href="#">Discussions</a></li> <li><a href="#">Promotions</a></li> <li><a href="#">Jobs</a></li> <li><a href="#">Search</a></li>
</ul>
<a href="#" class="join">Join</a>
</div>
<div id="profile_left">
    <div class="user_image"><div><img src="images/img_1.jpg" alt="" /></div></div>
    <div class="user_name">Lorem Ipsum</div>
    <div id="left_nav">
    <ul>
    <li><a href="#">All Company</a></li>
    <li><a href="#">Big Data Solution<span>95</span></a></li>
    <li><a href="#">Link....</a></li>
    <li><a href="#">Link....</a></li>
    <li><a href="#">Link....</a></li>
    <li><a href="#">Link....</a></li>
    <li><a href="#">Link....</a></li>
    <li><a href="#">Link....</a></li>
    <li><a href="#">Link....</a></li>
    
    <li><a href="#"><img src="images/icon_55.png" alt="" />Browse Groups</a></li>
    <li><a href="#"><img src="images/icon_56.png" alt="" />Create Group</a></li>
	</ul>
    </div>
    </div>
    
    <div class="top_new">
    
<div id="group"><div class="picture"><img src="images/brown_img.png" alt="" /></div>
<div class="name"><div class="left"><a href="#">Group Name</a></div><div class="right">32,533 members</div></div>
</div>
<div class="friends">
<div id="friendlist">
<div><a href="#"><img alt="" src="images/brown_img.png"><p>Name</p></a></div>
<div><a href="#"><img alt="" src="images/brown_img.png"><p>Name</p></a></div>
<div><a href="#"><img alt="" src="images/brown_img.png"><p>Name</p></a></div>
<div><a href="#"><img alt="" src="images/brown_img.png"><p>Name</p></a></div>
<div><a href="#"><img alt="" src="images/brown_img.png"><p>Name</p></a></div>
<div><a href="#"><img alt="" src="images/brown_img.png"><p>Name</p></a></div>
<div><a href="#"><img alt="" src="images/brown_img.png"><p>Name</p></a></div>
<div class="addfriend"><a class="inline2" href="#add_friend"><img alt="" src="images/brown_img.png"><p>Add +</p></a></div>
</div>
<div style='display:none'><div id="add_friend">
<div id="email">
<h3>Add Members</h3>
<div><input type="email" value="name or e-mail" onblur="if(this.value=='')this.value=this.defaultValue;" onfocus="if(this.value==this.defaultValue)this.value='';" name="message">
<input type="submit" value="Add" name=""></div></div>
<div class="members"><div class="author_image"><img alt="" src="images/img_12.jpg"></div><div><h2>Name</h2></div><div><input type="submit" name="" value="Send"></div></div><div class="members"><div class="author_image"><img alt="" src="images/img_12.jpg"></div><div><h2>Name</h2></div><div><input type="submit" name="" value="Send"></div></div><div class="members"><div class="author_image"><img alt="" src="images/img_12.jpg"></div><div><h2>Name</h2></div><div><input type="submit" name="" value="Send"></div></div>

</div></div></div><div class="anounnsment">
<h3>Anounnsment</h3>
<div>
<div class="author"><img alt="" src="images/img_106.jpg"></div>
<h5><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h5>
<p>Lorem ipsum dolor sit amet, consectetur ...</p>
<div class="likes"><a href="#">like</a>157</div>
<div class="coments"><a href="#">coment</a>10</div>
</div>
<div>
<div class="author"><img src="images/img_11.jpg" alt=""></div>
<h5><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h5>
<p>Lorem ipsum dolor sit amet, consectetur ...</p>
<div class="likes"><a href="#">like</a>2</div>
<div class="coments"><a href="#">coment</a>0</div>
</div>
<div>
<div class="author"><img alt="" src="images/img_100.jpg"></div>
<h5><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h5>
<p>Lorem ipsum dolor sit amet, consectetur ...</p>
<div class="likes"><a href="#">like</a>25</div>
<div class="coments"><a href="#">coment</a>1</div>
</div>
</div>

    </div>
<div id="right_panel">

<div>
<div class="idTabs"><div><a href="#tab1">Conversations</a></div><div><a href="#tab2">Info</a></div><div><a href="files_listing.html">Files</a></div><div><a href="notes_listing.html">Notes</a></div></div>
<div class="tab_container">
<div id="tab1">
<div>
<div class="idTabs"><div><a href="#tab11"><img src="images/icon55.png" alt="" />Update</a></div><div><a href="#tab12"><img src="images/icon56.png" alt="" />poll</a></div></div>
<div class="tab_container">
<div id="tab11">
<textarea name="" cols="" rows=""></textarea><input name="" value="Post" type="button" />
<div class="blog"><div class="close">Hide</div>
<div class="author_image">
<img src="images/logothump.jpg" alt="" />
<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div>
</div>
<h3><a href="#">Pulse</a> recommends this news for you</h3>

<p><img src="images/img_1.jpg" alt="" /><strong>Lorem Ipsum is simply dummy text of the</strong><br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit, nisl diam bibendum justo, quis lacinia neque sem non purus...		22h</p>
<div class="blog_comments">
<div><div class="author_image"><a href="#"><img src="images/img_11.jpg" alt="" /></a>
<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div>
</div>
<p>Nam tempus dolor id nulla ultrices, vitae facilisis nisi aliquet.<br /> Slideshare.net.3m</p> 
</div>
<div><div class="author_image author_image_color"><a id="bubble3" href="#">HU</a>
<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div>
</div>
<p>Nam tempus dolor id nulla ultrices, vitae facilisis nisi aliquet.<br /> Slideshare.net.3m</p> 
</div>
<div><div class="author_image"><a href="#"><img src="images/img_12.jpg" alt="" /></a>
<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div>
</div>

<p>Nam tempus dolor id nulla ultrices, vitae facilisis nisi aliquet.<br /> Slideshare.net.3m</p> 

</div>
</div>
<div><a href="#" class="see">See your news</a></div>
</div><div class="blog"><div class="close">Hide</div>
<div class="author_image"><img src="images/img_12.jpg" alt="" /><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div><h3><a href="#">IBM</a></h3>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit, nisl diam bibendum justo, quis lacinia neque sem non purus...	</p>
<div class="image_post"><img src="images/05.jpg" alt="" /></div>
<div class="likes_comments">
<ul>
<li><a href="#">Like (10)</a></li> <li><a href="#">Comment (7)</a></li> <li><a href="#">Share</a></li> <li>4 days ago</li>
</ul>
</div>
<div class="blog_liks"><p><a href="#">Anu Roy</a>, <a href="#">soumi Malik</a> and 26 others</p></div>
<div class="blog_comments">
<a href="#" class="view_previous">View previous comment</a>
<div><div class="author_image"><img src="images/img_11.jpg" alt="" /><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div>
<h5><a href="#">Name</a> Text</h5>
<p>Honestly, in my experience, it's hard. I completely agree with you on the 
tactile front. Also there's the general problem that the remote ...</p> 
<p><i>7 days ago</i></p>
</div><div><div class="author_image author_image_color">UL<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div>
<h5><a href="#">Name</a> Text</h5>
<p>Honestly, in my experience, it's hard. I completely agree with you on the 
tactile front. Also there's the general problem that the remote ...</p> 
<p><i>6 days ago</i></p>
</div>
<div class="add_comment"><textarea name="" cols="10" rows="10"></textarea><input name="" value="Comment" type="button" /></div>
</div>
</div><div class="blog"><div class="close">Hide</div><div class="author_image author_image_color">
<a href="#">VW</a><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div><h3><a href="#">Pulse</a> recommends this news for you 1</h3>
<div class="image_gallery">
<div><a class="group1" href="images/05.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/05.jpg" alt="" /></a></div>
<div><a class="group1" href="images/06.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/06.jpg" alt="" /></a></div>
<div><a class="group1" href="images/07.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/07.jpg" alt="" /></a></div>
<div><a class="group1" href="images/06.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/06.jpg" alt="" /></a></div>
<div><a class="group1" href="images/07.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/07.jpg" alt="" /></a></div>
<div><a class="group1" href="images/06.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/06.jpg" alt="" /></a></div>
<div><a class="group1" href="images/07.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/07.jpg" alt="" /></a></div>
</div></div>

<div class="blog"><div class="close">Hide</div><div class="author_image author_image_color">
<a href="#">BW</a><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div><h3><a href="#">Pulse</a> recommends </h3>


</div>
<div class="blog"><div class="close">Hide</div><div class="author_image author_image_color">
<a href="#">BW</a><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div><h3><a href="#">Pulse</a> recommends </h3>


</div>
<div class="blog"><div class="close">Hide</div><div class="author_image author_image_color">
<a href="#">BW</a><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div><h3><a href="#">Pulse</a> recommends </h3>

</div>
<div class="blog"><div class="close">Hide</div><div class="author_image author_image_color">
<a href="#">BW</a><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div><h3><a href="#">Pulse</a> recommends </h3>

</div>
<div class="blog"><div class="close">Hide</div><div class="author_image author_image_color">
<a href="#">BW1</a><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div><h3><a href="#">Pulse</a> recommends </h3>

</div>
<div class="blog"><div class="close">Hide</div><div class="author_image author_image_color">
<a href="#">BW1</a><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div><h3><a href="#">Pulse</a> recommends </h3>

</div>

</div>
<div id="tab12">
<div class="poll_block">
<div class="question_ans">
<div><div class="attach"><input name="" type="file" /></div><textarea name="message" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;">What's Your Question?</textarea></div>
<div><input name="message" type="text" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" value="Answer" />
<input name="message" type="text" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" value="Answer" />
<input name="message" type="text" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" value="Answer" /></div>
<input name="" value="Post" class="right" type="submit" />
</div>
</div>
<div class="blog">
<div class="author_image author_image_color">
<a href="#">PR12</a>
<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div>
</div>
<h3><a href="#">Pulse</a> recommends this news for you</h3>

<p><img src="images/img_1.jpg" alt="" /><strong>Lorem Ipsum is simply dummy text of the</strong><br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit, nisl diam bibendum justo, quis lacinia neque sem non purus...		22h</p>
<div class="blog_content"><div class="author_image"><a href="#"><img src="images/img_11.jpg" alt="" /></a>
<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div>
</div>
<p>Nam tempus dolor id nulla ultrices, vitae facilisis nisi aliquet.<br /> Slideshare.net.3m</p> 
</div>
<div class="blog_content"><div class="author_image author_image_color"><a href="#">OP</a>
<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div>
</div>
<p>Nam tempus dolor id nulla ultrices, vitae facilisis nisi aliquet.<br /> Slideshare.net.3m</p> 
</div>
<div class="blog_content"><div class="author_image author_image_color"><a href="#">VS</a>
<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div>
</div>

<p>Nam tempus dolor id nulla ultrices, vitae facilisis nisi aliquet.<br /> Slideshare.net.3m</p> 

</div>
<div><a href="#" class="see">See your news</a></div>
</div><div class="blog">
<div class="author_image"><img src="images/img_11.jpg" alt="" /><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div><h3><a href="#">IBM</a></h3>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit, nisl diam bibendum justo, quis lacinia neque sem non purus...	</p>
<div class="image_post"><img alt="" src="images/05.jpg"></div>
<div class="likes_comments">
<ul>
<li><a href="#">Like (10)</a></li> <li><a href="#">Comment (7)</a></li> <li><a href="#">Share</a></li> <li>4 days ago</li>
</ul>
</div>
<div class="blog_liks"><p><a href="#">Anu Roy</a>, <a href="#">soumi Malik</a> and 26 others</p></div>
<div class="blog_comments">
<a href="#" class="view_previous">View previous comment</a>
<div><div class="author_image"><img src="images/img_12.jpg" alt="" /><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div>
<h5><a href="#">Name</a> Text</h5>
<p>Honestly, in my experience, it's hard. I completely agree with you on the 
tactile front. Also there's the general problem that the remote ...</p> 
<p><i>7 days ago</i></p>
</div><div><div class="author_image author_image_color">MY<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div>
<h5><a href="#">Name</a> Text</h5>
<p>Honestly, in my experience, it's hard. I completely agree with you on the 
tactile front. Also there's the general problem that the remote ...</p> 
<p><i>6 days ago</i></p>
</div>
<div class="add_comment"><textarea name="" cols="10" rows="10"></textarea><input name="" value="Comment" type="button" /></div>
</div>
</div>
<div class="blog"><div class="author_image author_image_color">
<a href="#">BJ</a><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div><h3><a href="#">Pulse</a> recommends this news for you </h3>
<div class="image_gallery">
<div><a class="group1" href="images/05.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/05.jpg" alt="" /></a></div>
<div><a class="group1" href="images/06.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/06.jpg" alt="" /></a></div>
<div><a class="group1" href="images/07.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/07.jpg" alt="" /></a></div>
<div><a class="group1" href="images/06.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/06.jpg" alt="" /></a></div>
<div><a class="group1" href="images/07.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/07.jpg" alt="" /></a></div>
<div><a class="group1" href="images/06.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/06.jpg" alt="" /></a></div>
<div><a class="group1" href="images/07.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/07.jpg" alt="" /></a></div>

</div></div>
</div>
</div>
</div>
</div>
<div id="tab2">
<textarea name="" cols="" rows=""></textarea><input name="" value="Post" type="button" />
<div class="blog">
<div class="author_image author_image_color">
<a href="#">100</a>
<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div>




</div>
<h3><a href="#">Pulse</a> recommends this news for you</h3>

<p><img src="images/img_1.jpg" alt="" /><strong>Lorem Ipsum is simply dummy text of the</strong><br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit, nisl diam bibendum justo, quis lacinia neque sem non purus...		22h</p>
<div class="blog_comments">
<div><div class="author_image"><a href="#"><img src="images/img_11.jpg" alt="" /></a>
<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div>
</div>
<p>Nam tempus dolor id nulla ultrices, vitae facilisis nisi aliquet.<br /> Slideshare.net.3m</p> 
</div>
<div><div class="author_image author_image_color"><a id="bubble3" href="#">HU</a>
<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div>
</div>
<p>Nam tempus dolor id nulla ultrices, vitae facilisis nisi aliquet.<br /> Slideshare.net.3m</p> 
</div>
<div><div class="author_image"><a href="#"><img src="images/img_12.jpg" alt="" /></a>
<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div>
</div>

<p>Nam tempus dolor id nulla ultrices, vitae facilisis nisi aliquet.<br /> Slideshare.net.3m</p> 

</div>
</div>
<div><a href="#" class="see">See your news</a></div>
</div><div class="blog">
<div class="author_image author_image_color">QH<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div><h3><a href="#">IBM</a></h3>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit, nisl diam bibendum justo, quis lacinia neque sem non purus...	</p>
<div class="image_post"><img alt="" src="images/05.jpg"></div>
<div class="likes_comments">
<ul>
<li><a href="#">Like (10)</a></li> <li><a href="#">Comment (7)</a></li> <li><a href="#">Share</a></li> <li>4 days ago</li>
</ul>
</div>
<div class="blog_liks"><p><a href="#">Anu Roy</a>, <a href="#">soumi Malik</a> and 26 others</p></div>
<div class="blog_comments">
<a href="#" class="view_previous">View previous comment</a>
<div><div class="author_image"><img src="images/img_11.jpg" alt="" /><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div>
<h5><a href="#">Name</a> Text</h5>
<p>Honestly, in my experience, it's hard. I completely agree with you on the 
tactile front. Also there's the general problem that the remote ...</p> 
<p><i>7 days ago</i></p>
</div><div><div class="author_image author_image_color">NF<div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div>
<h5><a href="#">Name</a> Text</h5>
<p>Honestly, in my experience, it's hard. I completely agree with you on the 
tactile front. Also there's the general problem that the remote ...</p> 
<p><i>6 days ago</i></p>
</div>
<div class="add_comment"><textarea name="" cols="10" rows="10"></textarea><input name="" value="Comment" type="button" /></div>
</div>
</div>
<div class="blog"><div class="author_image author_image_color">
<a href="#">WF</a><div class="bubble"><div><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="images/img_100.jpg" alt="" /></td>
    <td align="left" valign="top"><h5><b>Narayana Shenoy</b></h5><p>Some Text Will goes here</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc interdum, arcu vel volutpat blandit,</p></td>
  </tr>
</table>
</div><div class="button_section"><input type="button" value="Send Message" name=""><input type="button" value="Follow" name=""></div></div></div><h3><a href="#">Pulse</a> recommends this news for you</h3>
<div class="image_gallery">
<div><a class="group1" href="images/05.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/05.jpg" alt="" /></a></div>
<div><a class="group1" href="images/06.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/06.jpg" alt="" /></a></div>
<div><a class="group1" href="images/07.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/07.jpg" alt="" /></a></div>
<div><a class="group1" href="images/06.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/06.jpg" alt="" /></a></div>
<div><a class="group1" href="images/07.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/07.jpg" alt="" /></a></div>
<div><a class="group1" href="images/06.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/06.jpg" alt="" /></a></div>
<div><a class="group1" href="images/07.jpg" title="Me and my grandfather on the Ohoopee."><img src="images/07.jpg" alt="" /></a></div>

</div></div>
</div>
</div>
</div>

</div>
<div id="left_panel" class="big">


<div class="whitebox3">
<h1>People You May Know</h1>
<div class="youmayknow peopleyoumayknow">
<ul><li><div class="author_image"><img alt="" src="images/img_12.jpg"></div><a href="#">Sachin</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image"><a href="#">MW</a></div><a href="#">Rumki S.</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image"><img alt="" src="images/img_11.jpg"></div><a href="#">Sachin</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image">MW</div><a href="#">Rumki S.</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>

<li><div class="author_image"><img alt="" src="images/img_100.jpg"></div><a href="#">Rumki S.</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image"><a href="#">MW</a></div><a href="#">Rumki S.</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image"><img alt="" src="images/img_11.jpg"></div><a href="#">Sachin</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image">MW</div><a href="#">Rumki S.</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image"><img alt="" src="images/img_12.jpg"></div><a href="#">Sachin</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image"><img alt="" src="images/img_100.jpg"></div><a href="#">Rumki S.</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image"><a href="#">MW</a></div><a href="#">Rumki S.</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image"><img alt="" src="images/img_11.jpg"></div><a href="#">Sachin</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image">MW</div><a href="#">Rumki S.</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image"><img alt="" src="images/img_12.jpg"></div><a href="#">Sachin</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
<li><div class="author_image"><img alt="" src="images/img_100.jpg"></div><a href="#">Rumki S.</a>, Recruitment manager at Destar consulting pvt ltd<br /><a href="" class="connect">Connect</a><a class="close">Close</a></li>
</ul>
<div>
<a href="#" class="seemore">See more » </a></div>
</div>
</div>
<div class="whitebox3">
<h1>People Also Viewed</h1>
<div class="youmayknow">
<ul>
<li><div class="author_image"><img alt="" src="images/img_12.jpg"></div><a href="#">Rumki S.</a><br />Recruitment manager at Destar consulting pvt ltd<br /></li>
<li><div class="author_image"><img alt="" src="images/img_100.jpg"></div><a href="#">Rumki S.</a><br />Recruitment manager at Destar consulting pvt ltd<br /></li>
<li><div class="author_image"><img alt="" src="images/img_11.jpg"></div><a href="#">Rumki S.</a><br />Recruitment manager at Destar consulting pvt ltd<br /></li>
</ul>
<div>
<a href="#" class="seemore">See more » </a></div>
</div>
</div>
<div class="whitebox3">
<h1>Who's Viewed Your Updates</h1>
<div class="viewed_by">
<div><h5><strong>Sachin , start getting noticed.</strong></h5>
<p>See who you reach when you share on LinkedIn.</p>
<a href="#">Great articles to get you started</a>
</div></div>
</div>
<div class="whitebox3">
<h1>Companies Want To Follow</h1>
<div class="companies">
<div><a href="#"><img src="images/img120.jpg" alt="" /></a></div>
<div><a href="#"><img src="images/img121.jpg" alt="" /></a></div>
<div><a href="#"><img src="images/img122.jpg" alt="" /></a></div>
<div><a href="#"><img src="images/img122.jpg" alt="" /></a></div>
<div><a href="#"><img src="images/img120.jpg" alt="" /></a></div>
<div><a href="#"><img src="images/img121.jpg" alt="" /></a></div>
</div>
</div>
<div class="whitebox3"><h1>Who's Viewed Your Profile</h1>
<div class="viewed">
<div><div class="viewed_no">100</div><p> Your profile has been viewed by 1 person in the past 90 days.</p></div>
</div>
</div>
<div class="whitebox3"><h1>Your CampusOxide Network</h1>
<div class="viewed">
<div><div class="viewed_no">2000</div><p> Connections</p></div>
<div>
<div class="viewed_no">605,657</div><p> Professionals in your Network</p>
</div>
</div>
</div>

<div class="whitebox3">
<h1>Groups You May Like</h1>
<div class="youmayknow">
<ul>
<li><div class="author_image"><img alt="" src="images/img_12.jpg"></div><a href="#">Outsource web designing and development work to india</a><br /><a href="" class="connect">Join</a> - Professional Group</li>
<li><div class="author_image"><img alt="" src="images/img_12.jpg"></div><a href="#">Web Development Forum </a><br /><a href="" class="connect">Join</a> -  Networking Group</li>
<li><div class="author_image"><img alt="" src="images/img_12.jpg"></div><a href="#">Outsource web designing and development work to india</a><br /><a href="" class="connect">Join</a> - Professional Group</li>
<li><div class="author_image"><img alt="" src="images/img_12.jpg"></div><a href="#">Outsource web designing and development work to india</a><br /><a href="" class="connect">Join</a> - Professional Group</li>
</ul>
<div>
<a href="#" class="seemore">See more » </a></div>
</div>
</div>



</div>
</div>
</div>
<div id="footer"><div>
<div><h1>People Practice</h1>
<ul>
<li><a href="#">Knowledge Center</a></li>
<li><a href="#">Online Test</a></li>
<li><a href="#">Blog</a></li>
<li><a href="#">Rewards</a></li>
<li><a href="#">Career Meter</a></li>
<li><a href="#">FAQs</a></li>
</ul>
</div>
<div><h1>Virtual Campus</h1>
<ul>
<li><a href="#">Orientation Program</a></li>
<li><a href="#">Seminars</a></li>
<li><a href="#">Invite Companies</a></li>
<li><a href="#">Search Student</a></li>
</ul></div>
<div><h1>Download</h1>
<ul>
<li><a href="#">Synopsis/Project Reports</a></li>
<li><a href="#">Tutorial/EMagazines</a></li>
</ul>
</div>
<div><h1>CampusOxide</h1>
<ul>
<li><a href="#">About Us</a></li>
<li><a href="#">Mission & Vision</a></li>
<li><a href="#">Contact Us</a></li>
<li><a href="#">Sitemap</a></li>
</ul>
</div>
<div><h1>Contact Us</h1>
<p><img src="images/icon_11.png" alt="" />Call us on:369-785-0458</p>
<p><img src="images/icon_12.png" alt="" />Customercare@rcampusoxide.com</p>
<h2>Follow Us</h2>
<div class="social">
<a href="#"><img src="images/social_1.png" alt="" /></a>
<a href="#"><img src="images/social_2.png" alt="" /></a>
<a href="#"><img src="images/social_3.png" alt="" /></a>
<a href="#"><img src="images/social_4.png" alt="" /></a>
</div>
</div>
</div></div>
<div id="power">© 2013 Campusoxide.com</div>

<div id="chat-sidebar"><div>
<div id="chat-sidebar-header">Friends Online<span id="chat-sidebar-open">Open</span><span id="chat-sidebar-close"><a href="javascript:close_popup('narayan-prusty');">Close</a></span></div>
<div id="chat-sidebar-content">
<div class="sidebar-name" id="chatbox1"><img width="30" height="30" src="images/img_12.jpg" />Narayan Prusty 1</div>
<div class="sidebar-name" id="chatbox2"><img width="30" height="30" src="images/img_102.jpg" />Narayan Prusty 2</div>
<div class="sidebar-name" id="chatbox3"><img width="30" height="30" src="images/img_103.jpg" />Narayan Prusty 3</div>
</div>
</div>
</div>
<div id="chatboxes">
<div class="fb" id="chat-box1">
     <div class="fb-head">
       <span class="fb-online"></span> 
       <a>Name</a> 
       <a class="fb-close"></a>
  </div>
    <div class="fb-content">
      <ul class="chatMessages" id="messages1">
     <li class="you"><img src="images/img_12.jpg"/><span>Hello Friends</span></li>
      <li><img src="images/img_11.jpg"/><span>How are you?</span></li>
      
     </ul>
    </div>
    <div class="fb-footer">
      <input class="fb-chat-box" id="text-messages1" type="text" placeholder="Write your message here..."> 
      <div class="fb-sticker"></div> 
  </div> 
</div>
<div class="fb" id="chat-box2">
     <div class="fb-head">
       <span class="fb-online"></span> 
       <a>Name</a> 
       <a class="fb-close"></a>
  </div>
    <div class="fb-content">
      <ul class="chatMessages" id="messages2">
      <li class="you"><img src="images/img_102.jpg"/><span>Hello Friends</span></li>
      <li><img src="images/img_11.jpg"/><span>How are you?</span></li>
      
     </ul>
    </div>
    <div class="fb-footer">
      <input class="fb-chat-box" id="text-messages2" type="text" placeholder="Write your message here..."> 
      <div class="fb-sticker"></div> 
  </div> 
</div>
<div class="fb" id="chat-box3">
     <div class="fb-head">
       <span class="fb-online"></span> 
       <a href="#">Name</a> 
       <a class="fb-close"></a>
  </div>
    <div class="fb-content">
      <ul class="chatMessages" id="messages3">
      <li class="you"><img src="images/img_103.jpg"/><span>Hello Friends</span></li>
      <li><img src="images/img_11.jpg"/><span>How are you?</span></li>
      
     </ul>
    </div>
    <div class="fb-footer">
      <input class="fb-chat-box" id="text-messages3" type="text" placeholder="Write your message here..."> 
      <div class="fb-sticker"></div> 
  </div> 
</div>
</div>
</html:form>
</body>
</html>
