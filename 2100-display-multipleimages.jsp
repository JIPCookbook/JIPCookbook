


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app6.us.archive.org";archive_analytics.values.server_ms=380;</script>
<link type="text/css" rel="stylesheet" href="/static/css/banner-styles.css"/>

<title>Java Image Processing Cookbook</title>
  <meta name="copyright" content="(C)Rafael Santos, todos os direitos reservados.">
  <meta name="Description" content="Publica√ß√µes, material de cursos, etc. criados por Rafael Santos">
  <meta name="Keywords" content="INPE, LAC, CTE, Java, Processamento de Imagens, Image Processing, Intelig√™ncia Artificial, Artificial Intelligence, Rafael Santos">
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta http-equiv="Expires" content="-1">
  <link href="CSS/jbook.css" rel="stylesheet" type="text/css">
  <link href="CSS/jbookcode.css" rel="stylesheet" type="text/css">
  <link href="Images/favicon.ico" rel="icon" type="image/x-icon">
  <link href="Images/favicon.ico" rel="shortcut icon" type="image/x-icon">
<!--[if IE]>
<style type="text/css">
div.code
  {
  border: 1px solid blue;
  overflow: visible; overflow-x:auto; overflow-y:hidden;
  margin-left: auto;
  margin-right: auto;
  margin-bottom: 1em;
  }
</style>
<![endif]-->
</head>
<body>


<!-- BEGIN WAYBACK TOOLBAR INSERT -->
<script type="text/javascript" src="/static/js/disclaim-element.js" ></script>
<script type="text/javascript" src="/static/js/graph-calc.js" ></script>
<script type="text/javascript">//<![CDATA[
var __wm = (function(imgWidth,imgHeight,yearImgWidth,monthImgWidth){
var wbPrefix = "/web/";
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/2100-display-multipleimages.jsp";

var firstYear = 1996;
var displayDay = "8";
var displayMonth = "Dec";
var displayYear = "2013";
var prettyMonths = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
var $D=document,$=function(n){return document.getElementById(n)};
var trackerVal,curYear = -1,curMonth = -1;
var yearTracker,monthTracker;
function showTrackers(val) {
  if (val===trackerVal) return;
  var $ipp=$("wm-ipp");
  var $y=$("displayYearEl"),$m=$("displayMonthEl"),$d=$("displayDayEl");
  if (val) {
    $ipp.className="hi";
  } else {
    $ipp.className="";
    $y.innerHTML=displayYear;$m.innerHTML=displayMonth;$d.innerHTML=displayDay;
  }
  yearTracker.style.display=val?"inline":"none";
  monthTracker.style.display=val?"inline":"none";
  trackerVal = val;
}
function trackMouseMove(event,element) {
  var eventX = getEventX(event);
  var elementX = getElementX(element);
  var xOff = Math.min(Math.max(0, eventX - elementX),imgWidth);
  var monthOff = xOff % yearImgWidth;

  var year = Math.floor(xOff / yearImgWidth);
  var monthOfYear = Math.min(11,Math.floor(monthOff / monthImgWidth));
  // 1 extra border pixel at the left edge of the year:
  var month = (year * 12) + monthOfYear;
  var day = monthOff % 2==1?15:1;
  var dateString = zeroPad(year + firstYear) + zeroPad(monthOfYear+1,2) +
    zeroPad(day,2) + "000000";

  $("displayYearEl").innerHTML=year+firstYear;
  $("displayMonthEl").innerHTML=prettyMonths[monthOfYear];
  // looks too jarring when it changes..
  //$("displayDayEl").innerHTML=zeroPad(day,2);
  var url = wbPrefix + dateString + '/' +  wbCurrentUrl;
  $("wm-graph-anchor").href=url;

  if(curYear != year) {
    var yrOff = year * yearImgWidth;
    yearTracker.style.left = yrOff + "px";
    curYear = year;
  }
  if(curMonth != month) {
    var mtOff = year + (month * monthImgWidth) + 1;
    monthTracker.style.left = mtOff + "px";
    curMonth = month;
  }
}
function hideToolbar() {
  $("wm-ipp").style.display="none";
}
function bootstrap() {
  var $spk=$("wm-ipp-sparkline");
  yearTracker=$D.createElement('div');
  yearTracker.className='yt';
  with(yearTracker.style){
    display='none';width=yearImgWidth+"px";height=imgHeight+"px";
  }
  monthTracker=$D.createElement('div');
  monthTracker.className='mt';
  with(monthTracker.style){
    display='none';width=monthImgWidth+"px";height=imgHeight+"px";
  }
  $spk.appendChild(yearTracker);
  $spk.appendChild(monthTracker);

  var $ipp=$("wm-ipp");
  $ipp&&disclaimElement($ipp);
}
return{st:showTrackers,mv:trackMouseMove,h:hideToolbar,bt:bootstrap};
})(550, 27, 25, 2);//]]>
</script>
<style type="text/css">
body {
  margin-top:0 !important;
  padding-top:0 !important;
  min-width:800px !important;
}
</style>
<div id="wm-ipp" lang="en" style="display:none;">

<div style="position:fixed;left:0;top:0;width:100%!important">
<div id="wm-ipp-inside">
   <table style="width:100%;"><tbody><tr>
   <td id="wm-logo">
       <a href="/web/" title="Wayback Machine home page"><img src="/static/images/toolbar/wayback-toolbar-logo.png" alt="Wayback Machine" width="110" height="39" border="0" /></a>
   </td>
   <td class="c">
       <table style="margin:0 auto;"><tbody><tr>
       <td class="u" colspan="2">
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/2100-display-multipleimages.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20131208111113" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20111221000444/http://www.lac.inpe.br/JIPCookbook/2100-display-multipleimages.jsp" title="21 Dec 2011">DEC</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 11:11:13 Dec 8, 2013">DEC</td>
		<td class="f" nowrap="nowrap">
		
		    Jan
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20111221000444/http://www.lac.inpe.br/JIPCookbook/2100-display-multipleimages.jsp" title="0:04:44 Dec 21, 2011"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 11:11:13 Dec 8, 2013">8</td>
	       <td class="f" nowrap="nowrap">
               
                   <img src="/static/images/toolbar/wm_tb_nxt_off.png" alt="Next capture" width="14" height="16" border="0"/>
               
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20111221000444/http://www.lac.inpe.br/JIPCookbook/2100-display-multipleimages.jsp" title="21 Dec 2011"><strong>2011</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 11:11:13 Dec 8, 2013">2013</td>
	       <td class="f" nowrap="nowrap">
               
                   2014
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20131208111113*/http://www.lac.inpe.br/JIPCookbook/2100-display-multipleimages.jsp" title="See a list of every capture for this URL">13 captures</a>
           <div class="r" title="Timespan for captures of this URL">25 Aug 10 - 8 Dec 13</div>
       </td>
       <td class="k">
       <a href="" id="wm-graph-anchor">
       <div id="wm-ipp-sparkline" title="Explore captures for this URL">
	 <img id="sparklineImgId" alt="sparklines"
		 onmouseover="__wm.st(1)" onmouseout="__wm.st(0)"
		 onmousemove="__wm.mv(event,this)"
		 width="550"
		 height="27"
		 border="0"
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000010000_2011:-1:001021111022_2012:-1:000000000000_2013:11:000000000001_2014:-1:000000000000_2015:-1:000000000000_2016:-1:000000000000_2017:-1:000000000000" />
       </div>
       </a>
       </td>
       </tr></tbody></table>
   </td>
   <td class="r">
       <a href="#close" onclick="__wm.h();return false;" style="background-image:url(/static/images/toolbar/wm_tb_close.png);top:5px;" title="Close the toolbar">Close</a>
       <a href="http://faq.web.archive.org/" style="background-image:url(/static/images/toolbar/wm_tb_help.png);bottom:5px;" title="Get some help using the Wayback Machine">Help</a>
   </td>
   </tr></tbody></table>
</div>
</div>
</div>
<script type="text/javascript">__wm.bt();</script>
<!-- END WAYBACK TOOLBAR INSERT -->
<center>
<!-- START LETTERHEAD -->
<div class="title">
<a href="/web/20131208111113/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20131208111113/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">Displaying Multiple Images</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="2100-display-multipleimages.jsp#imagedisplaydisplayingmultipleimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="2100-display-multipleimages.jsp#imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimages">Displaying Synchronized Images</a>
</div>
</div>

<p class="section"><a name="imagedisplaydisplayingmultipleimagesintroduction"></a>Introduction</p>

<p>This chapter shows how to write code (specifically, new components) to show two or more images in scroll panes in 
 a synchronized way, so when the user changes the viewport of one image, the viewport of the other(s) is changed. This technique is
 particularly useful to side-by-side compare results of image processing operators.</p>



<p class="section"><a name="imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimages"></a>Displaying Synchronized Images</p>


<p>One way to display synchronized images is to create a new component based on <tt>JPanel</tt> which contains two instances of 
<tt>DisplayJAI</tt> inside <tt>JScrollPane</tt>s. We can then monitor the <tt>JScrollPane</tt>s' horizontal and vertical scrollbars
for changes, and adjust the position of one <tt>JScrollPane</tt> when the other scrollbars are changed.</p>
<p>A component that display two synchronized instances of <tt>DisplayJAI</tt> is 
shown below, in the class <tt>DisplayTwoSynchronizedImages</tt>.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimagesdisplaytwosynchronizedimagesjava">&nbsp;</a><a href="/web/20131208111113/http://www.lac.inpe.br/JIPCookbook/Code/display/multiple/DisplayTwoSynchronizedImages.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DisplayTwoSynchronizedImages.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.multiple;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.GridLayout;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.AdjustmentEvent;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.AdjustmentListener;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.RenderedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JPanel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JScrollPane;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;represents&nbsp;a&nbsp;JPanel&nbsp;which&nbsp;contains&nbsp;two&nbsp;scrollable&nbsp;instances&nbsp;of  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;DisplayJAI.&nbsp;The&nbsp;scrolling&nbsp;bars&nbsp;of&nbsp;both&nbsp;images&nbsp;are&nbsp;synchronized&nbsp;so&nbsp;scrolling&nbsp;one&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;image&nbsp;will&nbsp;automatically&nbsp;scroll&nbsp;the&nbsp;other.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DisplayTwoSynchronizedImages&nbsp;<span class="classword">extends</span>&nbsp;JPanel&nbsp;<span class="classword">implements</span>&nbsp;AdjustmentListener  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;first&nbsp;image.&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;DisplayJAI&nbsp;dj1;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;second&nbsp;image.&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;DisplayJAI&nbsp;dj2;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;JScrollPane&nbsp;which&nbsp;will&nbsp;contain&nbsp;the&nbsp;first&nbsp;of&nbsp;the&nbsp;images&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;JScrollPane&nbsp;jsp1;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;JScrollPane&nbsp;which&nbsp;will&nbsp;contain&nbsp;the&nbsp;second&nbsp;of&nbsp;the&nbsp;images&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;JScrollPane&nbsp;jsp2;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Creates&nbsp;an&nbsp;instance&nbsp;of&nbsp;this&nbsp;class,&nbsp;setting&nbsp;the&nbsp;components'&nbsp;layout,&nbsp;creating  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;two&nbsp;instances&nbsp;of&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;two&nbsp;images&nbsp;and&nbsp;creating/registering&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;event&nbsp;handlers&nbsp;for&nbsp;the&nbsp;scroll&nbsp;bars.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;im1&nbsp;the&nbsp;first&nbsp;image&nbsp;(left&nbsp;side)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;im2&nbsp;the&nbsp;second&nbsp;image&nbsp;(right&nbsp;side)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;DisplayTwoSynchronizedImages(RenderedImage&nbsp;im1,&nbsp;RenderedImage&nbsp;im2)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">super</span>();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setLayout(<span class="specialword">new</span>&nbsp;GridLayout(1,&nbsp;2));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj1&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAI(im1);&nbsp;<span class="comment">//&nbsp;Instances&nbsp;of&nbsp;DisplayJAI&nbsp;for&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj2&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAI(im2);&nbsp;<span class="comment">//&nbsp;two&nbsp;images  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp1&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JScrollPane(dj1);&nbsp;<span class="comment">//&nbsp;JScrollPanes&nbsp;for&nbsp;the&nbsp;both  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp2&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JScrollPane(dj2);&nbsp;<span class="comment">//&nbsp;instances&nbsp;of&nbsp;DisplayJAI  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;add(jsp1);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;add(jsp2);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Retrieve&nbsp;the&nbsp;scroll&nbsp;bars&nbsp;of&nbsp;the&nbsp;images&nbsp;and&nbsp;registers&nbsp;adjustment&nbsp;listeners&nbsp;to&nbsp;them.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Horizontal&nbsp;scroll&nbsp;bar&nbsp;of&nbsp;the&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getHorizontalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Vertical&nbsp;scroll&nbsp;bar&nbsp;of&nbsp;the&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getVerticalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Horizontal&nbsp;scroll&nbsp;bar&nbsp;of&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getHorizontalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Vertical&nbsp;scroll&nbsp;bar&nbsp;of&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getVerticalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;changes&nbsp;the&nbsp;first&nbsp;image&nbsp;to&nbsp;be&nbsp;displayed.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;newImage&nbsp;the&nbsp;new&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;setImage1(RenderedImage&nbsp;newimage)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj1.set(newimage);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;repaint();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;changes&nbsp;the&nbsp;second&nbsp;image&nbsp;to&nbsp;be&nbsp;displayed.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;newImage&nbsp;the&nbsp;new&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;setImage2(RenderedImage&nbsp;newimage)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj2.set(newimage);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;repaint();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;RenderedImage&nbsp;getImage1()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;dj1.getSource();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;RenderedImage&nbsp;getImage2()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;dj2.getSource();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;called&nbsp;when&nbsp;any&nbsp;of&nbsp;the&nbsp;scroll&nbsp;bars&nbsp;of&nbsp;the&nbsp;instances&nbsp;of  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;DisplayJAI&nbsp;are&nbsp;changed.&nbsp;The&nbsp;method&nbsp;will&nbsp;adjust&nbsp;the&nbsp;scroll&nbsp;bar  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;of&nbsp;the&nbsp;other&nbsp;DisplayJAI&nbsp;as&nbsp;needed.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;e&nbsp;the&nbsp;AdjustmentEvent&nbsp;that&nbsp;occurred&nbsp;(meaning&nbsp;that&nbsp;one&nbsp;of&nbsp;the&nbsp;scroll  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bars&nbsp;position&nbsp;has&nbsp;changed.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;adjustmentValueChanged(AdjustmentEvent&nbsp;e)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;first&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp1.getHorizontalScrollBar())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;first&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp1.getVerticalScrollBar())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;second&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp2.getHorizontalScrollBar())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;second&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp2.getVerticalScrollBar())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="comment">//&nbsp;end&nbsp;adjustmentValueChanged  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>An example of usage of the class <tt>DisplayTwoSynchronizedImages</tt> is shown below, in the
<tt>DemoDisplayTwoSynchronizedImages</tt> application. That example applies a horizontal edge detection algorithm on an
input image and display the original and edge image side by side.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimagesdemodisplaytwosynchronizedimagesjava">&nbsp;</a><a href="/web/20131208111113/http://www.lac.inpe.br/JIPCookbook/Code/display/multiple/DemoDisplayTwoSynchronizedImages.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DemoDisplayTwoSynchronizedImages.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.multiple;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.KernelJAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;demonstrates&nbsp;the&nbsp;DisplayTwoSynchronizedImages&nbsp;component.&nbsp;It&nbsp;loads&nbsp;an  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;image,&nbsp;applies&nbsp;a&nbsp;convolve&nbsp;operator&nbsp;and&nbsp;displays&nbsp;the&nbsp;original&nbsp;and&nbsp;convolved&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;side&nbsp;by&nbsp;side.\section{}  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DemoDisplayTwoSynchronizedImages  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;args&nbsp;the&nbsp;image&nbsp;file&nbsp;name.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;one&nbsp;argument&nbsp;-&nbsp;the&nbsp;image&nbsp;file&nbsp;name.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(args.length&nbsp;!=&nbsp;1)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"Usage:&nbsp;java&nbsp;display.multiple.DemoDisplayTwoSynchronizedImages&nbsp;image"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.exit(0);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;kernel&nbsp;for&nbsp;horizontal&nbsp;edge&nbsp;detection.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>[]&nbsp;kernelMatrix&nbsp;=&nbsp;{&nbsp;-1,&nbsp;-2,&nbsp;-1,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0,&nbsp;&nbsp;0,&nbsp;&nbsp;0,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1,&nbsp;&nbsp;2,&nbsp;&nbsp;1&nbsp;};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;image.&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;input&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,&nbsp;args[0]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;kernel&nbsp;using&nbsp;the&nbsp;array.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;KernelJAI&nbsp;kernel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;KernelJAI(3,3,kernelMatrix);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Run&nbsp;the&nbsp;convolve&nbsp;operator,&nbsp;creating&nbsp;the&nbsp;processed&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;output&nbsp;=&nbsp;JAI.create(<span class="string">"convolve"</span>,&nbsp;input,&nbsp;kernel);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;JFrame&nbsp;for&nbsp;displaying&nbsp;the&nbsp;results.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JFrame&nbsp;frame&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JFrame();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setTitle(<span class="string">"Sobel&nbsp;horizontal&nbsp;border&nbsp;of&nbsp;the&nbsp;image&nbsp;"</span>+args[0]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;to&nbsp;the&nbsp;JFrame's&nbsp;ContentPane&nbsp;an&nbsp;instance&nbsp;of  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;DisplayTwoSynchronizedImages,&nbsp;which&nbsp;will&nbsp;contain&nbsp;the&nbsp;original&nbsp;and  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;processed&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.getContentPane().add(  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;DisplayTwoSynchronizedImages(input,output));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;closing&nbsp;operation&nbsp;so&nbsp;the&nbsp;application&nbsp;is&nbsp;finished.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.pack();&nbsp;<span class="comment">//&nbsp;adjust&nbsp;the&nbsp;frame&nbsp;size&nbsp;using&nbsp;preferred&nbsp;dimensions.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setVisible(<span class="specialword">true</span>);&nbsp;<span class="comment">//&nbsp;show&nbsp;the&nbsp;frame.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>A reduced screenshot of the <tt>DemoDisplayTwoSynchronizedImages.java</tt> application is shown below. Click on the image to get a 
full resolution screenshot.</p>

<a name="imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimagesscreenshotofthettdemodisplaytwosynchronizedimagesttapplication">&nbsp;</a><img class="figure" src="Resources/Screenshots/DemoDisplayTwoSynchronizedImages.png" border=0 alt="Screenshot of the <tt>DemoDisplayTwoSynchronizedImages</tt> application."><p class="caption">Screenshot of the <tt>DemoDisplayTwoSynchronizedImages</tt> application.</p>
<div class="spacer">&nbsp;</div>


<p>It is quite simple to create other components that display synchronized images, as shown in the class
<tt>DisplayThreeSynchronizedImages</tt> below. That class does not extends <tt>DisplayTwoSynchronizedImages.java</tt> to 
make it easier to modify it to use other types of layouts.</p> 

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimagesdisplaythreesynchronizedimagesjava">&nbsp;</a><a href="/web/20131208111113/http://www.lac.inpe.br/JIPCookbook/Code/display/multiple/DisplayThreeSynchronizedImages.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DisplayThreeSynchronizedImages.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.multiple;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.GridLayout;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.AdjustmentEvent;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.AdjustmentListener;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.RenderedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JPanel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JScrollPane;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;represents&nbsp;a&nbsp;JPanel&nbsp;which&nbsp;contains&nbsp;three&nbsp;scrollable&nbsp;instances&nbsp;of  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;DisplayJAI.&nbsp;The&nbsp;scrolling&nbsp;bars&nbsp;of&nbsp;both&nbsp;images&nbsp;are&nbsp;synchronized&nbsp;so&nbsp;scrolling&nbsp;one&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;image&nbsp;will&nbsp;automatically&nbsp;scroll&nbsp;the&nbsp;others.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DisplayThreeSynchronizedImages&nbsp;<span class="classword">extends</span>&nbsp;JPanel&nbsp;<span class="classword">implements</span>&nbsp;AdjustmentListener  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;first&nbsp;image.&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;DisplayJAI&nbsp;dj1;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;second&nbsp;image.&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;DisplayJAI&nbsp;dj2;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;third&nbsp;image.&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;DisplayJAI&nbsp;dj3;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;JScrollPane&nbsp;which&nbsp;will&nbsp;contain&nbsp;the&nbsp;first&nbsp;image&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;JScrollPane&nbsp;jsp1;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;JScrollPane&nbsp;which&nbsp;will&nbsp;contain&nbsp;the&nbsp;second&nbsp;image&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;JScrollPane&nbsp;jsp2;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;JScrollPane&nbsp;which&nbsp;will&nbsp;contain&nbsp;the&nbsp;third&nbsp;image&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;JScrollPane&nbsp;jsp3;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Creates&nbsp;an&nbsp;instance&nbsp;of&nbsp;this&nbsp;class,&nbsp;setting&nbsp;the&nbsp;components'&nbsp;layout,&nbsp;creating&nbsp;three&nbsp;instances&nbsp;of  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;images&nbsp;and&nbsp;creating/registering&nbsp;event&nbsp;handlers&nbsp;for&nbsp;the&nbsp;scroll&nbsp;bars.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;im1&nbsp;the&nbsp;first&nbsp;image&nbsp;(left&nbsp;side)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;im2&nbsp;the&nbsp;second&nbsp;image&nbsp;(middle)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;im3&nbsp;the&nbsp;third&nbsp;image&nbsp;(right&nbsp;side)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;DisplayThreeSynchronizedImages(RenderedImage&nbsp;im1,RenderedImage&nbsp;im2,RenderedImage&nbsp;im3)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">super</span>();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setLayout(<span class="specialword">new</span>&nbsp;GridLayout(1,3));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj1&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAI(im1);&nbsp;<span class="comment">//&nbsp;Instances&nbsp;of&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;images  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj2&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAI(im2);&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj3&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAI(im3);&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp1&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JScrollPane(dj1);&nbsp;<span class="comment">//&nbsp;JScrollPanes&nbsp;for&nbsp;the&nbsp;instances&nbsp;of&nbsp;DisplayJAI.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp2&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JScrollPane(dj2);&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp3&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JScrollPane(dj3);&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;add(jsp1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;add(jsp2);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;add(jsp3);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Retrieve&nbsp;the&nbsp;scroll&nbsp;bars&nbsp;of&nbsp;the&nbsp;images&nbsp;and&nbsp;registers&nbsp;adjustment&nbsp;listeners&nbsp;to&nbsp;them.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Horizontal&nbsp;scroll&nbsp;bar&nbsp;of&nbsp;the&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getHorizontalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Vertical&nbsp;scroll&nbsp;bar&nbsp;of&nbsp;the&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getVerticalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Horizontal&nbsp;scroll&nbsp;bar&nbsp;of&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getHorizontalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Vertical&nbsp;scroll&nbsp;bar&nbsp;of&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getVerticalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Horizontal&nbsp;scroll&nbsp;bar&nbsp;of&nbsp;the&nbsp;third&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getHorizontalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Vertical&nbsp;scroll&nbsp;bar&nbsp;of&nbsp;the&nbsp;third&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getVerticalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;changes&nbsp;the&nbsp;first&nbsp;image&nbsp;to&nbsp;be&nbsp;displayed.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;newImage&nbsp;the&nbsp;new&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;setImage1(RenderedImage&nbsp;newimage)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj1.set(newimage);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;repaint();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;changes&nbsp;the&nbsp;second&nbsp;image&nbsp;to&nbsp;be&nbsp;displayed.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;newImage&nbsp;the&nbsp;new&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;setImage2(RenderedImage&nbsp;newimage)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj2.set(newimage);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;repaint();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;changes&nbsp;the&nbsp;third&nbsp;image&nbsp;to&nbsp;be&nbsp;displayed.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;newImage&nbsp;the&nbsp;new&nbsp;third&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;setImage3(RenderedImage&nbsp;newimage)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj3.set(newimage);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;repaint();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;RenderedImage&nbsp;getImage1()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;dj1.getSource();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;RenderedImage&nbsp;getImage2()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;dj2.getSource();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;third&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;third&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;RenderedImage&nbsp;getImage3()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;dj3.getSource();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;called&nbsp;when&nbsp;any&nbsp;of&nbsp;the&nbsp;scroll&nbsp;bars&nbsp;of&nbsp;the&nbsp;instances&nbsp;ofDisplayJAI&nbsp;are&nbsp;changed.&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;method&nbsp;will&nbsp;adjust&nbsp;the&nbsp;scroll&nbsp;bar&nbsp;of&nbsp;the&nbsp;other&nbsp;DisplayJAI&nbsp;as&nbsp;needed.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;e&nbsp;the&nbsp;AdjustmentEvent&nbsp;that&nbsp;occurred&nbsp;(meaning&nbsp;that&nbsp;one&nbsp;of&nbsp;the&nbsp;scroll  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;bars&nbsp;position&nbsp;has&nbsp;changed).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;adjustmentValueChanged(AdjustmentEvent&nbsp;e)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;138&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;139&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;first&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;140&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp1.getHorizontalScrollBar())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;141&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;142&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;other&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;143&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;144&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;145&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;146&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;first&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;147&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp1.getVerticalScrollBar())  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;148&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;149&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;other&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;150&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;151&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;152&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;153&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;second&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;154&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp2.getHorizontalScrollBar())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;155&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;156&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;other&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;157&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;158&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;159&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;160&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;second&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;161&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp2.getVerticalScrollBar())  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;162&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;163&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;other&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;164&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;165&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;166&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;167&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;third&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;168&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp3.getHorizontalScrollBar())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;169&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;170&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;other&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;171&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;172&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;173&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;174&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;third&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;175&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp3.getVerticalScrollBar())  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;176&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;177&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;other&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;178&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;179&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;180&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;181&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="comment">//&nbsp;end&nbsp;adjustmentValueChanged  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;182&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;183&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>Yet another example (that will be used in some applications shown in this book), the class
<tt>DisplayFourSynchronizedImages</tt>, shown below, shows how to display four synchronized images, with a different layout.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimagesdisplayfoursynchronizedimagesjava">&nbsp;</a><a href="/web/20131208111113/http://www.lac.inpe.br/JIPCookbook/Code/display/multiple/DisplayFourSynchronizedImages.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DisplayFourSynchronizedImages.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.multiple;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.GridLayout;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.AdjustmentEvent;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.AdjustmentListener;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.RenderedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JPanel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JScrollPane;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;represents&nbsp;a&nbsp;JPanel&nbsp;which&nbsp;contains&nbsp;four&nbsp;scrollable&nbsp;instances&nbsp;of  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;DisplayJAI.&nbsp;The&nbsp;scrolling&nbsp;bars&nbsp;of&nbsp;the&nbsp;images&nbsp;are&nbsp;synchronized&nbsp;so&nbsp;scrolling&nbsp;one&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;image&nbsp;will&nbsp;automatically&nbsp;scroll&nbsp;the&nbsp;other.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;does&nbsp;not&nbsp;extends&nbsp;DisplayTwoSynchronizedImages.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DisplayFourSynchronizedImages&nbsp;<span class="classword">extends</span>&nbsp;JPanel&nbsp;<span class="classword">implements</span>&nbsp;AdjustmentListener  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;first&nbsp;image.&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;DisplayJAI&nbsp;dj1;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;second&nbsp;image.&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;DisplayJAI&nbsp;dj2;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;third&nbsp;image.&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;DisplayJAI&nbsp;dj3;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;fourth&nbsp;image.&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;DisplayJAI&nbsp;dj4;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;JScrollPane&nbsp;which&nbsp;will&nbsp;contain&nbsp;the&nbsp;first&nbsp;image&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;JScrollPane&nbsp;jsp1;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;JScrollPane&nbsp;which&nbsp;will&nbsp;contain&nbsp;the&nbsp;second&nbsp;image&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;JScrollPane&nbsp;jsp2;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;JScrollPane&nbsp;which&nbsp;will&nbsp;contain&nbsp;the&nbsp;third&nbsp;image&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;JScrollPane&nbsp;jsp3;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;JScrollPane&nbsp;which&nbsp;will&nbsp;contain&nbsp;the&nbsp;fourth&nbsp;image&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;JScrollPane&nbsp;jsp4;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Constructs&nbsp;an&nbsp;instance&nbsp;of&nbsp;this&nbsp;class,&nbsp;setting&nbsp;the&nbsp;components'&nbsp;layout,  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;creating&nbsp;four&nbsp;instances&nbsp;of&nbsp;DisplayJAI&nbsp;for&nbsp;the&nbsp;four&nbsp;images&nbsp;and&nbsp;creating/  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;registering&nbsp;event&nbsp;handlers&nbsp;for&nbsp;the&nbsp;scroll&nbsp;bars.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;im1&nbsp;the&nbsp;first&nbsp;image&nbsp;(top&nbsp;left&nbsp;side)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;im2&nbsp;the&nbsp;second&nbsp;image&nbsp;(top&nbsp;right&nbsp;side)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;im3&nbsp;the&nbsp;third&nbsp;image&nbsp;(bottom&nbsp;left&nbsp;side)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;im4&nbsp;the&nbsp;fourth&nbsp;image&nbsp;(bottom&nbsp;right&nbsp;side)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;DisplayFourSynchronizedImages(RenderedImage&nbsp;im1,RenderedImage&nbsp;im2,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RenderedImage&nbsp;im3,RenderedImage&nbsp;im4)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">super</span>();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setLayout(<span class="specialword">new</span>&nbsp;GridLayout(2,2));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj1&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAI(im1);&nbsp;<span class="comment">//&nbsp;Instances&nbsp;of&nbsp;DisplayJAI&nbsp;for&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj2&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAI(im2);&nbsp;<span class="comment">//&nbsp;four&nbsp;images  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj3&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAI(im3);&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj4&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAI(im4);&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp1&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JScrollPane(dj1);&nbsp;<span class="comment">//&nbsp;JScrollPanes&nbsp;for&nbsp;the&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp2&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JScrollPane(dj2);&nbsp;<span class="comment">//&nbsp;instances&nbsp;of&nbsp;DisplayJAI  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp3&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JScrollPane(dj3);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp4&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JScrollPane(dj4);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;add(jsp1);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;add(jsp2);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;add(jsp3);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;add(jsp4);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Retrieve&nbsp;the&nbsp;scroll&nbsp;bars&nbsp;of&nbsp;the&nbsp;images&nbsp;and&nbsp;registers&nbsp;adjustment  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;listeners&nbsp;to&nbsp;them.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getHorizontalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getVerticalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getHorizontalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getVerticalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getHorizontalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getVerticalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp4.getHorizontalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;jsp4.getVerticalScrollBar().addAdjustmentListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;changes&nbsp;the&nbsp;first&nbsp;image&nbsp;to&nbsp;be&nbsp;displayed&nbsp;(top&nbsp;left).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;newImage&nbsp;the&nbsp;new&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;setImage1(RenderedImage&nbsp;newimage)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj1.set(newimage);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;repaint();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;changes&nbsp;the&nbsp;second&nbsp;image&nbsp;to&nbsp;be&nbsp;displayed&nbsp;(top&nbsp;right).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;newImage&nbsp;the&nbsp;new&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;setImage2(RenderedImage&nbsp;newimage)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj2.set(newimage);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;repaint();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;changes&nbsp;the&nbsp;third&nbsp;image&nbsp;to&nbsp;be&nbsp;displayed&nbsp;(bottom&nbsp;left).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;newImage&nbsp;the&nbsp;new&nbsp;third&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;setImage3(RenderedImage&nbsp;newimage)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj3.set(newimage);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;repaint();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;changes&nbsp;the&nbsp;fourth&nbsp;image&nbsp;to&nbsp;be&nbsp;displayed&nbsp;(bottom&nbsp;right).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;newImage&nbsp;the&nbsp;new&nbsp;fourth&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;setImage4(RenderedImage&nbsp;newimage)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj4.set(newimage);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;repaint();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;first&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;RenderedImage&nbsp;getImage1()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;dj1.getSource();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;RenderedImage&nbsp;getImage2()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;dj2.getSource();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;138&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;139&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;140&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;141&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;third&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;142&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;143&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;144&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;RenderedImage&nbsp;getImage3()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;145&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;146&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;dj3.getSource();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;147&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;148&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;149&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;150&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;fourth&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;151&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;fourth&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;152&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;153&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;RenderedImage&nbsp;getImage4()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;154&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;155&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;dj4.getSource();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;156&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;157&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;158&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;159&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;160&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;called&nbsp;when&nbsp;any&nbsp;of&nbsp;the&nbsp;scroll&nbsp;bars&nbsp;of&nbsp;the&nbsp;instances&nbsp;of  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;161&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;DisplayJAI&nbsp;are&nbsp;changed.&nbsp;The&nbsp;method&nbsp;will&nbsp;adjust&nbsp;the&nbsp;scroll&nbsp;bar&nbsp;of&nbsp;the&nbsp;other  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;162&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;DisplayJAIs&nbsp;as&nbsp;needed.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;163&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;e&nbsp;the&nbsp;AdjustmentEvent&nbsp;that&nbsp;ocurred&nbsp;(meaning&nbsp;that&nbsp;one&nbsp;of&nbsp;the&nbsp;scroll  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;164&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bars&nbsp;position&nbsp;has&nbsp;changed.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;165&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;166&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;adjustmentValueChanged(AdjustmentEvent&nbsp;e)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;167&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;168&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;first&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;169&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp1.getHorizontalScrollBar())  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;170&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;171&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;2nd,&nbsp;3rd&nbsp;and&nbsp;4th&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;172&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;173&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;174&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp4.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;175&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;176&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;first&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;177&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp1.getVerticalScrollBar())  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;178&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;179&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;2nd,&nbsp;3rd&nbsp;and&nbsp;4th&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;180&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;181&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;182&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp4.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;183&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;184&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;second&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;185&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp2.getHorizontalScrollBar())  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;186&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;187&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;1st,&nbsp;3rd&nbsp;and&nbsp;4th&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;188&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;189&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;190&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp4.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;191&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;192&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;second&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;193&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp2.getVerticalScrollBar())  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;194&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;195&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;1st,&nbsp;3rd&nbsp;and&nbsp;4th&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;196&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;197&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;198&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp4.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;199&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;200&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;third&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;201&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;third&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;202&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp3.getHorizontalScrollBar())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;203&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;204&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;1st,&nbsp;2nd&nbsp;and&nbsp;4th&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;205&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;206&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;207&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp4.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;208&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;209&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;third&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;210&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp3.getVerticalScrollBar())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;211&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;212&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;1st,&nbsp;2nd&nbsp;and&nbsp;4th&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;213&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;214&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;215&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp4.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;216&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;217&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;fourth&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;218&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp4.getHorizontalScrollBar())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;219&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;220&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;horizontal&nbsp;bar&nbsp;of&nbsp;the&nbsp;1st,&nbsp;2nd&nbsp;and&nbsp;3rd&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;221&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;222&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;223&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getHorizontalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;224&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;225&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;fourth&nbsp;image&nbsp;was&nbsp;changed...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;226&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;jsp4.getVerticalScrollBar())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;227&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;228&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;change&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;vertical&nbsp;bar&nbsp;of&nbsp;the&nbsp;1st,&nbsp;2nd&nbsp;and&nbsp;3rd&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;229&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp1.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;230&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp2.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;231&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jsp3.getVerticalScrollBar().setValue(e.getValue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;232&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;233&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;234&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;235&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>







<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="2050-display-displayjai.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="2050-display-displayjai.jsp">Displaying Images with the <tt>DisplayJAI</tt> class</a></td><td class="navigation1"><a href="2060-display-extendingdisplayjai.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="2060-display-extendingdisplayjai.jsp">Extending the <tt>DisplayJAI</tt> class</a></td><td class="navigation0"><a href="2100-display-multipleimages.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="2100-display-multipleimages.jsp">Displaying Multiple Images</a></td><td class="navigation1"><a href="2120-display-thumbnail.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="2120-display-thumbnail.jsp">Displaying Interactive Thumbnails</a></td><td class="navigation2"><a href="2200-display-surrogate.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="2200-display-surrogate.jsp">Using Surrogate Images</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20131208111113/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20131208111113/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20131208111113/https://ssl." : "/web/20131208111113/http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-5148791-3");
pageTracker._trackPageview();
} catch(err) {}</script>
 </body>
</html>






<!--
     FILE ARCHIVED ON 11:11:13 Dec 8, 2013 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 23:55:48 Apr 12, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
