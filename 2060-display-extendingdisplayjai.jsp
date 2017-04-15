


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app15.us.archive.org";archive_analytics.values.server_ms=313;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/2060-display-extendingdisplayjai.jsp";

var firstYear = 1996;
var displayDay = "15";
var displayMonth = "Mar";
var displayYear = "2015";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/2060-display-extendingdisplayjai.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150315031258" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20131208002839/http://www.lac.inpe.br/JIPCookbook/2060-display-extendingdisplayjai.jsp" title="8 Dec 2013">DEC</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 3:12:58 Mar 15, 2015">MAR</td>
		<td class="f" nowrap="nowrap">
		
		    Apr
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131208002839/http://www.lac.inpe.br/JIPCookbook/2060-display-extendingdisplayjai.jsp" title="0:28:39 Dec 8, 2013"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 3:12:58 Mar 15, 2015">15</td>
	       <td class="f" nowrap="nowrap">
               
                   <img src="/static/images/toolbar/wm_tb_nxt_off.png" alt="Next capture" width="14" height="16" border="0"/>
               
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131208002839/http://www.lac.inpe.br/JIPCookbook/2060-display-extendingdisplayjai.jsp" title="8 Dec 2013"><strong>2013</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 3:12:58 Mar 15, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
                   2016
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150315031258*/http://www.lac.inpe.br/JIPCookbook/2060-display-extendingdisplayjai.jsp" title="See a list of every capture for this URL">9 captures</a>
           <div class="r" title="Timespan for captures of this URL">19 Jul 10 - 15 Mar 15</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000110000_2011:-1:000010100001_2012:-1:000010000000_2013:-1:000000010001_2014:-1:000000000000_2015:2:001000000000_2016:-1:000000000000_2017:-1:000000000000" />
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
<a href="/web/20150315031258/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150315031258/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">Extending the <tt>DisplayJAI</tt> class</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="2060-display-extendingdisplayjai.jsp#imagedisplayextendingthettdisplayjaittclassintroduction">Introduction</a>
</div>
<div class="toc3"><a href="2060-display-extendingdisplayjai.jsp#imagedisplayextendingthettdisplayjaittclassdisplayinginformationaboutpixelsunderthecursor">Displaying information about pixels under the cursor</a>
</div>
</div>

<p class="section"><a name="imagedisplayextendingthettdisplayjaittclassintroduction"></a>Introduction</p>

<p>It is relatively easy to extend the <tt>DisplayJAI</tt> class to provide additional capabilities. In this chapter we'll see some basic examples of classes which extends <tt>DisplayJAI</tt>
(more specific extensions will be shown in other chapters).</p>



<p class="section"><a name="imagedisplayextendingthettdisplayjaittclassdisplayinginformationaboutpixelsunderthecursor"></a>Displaying information about pixels under the cursor</p>


<p>The method <tt>mouseMoved</tt> in class <tt>DisplayJAI</tt> can be overriden to get information about the pixel under the mouse position. To do so, we create a class
which inherits from <tt>DisplayJAI</tt> and which extracts the required information.</p>

<p>An example is given below, in class <tt>DisplayJAIWithPixelInfo</tt>. Its constructor prepares some data structures to hold information for different types of images, and its
<tt>mouseMoved</tt> method stores the pixel information for further use.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplayextendingthettdisplayjaittclassdisplayinginformationaboutpixelsunderthecursordisplayjaiwithpixelinfojava">&nbsp;</a><a href="/web/20150315031258/http://150.163.105.39:8080/JIPCookbook//Code/display/extending/DisplayJAIWithPixelInfo.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DisplayJAIWithPixelInfo.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.extending;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseEvent;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.DataBuffer;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.IndexColorModel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.RenderedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.iterator.RandomIter;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.iterator.RandomIterFactory;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;shows&nbsp;how&nbsp;to&nbsp;extend&nbsp;the&nbsp;DisplayJAI&nbsp;class.&nbsp;We'll&nbsp;override&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;mouseMoved&nbsp;method&nbsp;of&nbsp;DisplayJAI&nbsp;so&nbsp;when&nbsp;the&nbsp;mouse&nbsp;is&nbsp;moved,&nbsp;some&nbsp;information  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;about&nbsp;the&nbsp;pixel&nbsp;beneath&nbsp;the&nbsp;mouse&nbsp;will&nbsp;be&nbsp;stored&nbsp;(but&nbsp;not&nbsp;displayed&nbsp;by&nbsp;this&nbsp;class).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DisplayJAIWithPixelInfo&nbsp;<span class="classword">extends</span>&nbsp;DisplayJAI&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;StringBuffer&nbsp;pixelInfo;&nbsp;<span class="comment">//&nbsp;The&nbsp;pixel&nbsp;information&nbsp;(formatted&nbsp;in&nbsp;a&nbsp;StringBuffer).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">double</span>[]&nbsp;dpixel;&nbsp;<span class="comment">//&nbsp;The&nbsp;pixel&nbsp;information&nbsp;as&nbsp;an&nbsp;array&nbsp;of&nbsp;doubles.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>[]&nbsp;ipixel;&nbsp;<span class="comment">//&nbsp;The&nbsp;pixel&nbsp;information&nbsp;as&nbsp;an&nbsp;array&nbsp;of&nbsp;integers.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">boolean</span>&nbsp;isDoubleType;&nbsp;<span class="comment">//&nbsp;Indicates&nbsp;which&nbsp;of&nbsp;the&nbsp;above&nbsp;arrays&nbsp;we&nbsp;will&nbsp;use.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;RandomIter&nbsp;readIterator;&nbsp;<span class="comment">//&nbsp;A&nbsp;RandomIter&nbsp;that&nbsp;allow&nbsp;us&nbsp;to&nbsp;get&nbsp;the&nbsp;data&nbsp;on&nbsp;a&nbsp;single&nbsp;pixel.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">boolean</span>&nbsp;isIndexed;&nbsp;<span class="comment">//&nbsp;True&nbsp;if&nbsp;the&nbsp;image&nbsp;has&nbsp;a&nbsp;indexed&nbsp;color&nbsp;model.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;lutData;&nbsp;<span class="comment">//&nbsp;Will&nbsp;contain&nbsp;the&nbsp;look-up&nbsp;table&nbsp;data&nbsp;if&nbsp;isIndexed&nbsp;is&nbsp;true.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;<span class="datatype">int</span>&nbsp;width,&nbsp;height;&nbsp;<span class="comment">//&nbsp;The&nbsp;dimensions&nbsp;of&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor&nbsp;of&nbsp;the&nbsp;class,&nbsp;which&nbsp;creates&nbsp;the&nbsp;arrays&nbsp;and&nbsp;instances&nbsp;needed  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;to&nbsp;obtain&nbsp;the&nbsp;image&nbsp;data&nbsp;and&nbsp;registers&nbsp;the&nbsp;class&nbsp;to&nbsp;listen&nbsp;to&nbsp;mouse&nbsp;motion&nbsp;events.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;image&nbsp;a&nbsp;RenderedImage&nbsp;for&nbsp;display  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;DisplayJAIWithPixelInfo(RenderedImage&nbsp;image)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">super</span>(image);&nbsp;<span class="comment">//&nbsp;Calls&nbsp;the&nbsp;constructor&nbsp;for&nbsp;DisplayJAI.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;readIterator&nbsp;=&nbsp;RandomIterFactory.create(image,&nbsp;<span class="specialword">null</span>);&nbsp;<span class="comment">//&nbsp;Creates&nbsp;the&nbsp;iterator.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;some&nbsp;data&nbsp;about&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;width&nbsp;=&nbsp;image.getWidth();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;height&nbsp;=&nbsp;image.getHeight();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;dataType&nbsp;=&nbsp;image.getSampleModel().getDataType();&nbsp;<span class="comment">//&nbsp;Gets&nbsp;the&nbsp;data&nbsp;type  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">switch</span>&nbsp;(dataType)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">case</span>&nbsp;DataBuffer.TYPE_BYTE:  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">case</span>&nbsp;DataBuffer.TYPE_SHORT:  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">case</span>&nbsp;DataBuffer.TYPE_USHORT:  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">case</span>&nbsp;DataBuffer.TYPE_INT:  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;isDoubleType&nbsp;=&nbsp;<span class="specialword">false</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">break</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">case</span>&nbsp;DataBuffer.TYPE_FLOAT:  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">case</span>&nbsp;DataBuffer.TYPE_DOUBLE:  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;isDoubleType&nbsp;=&nbsp;<span class="specialword">true</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">break</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Depending&nbsp;on&nbsp;the&nbsp;image&nbsp;data&nbsp;type,&nbsp;allocate&nbsp;the&nbsp;double&nbsp;or&nbsp;the&nbsp;int&nbsp;array.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(isDoubleType)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dpixel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">double</span>[image.getSampleModel().getNumBands()];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ipixel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[image.getSampleModel().getNumBands()];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Is&nbsp;the&nbsp;image&nbsp;color&nbsp;model&nbsp;indexed?  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;isIndexed&nbsp;=&nbsp;(image.getColorModel()&nbsp;instanceof&nbsp;IndexColorModel);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(isIndexed)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Retrieve&nbsp;the&nbsp;index&nbsp;color&nbsp;model&nbsp;of&nbsp;the&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IndexColorModel&nbsp;icm&nbsp;=&nbsp;(IndexColorModel)&nbsp;image.getColorModel();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;number&nbsp;of&nbsp;elements&nbsp;in&nbsp;each&nbsp;band&nbsp;of&nbsp;the&nbsp;colormap.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;mapSize&nbsp;=&nbsp;icm.getMapSize();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Allocate&nbsp;an&nbsp;array&nbsp;for&nbsp;the&nbsp;lookup&nbsp;table&nbsp;data.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[][]&nbsp;templutData&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[3][mapSize];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Load&nbsp;the&nbsp;lookup&nbsp;table&nbsp;data&nbsp;from&nbsp;the&nbsp;IndexColorModel.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;icm.getReds(templutData[0]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;icm.getGreens(templutData[1]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;icm.getBlues(templutData[2]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Load&nbsp;the&nbsp;lookup&nbsp;table&nbsp;data&nbsp;into&nbsp;a&nbsp;short&nbsp;array&nbsp;to&nbsp;avoid&nbsp;negative&nbsp;numbers.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lutData&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[3][mapSize];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">int</span>&nbsp;entry&nbsp;=&nbsp;0;&nbsp;entry&nbsp;&lt;&nbsp;mapSize;&nbsp;entry++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lutData[0][entry]&nbsp;=&nbsp;templutData[0][entry]&nbsp;&gt;&nbsp;0&nbsp;?&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;templutData[0][entry]&nbsp;:&nbsp;(<span class="datatype">short</span>)&nbsp;(templutData[0][entry]&nbsp;+&nbsp;256);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lutData[1][entry]&nbsp;=&nbsp;templutData[1][entry]&nbsp;&gt;&nbsp;0&nbsp;?&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;templutData[1][entry]&nbsp;:&nbsp;(<span class="datatype">short</span>)&nbsp;(templutData[1][entry]&nbsp;+&nbsp;256);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lutData[2][entry]&nbsp;=&nbsp;templutData[2][entry]&nbsp;&gt;&nbsp;0&nbsp;?&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;templutData[2][entry]&nbsp;:&nbsp;(<span class="datatype">short</span>)&nbsp;(templutData[2][entry]&nbsp;+&nbsp;256);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="comment">//&nbsp;end&nbsp;if&nbsp;indexed  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Registers&nbsp;the&nbsp;mouse&nbsp;motion&nbsp;listener.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;addMouseMotionListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;StringBuffer&nbsp;instance&nbsp;for&nbsp;the&nbsp;pixel&nbsp;information.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;StringBuffer(50);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;called&nbsp;when&nbsp;the&nbsp;mouse&nbsp;is&nbsp;moved&nbsp;over&nbsp;the&nbsp;image&nbsp;being  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;displayed.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;me&nbsp;the&nbsp;mouse&nbsp;event&nbsp;that&nbsp;caused&nbsp;the&nbsp;execution&nbsp;of&nbsp;this&nbsp;method.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseMoved(MouseEvent&nbsp;me)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.setLength(0);&nbsp;<span class="comment">//&nbsp;Clear&nbsp;the&nbsp;StringBuffer  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;x&nbsp;=&nbsp;me.getX();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;y&nbsp;=&nbsp;me.getY();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;((x&nbsp;&gt;=&nbsp;width)&nbsp;||&nbsp;(y&nbsp;&gt;=&nbsp;height))  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.append(<span class="string">"No&nbsp;data!"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(isDoubleType)&nbsp;<span class="comment">//&nbsp;Process&nbsp;the&nbsp;pixel&nbsp;as&nbsp;an&nbsp;array&nbsp;of&nbsp;double&nbsp;values  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.append(<span class="string">"(floating-point&nbsp;data)&nbsp;"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;readIterator.getPixel(me.getX(),&nbsp;me.getY(),&nbsp;dpixel);&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;pixel's&nbsp;values  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">int</span>&nbsp;b&nbsp;=&nbsp;0;&nbsp;b&nbsp;&lt;&nbsp;dpixel.length;&nbsp;b++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.append(dpixel[b]+<span class="string">","</span>);&nbsp;<span class="comment">//&nbsp;Append&nbsp;to&nbsp;the&nbsp;StringBuffer  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo&nbsp;=&nbsp;pixelInfo.deleteCharAt(pixelInfo.length()&nbsp;-&nbsp;1);&nbsp;<span class="comment">//&nbsp;Erase&nbsp;last&nbsp;comma  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="comment">//&nbsp;Pixel&nbsp;type&nbsp;is&nbsp;not&nbsp;floating&nbsp;point,&nbsp;will&nbsp;be&nbsp;processed&nbsp;as&nbsp;integers.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(isIndexed)&nbsp;<span class="comment">//&nbsp;If&nbsp;color&nbsp;model&nbsp;is&nbsp;indexed  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.append(<span class="string">"(integer&nbsp;data&nbsp;with&nbsp;colormap)&nbsp;"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;readIterator.getPixel(me.getX(),&nbsp;me.getY(),&nbsp;ipixel);&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;pixel's&nbsp;values  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Assume&nbsp;ipixel.length&nbsp;=&nbsp;1  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.append(<span class="string">"Index:&nbsp;"</span>+ipixel[0]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;also&nbsp;the&nbsp;RGB&nbsp;entry&nbsp;from&nbsp;the&nbsp;LUT.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.append(<span class="string">"&nbsp;RGB:"</span>+lutData[0][ipixel[0]]+<span class="string">","</span>+lutData[1][ipixel[0]]+<span class="string">","</span>+  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lutData[2][ipixel[0]]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Pixels&nbsp;are&nbsp;of&nbsp;integer&nbsp;type,&nbsp;but&nbsp;not&nbsp;indexed  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.append(<span class="string">"(integer&nbsp;data)&nbsp;"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;readIterator.getPixel(me.getX(),&nbsp;me.getY(),&nbsp;ipixel);&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;pixel's&nbsp;values  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;138&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">int</span>&nbsp;b&nbsp;=&nbsp;0;&nbsp;b&nbsp;&lt;&nbsp;ipixel.length;&nbsp;b++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;139&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.append(ipixel[b]&nbsp;+&nbsp;<span class="string">","</span>);&nbsp;<span class="comment">//&nbsp;Append&nbsp;to&nbsp;the&nbsp;StringBuffer  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;140&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo&nbsp;=&nbsp;pixelInfo.deleteCharAt(pixelInfo.length()&nbsp;-&nbsp;1);&nbsp;<span class="comment">//&nbsp;Erase&nbsp;last&nbsp;comma  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;141&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;142&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="comment">//&nbsp;Pixel&nbsp;is&nbsp;integer&nbsp;type  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;143&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="comment">//&nbsp;end&nbsp;of&nbsp;method&nbsp;mouseMoved  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;144&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;145&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;146&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;allows&nbsp;access&nbsp;to&nbsp;the&nbsp;pixel&nbsp;info&nbsp;which&nbsp;was&nbsp;obtained&nbsp;in&nbsp;the&nbsp;mouseMoved&nbsp;method.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;147&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;pixel&nbsp;information,&nbsp;formatted&nbsp;as&nbsp;a&nbsp;string  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;148&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;149&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;String&nbsp;getPixelInfo()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;150&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;151&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;pixelInfo.toString();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;152&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;153&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;154&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The class <tt>DisplayJAIWithPixelInfo</tt> does not display numerical information about the pixel: this must be done in a different component. The class
<tt>DisplayJAIWithPixelInfoApp</tt>, shown below, contains a <tt>JFrame</tt> with the display component itself and a <tt>JLabel</tt> with the information 
obtained when we move the mouse over the image.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplayextendingthettdisplayjaittclassdisplayinginformationaboutpixelsunderthecursordisplayjaiwithpixelinfoappjava">&nbsp;</a><a href="/web/20150315031258/http://150.163.105.39:8080/JIPCookbook//Code/display/extending/DisplayJAIWithPixelInfoApp.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DisplayJAIWithPixelInfoApp.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.extending;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.BorderLayout;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Container;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseEvent;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseMotionListener;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.RenderedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JLabel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JScrollPane;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;uses&nbsp;an&nbsp;instance&nbsp;of&nbsp;DisplayJAIWithPixelInfo&nbsp;to&nbsp;display&nbsp;an&nbsp;image&nbsp;in&nbsp;an  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;application.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DisplayJAIWithPixelInfoApp&nbsp;<span class="classword">extends</span>&nbsp;JFrame&nbsp;<span class="classword">implements</span>&nbsp;MouseMotionListener  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JLabel&nbsp;label;&nbsp;<span class="comment">//&nbsp;Will&nbsp;contain&nbsp;information&nbsp;on&nbsp;the&nbsp;pixels&nbsp;of&nbsp;the&nbsp;image&nbsp;being&nbsp;displayed.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;DisplayJAIWithPixelInfo&nbsp;dj;&nbsp;<span class="comment">//&nbsp;An&nbsp;instance&nbsp;of&nbsp;the&nbsp;display&nbsp;component.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor&nbsp;of&nbsp;the&nbsp;class,&nbsp;which&nbsp;sets&nbsp;the&nbsp;frame&nbsp;appearance&nbsp;and&nbsp;creates&nbsp;an  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;instance&nbsp;of&nbsp;the&nbsp;display&nbsp;component.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;image  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;DisplayJAIWithPixelInfoApp(RenderedImage&nbsp;image)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setTitle(<span class="string">"Move&nbsp;the&nbsp;mouse&nbsp;over&nbsp;the&nbsp;image&nbsp;!"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;JFrame's&nbsp;ContentPane.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Container&nbsp;contentPane&nbsp;=&nbsp;getContentPane();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;contentPane.setLayout(<span class="specialword">new</span>&nbsp;BorderLayout());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;an&nbsp;instance&nbsp;of&nbsp;DisplayJAIWithPixelInfo&nbsp;and&nbsp;adds&nbsp;it&nbsp;to&nbsp;the&nbsp;content&nbsp;pane.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAIWithPixelInfo(image);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;contentPane.add(<span class="specialword">new</span>&nbsp;JScrollPane(dj),BorderLayout.CENTER);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Registers&nbsp;the&nbsp;mouse&nbsp;motion&nbsp;listener&nbsp;so&nbsp;any&nbsp;event&nbsp;from&nbsp;the&nbsp;display&nbsp;class  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;will&nbsp;be&nbsp;also&nbsp;processed&nbsp;here.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj.addMouseMotionListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;a&nbsp;text&nbsp;label&nbsp;with&nbsp;the&nbsp;image&nbsp;information.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;label&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JLabel(<span class="string">"???"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;contentPane.add(label,BorderLayout.SOUTH);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;closing&nbsp;operation&nbsp;so&nbsp;the&nbsp;application&nbsp;is&nbsp;finished.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pack();&nbsp;<span class="comment">//&nbsp;adjust&nbsp;the&nbsp;frame&nbsp;size.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setVisible(<span class="specialword">true</span>);&nbsp;<span class="comment">//&nbsp;show&nbsp;the&nbsp;frame.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;executed&nbsp;when&nbsp;the&nbsp;mouse&nbsp;is&nbsp;moved&nbsp;over&nbsp;the&nbsp;extended  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;display&nbsp;class.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;e&nbsp;the&nbsp;mouse&nbsp;event  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseMoved(MouseEvent&nbsp;e)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;pos&nbsp;=&nbsp;<span class="string">"("</span>+e.getX()+<span class="string">","</span>+e.getY()+<span class="string">")&nbsp;"</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;label.setText(pos+dj.getPixelInfo());&nbsp;<span class="comment">//&nbsp;Update&nbsp;the&nbsp;label&nbsp;with&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;DisplayJAIWithPixelInfo&nbsp;instance&nbsp;info.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;not&nbsp;do&nbsp;anything&nbsp;-&nbsp;it&nbsp;is&nbsp;here&nbsp;just&nbsp;to&nbsp;keep&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;MouseMotionListener&nbsp;interface&nbsp;happy.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseDragged(MouseEvent&nbsp;e)&nbsp;{&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;args&nbsp;the&nbsp;command&nbsp;line&nbsp;arguments.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;image&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,&nbsp;args[0]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAIWithPixelInfoApp(image);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="comment">//&nbsp;end&nbsp;main  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>A screenshot for the class <tt>DisplayJAIWithPixelInfoApp</tt> is shown below.</p>

<a name="imagedisplayextendingthettdisplayjaittclassdisplayinginformationaboutpixelsunderthecursorscreenshotofthettdisplayjaiwithpixelinfoappttapplication">&nbsp;</a><img class="figure" src="Resources/Screenshots/DisplayJAIWithPixelInfoApp.png" border=0 alt="Screenshot of the <tt>DisplayJAIWithPixelInfoApp</tt> application."><p class="caption">Screenshot of the <tt>DisplayJAIWithPixelInfoApp</tt> application.</p>
<div class="spacer">&nbsp;</div>







<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="1300-create-rgb.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="1300-create-rgb.jsp">Creating RGB Images</a></td><td class="navigation1"><a href="2050-display-displayjai.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="2050-display-displayjai.jsp">Displaying Images with the <tt>DisplayJAI</tt> class</a></td><td class="navigation0"><a href="2060-display-extendingdisplayjai.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="2060-display-extendingdisplayjai.jsp">Extending the <tt>DisplayJAI</tt> class</a></td><td class="navigation1"><a href="2100-display-multipleimages.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="2100-display-multipleimages.jsp">Displaying Multiple Images</a></td><td class="navigation2"><a href="2120-display-thumbnail.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="2120-display-thumbnail.jsp">Displaying Interactive Thumbnails</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150315031258/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150315031258/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150315031258/https://ssl." : "/web/20150315031258/http://www.");
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
     FILE ARCHIVED ON 3:12:58 Mar 15, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 0:54:49 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
