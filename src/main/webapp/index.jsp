<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Know Your Candidate</title>
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/reset.css" />
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/generic2.css"/>
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/footer.css" />
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/SuggestionBox.css" />
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/header3.css">
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}" />/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/Resources/scripts/signin.js"></script>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="wrapper">
<div id="homeBottom"class="MenuBottom">
</div>
<div id="articlesBottom"class="MenuBottom">
</div>
<div id="candidatesBottom"class="MenuBottom">
</div> 
<div id="container">
<div id="left">
<div id="contentWrapper">
<div id="newsBarWrapper">
  <div id="newsBarLeft">
      <img src="<c:out value="${pageContext.request.contextPath}" />/Resources/Images/left2.svg">
  </div>
  <div id="newsBar">
  
  <div id="newsBarBackground">
    <div id="news1" class="News">
    <div class="ThumbImage"><div class="ThumbImgWrapper"><img src="Resources/Images/congressThree.jpg"/></div></div>
    <div class="TemptationText">5 Things you need to know about Congress</div>
    </div>
    <div id="news1" class="News">
    <div class="ThumbImage"><div class="ThumbImgWrapper"><img src="Resources/Images/congressThree.jpg"/></div></div>
    <div class="TemptationText">5 Things you need to know about Congress</div>
    </div>
    <div id="news1" class="News">
    <div class="ThumbImage"><div class="ThumbImgWrapper"><img src="Resources/Images/congressThree.jpg"/></div></div>
    <div class="TemptationText">5 Things you need to know about Congress</div>
    </div>
    <div id="news1" class="News">
    <div class="ThumbImage"><div class="ThumbImgWrapper"><img src="Resources/Images/congressThree.jpg"/></div></div>
    <div class="TemptationText">5 Things you need to know about Congress</div>
    </div>
    <div id="news1" class="News">
    <div class="ThumbImage"><div class="ThumbImgWrapper"><img src="Resources/Images/congressThree.jpg"/></div></div>
    <div class="TemptationText">5 Things you need to know about Congress</div>
    </div>
    <div id="news2" class="News">
    <div class="ThumbImage"><div class="ThumbImgWrapper"><img src="Resources/Images/last5Congress.jpg"/></div></div>
    <div class="TemptationText">Last Five Years of Congress</div>
    </div>
    <div id="news3" class="News">
    <div class="ThumbImage"><div class="ThumbImgWrapper"><img src="Resources/Images/modi.jpg"/></div></div>
    <div class="TemptationText">Narendra Modi : Look Back</div>
    </div>
    <div id="news4" class="News">
    <div class="ThumbImage"><img src="Resources/Images/10influential.jpg" /></div>
    <div class="TemptationText">Top Ten Influential People in India</div>
    </div>
  </div>
  </div>
  <div id="newsBarRight">
        <img src="<c:out value="${pageContext.request.contextPath}" />/Resources/Images/right2.svg">
  </div> 
</div>
<div id="mainContent">
      <div id="heading">
      Congress : Five Things You Need To Know
      </div>
      <div id="postVotingArea">
      <div id="votes">+183</div>
      <div id="arrowUp"></div>
      <div id="arrowDown"></div>
      <div id="shareText">Share</div>
      </div>
      <div id="contentExplained">
      <div id="publicationDetails">
      Sunday, Sep 09, 2013 12:10 AM
      </div>
      </div>
      <div style="clear:both"></div>
      <div id="content">
      <img src="<c:out value="${pageContext.request.contextPath}" />/Resources/Images/congressThree.jpg"/>
      India National Congress was founded for the independence of India under the vision of 
      But hundreds of thousands of workers would be sent home. 
      Parks, museums and monuments would be closed. Medical research would be curtailed, and much federal loan processing halted. Social Security and Medicare checks would still go out â they come from a trust fund, not from discretionary payments â but new claims might be delayed.
      Members of Congress, incidentally, are deemed essential and would continue to be paid.
      
      <div style="clear:both">
      </div>
</div>  
</div>    

<div id="similarPosts">
<div id="similarPostsText"><span class="SParrow"></span>
Similar Posts</div>
<div id="similarPostsContainer"></div>



</div>
</div>
</div>
<div id="right">
<div id="pollWrapper">
<div id="pollText">Poll<span class="arrow"></span></div>
<div id="question">
Who do you think will be the next Prime Minister?
</div>
<div id="options">
<input type="radio" name="opt1" id="rahul"><label for="rahul">Rahul Gandhi</label><br>
<input type="radio" name="opt1" id="naren"><label for="naren">Narendra Modi</label>
</div>
<div id="rightArrowBar"><div id="pollRightArrow"></div></div>
<hr>
</div>
<div id="comicWrapper">
<div id="comicText">Comic<span class="arrow"></span></div>
<div id="comicContainer">
<div id="cmcLeftArrow"><</div><img id="comic" src="<c:out value="${pageContext.request.contextPath}" />/Resources/Images/Poor-Politics-In-India.jpg" /><div id="cmcRightArrow">></div>
<div id="cmcInfoBar">
  <img src="Resources/Images/heart.png" id="heart" width="29" height="24">
  <div id='comicLikes'>+145</div>
  <div id="numberComments">150 Comments</div>
  <div style="clear:both"></div>
</div>
<hr>
</div>
</div>
<div id="popularPostsWrapper">
<div id="popularPostsText">Popular Posts<span class="arrow"></span></div>
<div id="popularPostsContainer">
<ul>
<li>10 years of Scam</li>
<li>Manmohan Singh : Decay of the Decade</li>
<li>Modi dig at Manmohan Singh</li>
<li>Truth about BJP</li>
<li>Congress Revealed</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div style="clear:both">
</div>
<footer id="footer">

    <section id="footerContents">
  <div id="copyright">
    CopyRights(c) Reserved 2014 
    </div>
    <ul id="footerLinks">
      <li><a href="">About-</a></li>
        <li><a href="#">Contact Us</a>-</li>
        <li><a href="#">PrivacyPolicy</a>-</li>
        <li><a href="#">SiteMap</a>-</li>
        <li><a href="#">Feedback</a></li>
         
        
    </ul>
    <div id="footerSocial">
    <div class="SocialImage"><img src="<c:out value="${pageContext.request.contextPath}" />/Resources/Images/fb.png"/></div>
    <div class="SocialImage"><img src="<c:out value="${pageContext.request.contextPath}" />/Resources/Images/gp.png"/></div>
    <div class="SocialImage"><img src="<c:out value="${pageContext.request.contextPath}" />/Resources/Images/t.png"/></div>
   
    
    </div>
    </section>
    <div id="madeWithLove">
          Proudly made with <img src="<c:out value="${pageContext.request.contextPath}" />/Resources/Images/heart.svg"> in INDIA
    </div>
    
</footer>
<div id="mask">
</div>
</body>
<script type="text/javascript">
$(function()
{
	$('#suggestionBox').css({"display":"none","left":$('#searchBox').position().left,"top":$('#searchBox').position().top+23,"position":"absolute"});
	$('#searchBox').focusin(function(e){$('#suggestionBox').fadeIn();});
	$('#searchBox').focusout(function(e){$('#suggestionBox').fadeOut();});
	$('#comicWrapper img').add('#cmcRightArrow').add('#cmcLeftArrow').hover(
		function(){
			$('#cmcRightArrow').add('#cmcLeftArrow').height($('#comic').height());
			$('#cmcRightArrow').add('#cmcLeftArrow').css({"top":$('#comic').position().top,"line-height":$('#comic').height()+'px'});
			$('#cmcRightArrow').css({"left":$('#comic').position().left+$('#comic').width()-30});
			$('#cmcRightArrow').fadeIn(0);
			$('#cmcLeftArrow').fadeIn(0);
			},
		function(){
			$('#cmcRightArrow').fadeOut(0);
			$('#cmcLeftArrow').fadeOut(0);
			}
			);
			var toggle=1;
	$('#heart').click(function()
	{
		if(toggle)
		{
			$('#heart').prop("src","Resources/Images/heart2.png");
			toggle=0;
		}
		else
		{
			$('#heart').prop("src","Resources/Images/heart.png");
			toggle=1;
		}
	});
  var barleft = true;
  var barright = true;
	
  $('#newsBarLeft').click(function()

      {
        
        if(barleft == true)
        {
        
        var position = $('#newsBarBackground').position().left;
        if(position!=0)
        { 
          
            var newposition = position + 681;
            barleft = false;
            newposition+='px';
            $('#newsBarBackground').css({"-webkit-transform":"translate("+newposition+",0px)"}).on('webkitTransitionEnd',function(){
                       barleft = true;
                       
            });
             
        }
      }
      }
    );
  $('#newsBarRight').click(function()
      {
	       if(barright === true)
        {
          
          var position = $('#newsBarBackground').position().left;
          if(position!=-4767)
          { 

              var newposition = position - 681;
              newposition+='px';
              barright = false;
              $('#newsBarBackground').css({"-webkit-transform":"translate("+newposition+",0px)"}).on('webkitTransitionEnd',function(){
                      barright = true;
              });
               
          }
        }
      }
    );
    $('#articles').hover(function(){
          
        
              $('.MenuBottom').css({"min-height":"0px"});
              $('#articlesBottom').css({"min-height":"200px"});
            

    
    },function()
    {
        var ishover = $('#articlesBottom').is(':hover')
        console.log(ishover);
        if(ishover === true)
        {
          $('#articles').addClass('menuHover');
        }
        else
        {
          $('.MenuBottom').css({"min-height":"0px"});
        }
        
    });
    $('.MenuBottom').hover(function(){},
    function(){
      
      $('.MenuBottom').css({"min-height":"0px"});
      $('#articles').removeClass('menuHover');

    });
     
	
});
function resetForm()
    {
      $('#loginForm input:not(:last-child)').val("");
      $('#signupForm input:not(:last-child)').val("");
    }

</script>
</html>
