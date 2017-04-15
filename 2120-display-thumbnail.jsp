


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app7.us.archive.org";archive_analytics.values.server_ms=611;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/2120-display-thumbnail.jsp";

var firstYear = 1996;
var displayDay = "29";
var displayMonth = "Nov";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/2120-display-thumbnail.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20151129073046" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20130731093423/http://www.lac.inpe.br/JIPCookbook/2120-display-thumbnail.jsp" title="31 Jul 2013">JUL</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 7:30:46 Nov 29, 2015">NOV</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20151230105215/http://www.lac.inpe.br/JIPCookbook/2120-display-thumbnail.jsp" title="30 Dec 2015"><strong>DEC</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20130731093423/http://www.lac.inpe.br/JIPCookbook/2120-display-thumbnail.jsp" title="9:34:23 Jul 31, 2013"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 7:30:46 Nov 29, 2015">29</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20151230105215/http://www.lac.inpe.br/JIPCookbook/2120-display-thumbnail.jsp" title="10:52:15 Dec 30, 2015"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20130731093423/http://www.lac.inpe.br/JIPCookbook/2120-display-thumbnail.jsp" title="31 Jul 2013"><strong>2013</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 7:30:46 Nov 29, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
                   2016
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20151129073046*/http://www.lac.inpe.br/JIPCookbook/2120-display-thumbnail.jsp" title="See a list of every capture for this URL">12 captures</a>
           <div class="r" title="Timespan for captures of this URL">25 Aug 10 - 30 Dec 15</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000010000_2011:-1:101000100010_2012:-1:000111010000_2013:-1:000000100000_2014:-1:000000000000_2015:10:000000000011_2016:-1:000000000000_2017:-1:000000000000" />
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
<a href="/web/20151129073046/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20151129073046/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">Displaying Interactive Thumbnails</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="2120-display-thumbnail.jsp#imagedisplaydisplayinginteractivethumbnailsintroduction">Introduction</a>
</div>
<div class="toc3"><a href="2120-display-thumbnail.jsp#imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnails">Displaying Interactive Thumbnails</a>
</div>
</div>

<p class="section"><a name="imagedisplaydisplayinginteractivethumbnailsintroduction"></a>Introduction</p>

<p>Some images may have dimensions larger than the computer screen, so we can only display parts of it at a time.
One way to do this is to display the image inside a <tt>JScrollPane</tt> as shown in some examples (e.g. in chapters
<a href="2050-display-displayjai.jsp">Displaying Images with the <tt>DisplayJAI</tt> class</a> and <a href="2100-display-multipleimages.jsp">Displaying Multiple Images</a>). </p>
<p> 
In this chapter we will see another way to control the viewport of a large image: a specialized component that
displays a thumbnail of the image and allows the user to visually position the viewport over it.</p>



<p class="section"><a name="imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnails"></a>Displaying Interactive Thumbnails</p>


<p>The component that will display a thumbnail is implemented by class <tt>DisplayThumbnail</tt> (shown below) and have the
following features:</p>
<ul>
<li>It extends <tt>DisplayJAI</tt> so the basic image display functions are already present, but instead of 
displaying an instance of <tt>PlanarImage</tt> it scales the original image by a factor and adds a border to it.</li>
<li>It implements the interfaces <tt>MouseListener</tt> and <tt>MouseMotionListener</tt> to allow interaction with the thumbnail.</li>
<li>It contains a method to return the region of the original image corresponding to the viewport over the thumbnail -- an external
application could get this image for display.</li>
</ul>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnailsdisplaythumbnailjava">&nbsp;</a><a href="/web/20151129073046/http://150.163.105.39:8080/JIPCookbook//Code/display/thumbnail/DisplayThumbnail.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DisplayThumbnail.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.thumbnail;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.AlphaComposite;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.BasicStroke;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Color;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Dimension;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Graphics;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Graphics2D;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Rectangle;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Stroke;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseEvent;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseListener;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseMotionListener;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.geom.Rectangle2D;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.renderable.ParameterBlock;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.BorderExtenderConstant;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.InterpolationNearest;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;represents&nbsp;a&nbsp;small&nbsp;thumbnail&nbsp;of&nbsp;an&nbsp;image&nbsp;as&nbsp;a&nbsp;component&nbsp;which&nbsp;allows&nbsp;the&nbsp;user&nbsp;to&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;interactively&nbsp;position&nbsp;a&nbsp;viewport&nbsp;over&nbsp;it.&nbsp;A&nbsp;method&nbsp;returns&nbsp;the&nbsp;original&nbsp;image&nbsp;positioned&nbsp;to&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;correspond&nbsp;to&nbsp;the&nbsp;viewport.&nbsp;Some&nbsp;decorations&nbsp;are&nbsp;also&nbsp;displayed&nbsp;over&nbsp;the&nbsp;thumbnail&nbsp;(viewport,&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;tile&nbsp;markers).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DisplayThumbnail&nbsp;<span class="classword">extends</span>&nbsp;DisplayJAI&nbsp;<span class="classword">implements</span>&nbsp;MouseMotionListener,MouseListener  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;original&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;PlanarImage&nbsp;originalImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;scale&nbsp;(<&nbsp;1.0)&nbsp;for&nbsp;the&nbsp;thumbnail&nbsp;creation.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">float</span>&nbsp;scale;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;number&nbsp;of&nbsp;tiles&nbsp;on&nbsp;the&nbsp;original&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>&nbsp;imageXTiles,imageYTiles;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;tiles&nbsp;width&nbsp;and&nbsp;height&nbsp;on&nbsp;the&nbsp;original&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>&nbsp;imageTileWidth,imageTileHeight;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;dimensions&nbsp;of&nbsp;the&nbsp;original&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>&nbsp;imageWidth,imageHeight;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;dimensions&nbsp;of&nbsp;the&nbsp;visible&nbsp;region.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>&nbsp;visibleRegionWidth,visibleRegionHeight;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;dimensions&nbsp;of&nbsp;the&nbsp;scaled&nbsp;thumbnail.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>&nbsp;thumbWidth,thumbHeight;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;size&nbsp;of&nbsp;the&nbsp;border&nbsp;around&nbsp;the&nbsp;thumbnail.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="datatype">int</span>&nbsp;border&nbsp;=&nbsp;10;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;scaled&nbsp;viewport&nbsp;(dimensions&nbsp;are&nbsp;scaled/translated&nbsp;by&nbsp;the&nbsp;border).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;Rectangle2D&nbsp;scaledViewport;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;color&nbsp;of&nbsp;the&nbsp;viewport.&nbsp;It&nbsp;will&nbsp;be&nbsp;set&nbsp;depending&nbsp;on&nbsp;whether&nbsp;the&nbsp;mouse  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;cursor&nbsp;is&nbsp;over&nbsp;the&nbsp;viewport&nbsp;or&nbsp;not.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;Color&nbsp;viewportColor;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;Colors&nbsp;to&nbsp;be&nbsp;used&nbsp;when&nbsp;the&nbsp;mouse&nbsp;is/isn't&nbsp;over&nbsp;the&nbsp;viewport.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">static</span>&nbsp;Color&nbsp;viewportOn&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Color(120,255,120);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">static</span>&nbsp;Color&nbsp;viewportOff&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Color(0,192,0);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;Coordinates&nbsp;obtained&nbsp;when&nbsp;we&nbsp;click&nbsp;(press)&nbsp;the&nbsp;mouse&nbsp;button&nbsp;to&nbsp;start&nbsp;dragging&nbsp;the&nbsp;viewport.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>&nbsp;lastX,lastY;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;Those&nbsp;coordinates&nbsp;represent&nbsp;the&nbsp;region&nbsp;where&nbsp;we&nbsp;can&nbsp;safely&nbsp;drag&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;viewport&nbsp;without&nbsp;"falling&nbsp;outside"&nbsp;the&nbsp;image&nbsp;boundaries.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>&nbsp;minValidX,minValidY,maxValidX,maxValidY;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor&nbsp;for&nbsp;the&nbsp;class,&nbsp;which&nbsp;creates&nbsp;a&nbsp;thumbnail&nbsp;version&nbsp;of  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;the&nbsp;image&nbsp;and&nbsp;sets&nbsp;the&nbsp;user&nbsp;interface.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;image&nbsp;the&nbsp;image&nbsp;to&nbsp;be&nbsp;used&nbsp;for&nbsp;the&nbsp;thumbnail&nbsp;creation.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;scale&nbsp;the&nbsp;scale&nbsp;to&nbsp;be&nbsp;used&nbsp;for&nbsp;the&nbsp;thumbnail&nbsp;creation.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;width&nbsp;the&nbsp;width&nbsp;of&nbsp;the&nbsp;desired&nbsp;viewport&nbsp;(pixels).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;height&nbsp;the&nbsp;width&nbsp;of&nbsp;the&nbsp;desired&nbsp;viewport&nbsp;(pixels).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;DisplayThumbnail(PlanarImage&nbsp;image,<span class="datatype">float</span>&nbsp;scale,<span class="datatype">int</span>&nbsp;width,<span class="datatype">int</span>&nbsp;height)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">this</span>.scale&nbsp;=&nbsp;scale;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;originalImage&nbsp;=&nbsp;image;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;visibleRegionWidth&nbsp;=&nbsp;width;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;visibleRegionHeight&nbsp;=&nbsp;height;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;some&nbsp;stuff&nbsp;about&nbsp;the&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;imageXTiles&nbsp;=&nbsp;image.getNumXTiles();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;imageYTiles&nbsp;=&nbsp;image.getNumYTiles();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;imageTileWidth&nbsp;=&nbsp;image.getTileWidth();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;imageTileHeight&nbsp;=&nbsp;image.getTileHeight();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;imageWidth&nbsp;=&nbsp;image.getWidth();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;imageHeight&nbsp;=&nbsp;image.getHeight();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Must&nbsp;create&nbsp;a&nbsp;thumbnail&nbsp;image&nbsp;using&nbsp;that&nbsp;scale.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(image);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(scale);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(scale);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(0.0F);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(0.0F);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(<span class="specialword">new</span>&nbsp;InterpolationNearest());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;thumbnail&nbsp;=&nbsp;JAI.create(<span class="string">"scale"</span>,&nbsp;pb,&nbsp;<span class="specialword">null</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;get&nbsp;the&nbsp;width&nbsp;and&nbsp;height&nbsp;of&nbsp;the&nbsp;thumbnail.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;thumbWidth&nbsp;=&nbsp;thumbnail.getWidth();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;thumbHeight&nbsp;=&nbsp;thumbnail.getHeight();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Now&nbsp;let's&nbsp;add&nbsp;a&nbsp;border.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(thumbnail);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(<span class="specialword">new</span>&nbsp;Integer(border));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(<span class="specialword">new</span>&nbsp;Integer(border));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(<span class="specialword">new</span>&nbsp;Integer(border));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(<span class="specialword">new</span>&nbsp;Integer(border));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fix&nbsp;this&nbsp;someday&nbsp;?&nbsp;I'd&nbsp;like&nbsp;to&nbsp;ensure&nbsp;the&nbsp;image&nbsp;border&nbsp;will&nbsp;always&nbsp;be&nbsp;in&nbsp;color.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(<span class="specialword">new</span>&nbsp;BorderExtenderConstant(<span class="specialword">new</span>&nbsp;<span class="datatype">double</span>[]{0,0,128}));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;thumbnail&nbsp;=&nbsp;JAI.create(<span class="string">"border"</span>,pb);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Shift&nbsp;the&nbsp;image&nbsp;to&nbsp;the&nbsp;original&nbsp;position&nbsp;(since&nbsp;the&nbsp;borders&nbsp;changed&nbsp;the&nbsp;image's&nbsp;origin).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(thumbnail);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(1.0f*border);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(1.0f*border);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;thumbnail&nbsp;=&nbsp;JAI.create(<span class="string">"translate"</span>,pb,<span class="specialword">null</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Use&nbsp;this&nbsp;thumbnail&nbsp;as&nbsp;the&nbsp;image&nbsp;for&nbsp;the&nbsp;DisplayJAI&nbsp;component.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;set(thumbnail);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We'd&nbsp;like&nbsp;to&nbsp;listen&nbsp;to&nbsp;mouse&nbsp;clicks&nbsp;and&nbsp;movements.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;addMouseMotionListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;addMouseListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Initially&nbsp;the&nbsp;scaled&nbsp;viewport&nbsp;will&nbsp;be&nbsp;positioned&nbsp;at&nbsp;border,border.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;scaledViewport&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Rectangle2D.Float(border,border,width*scale,height*scale);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;assume&nbsp;that&nbsp;the&nbsp;mouse&nbsp;is&nbsp;off&nbsp;the&nbsp;viewport.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;viewportColor&nbsp;=&nbsp;viewportOff;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;maximum&nbsp;size&nbsp;for&nbsp;this&nbsp;component&nbsp;--&nbsp;we'll&nbsp;just&nbsp;return&nbsp;the&nbsp;preferred&nbsp;size.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;Dimension&nbsp;getMaximumSize()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;getPreferredSize();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;minimum&nbsp;size&nbsp;for&nbsp;this&nbsp;component&nbsp;--&nbsp;we'll&nbsp;just&nbsp;return&nbsp;the&nbsp;preferred&nbsp;size.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;Dimension&nbsp;getMinimumSize()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;getPreferredSize();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;138&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;139&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;140&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;preferred&nbsp;size&nbsp;for&nbsp;this&nbsp;component,&nbsp;which&nbsp;is&nbsp;the&nbsp;size&nbsp;of&nbsp;the&nbsp;thumbnail&nbsp;plus&nbsp;borders.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;141&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;Dimension&nbsp;getPreferredSize()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;142&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;143&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;<span class="specialword">new</span>&nbsp;Dimension(thumbWidth+2*border,thumbHeight+2*border);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;144&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;145&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;146&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;147&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;repaint&nbsp;the&nbsp;component.&nbsp;It&nbsp;will&nbsp;draw&nbsp;the&nbsp;thumbnail&nbsp;image,  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;148&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;then&nbsp;draw&nbsp;some&nbsp;yellow&nbsp;lines&nbsp;over&nbsp;the&nbsp;tiles'&nbsp;boundary&nbsp;(if&nbsp;the&nbsp;image&nbsp;is  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;149&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;tiled)&nbsp;then&nbsp;draw&nbsp;the&nbsp;viewport.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;150&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;151&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">synchronized</span>&nbsp;<span class="datatype">void</span>&nbsp;paintComponent(Graphics&nbsp;g)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;152&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;153&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">super</span>.paintComponent(g);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;154&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Graphics2D&nbsp;g2d&nbsp;=&nbsp;(Graphics2D)g;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;155&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Paint&nbsp;the&nbsp;tile&nbsp;grid.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;156&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.setColor(Color.YELLOW);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;157&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER,0.5f));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;158&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;x1,x2,y1,y2;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;159&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Vertical&nbsp;tiles'&nbsp;boundaries.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;160&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;x1&nbsp;=&nbsp;x2&nbsp;=&nbsp;border;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;161&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;y1&nbsp;=&nbsp;border;&nbsp;y2&nbsp;=&nbsp;border+thumbHeight;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;162&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;tx=0;tx&lt;=imageXTiles;tx++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;163&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;164&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.drawLine((<span class="datatype">int</span>)x1,(<span class="datatype">int</span>)y1,(<span class="datatype">int</span>)x2,(<span class="datatype">int</span>)y2);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;165&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;x1&nbsp;+=&nbsp;imageTileWidth*scale;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;166&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;x2&nbsp;+=&nbsp;imageTileWidth*scale;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;167&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;168&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Horizontal&nbsp;tiles'&nbsp;boundaries.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;169&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;x1&nbsp;=&nbsp;border;&nbsp;x2&nbsp;=&nbsp;border+thumbWidth;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;170&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;y1&nbsp;=&nbsp;y2&nbsp;=&nbsp;border;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;171&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;ty=0;ty&lt;=imageYTiles;ty++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;172&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;173&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.drawLine((<span class="datatype">int</span>)x1,(<span class="datatype">int</span>)y1,(<span class="datatype">int</span>)x2,(<span class="datatype">int</span>)y2);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;174&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;y1&nbsp;+=&nbsp;imageTileHeight*scale;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;175&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;y2&nbsp;+=&nbsp;imageTileHeight*scale;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;176&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;177&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Paint&nbsp;a&nbsp;red&nbsp;border.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;178&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.setColor(Color.RED);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;179&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.drawRect(border,border,thumbWidth,thumbHeight);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;180&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Paint&nbsp;the&nbsp;viewport.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;181&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.setColor(viewportColor);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;182&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER,1f));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;183&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Stroke&nbsp;stroke&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BasicStroke(2f);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;184&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.setStroke(stroke);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;185&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.draw(scaledViewport);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;186&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;187&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;188&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;189&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;called&nbsp;whenever&nbsp;the&nbsp;mouse&nbsp;is&nbsp;moved&nbsp;over&nbsp;the&nbsp;thumbnail.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;190&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Basically&nbsp;it&nbsp;will&nbsp;detect&nbsp;whether&nbsp;the&nbsp;mouse&nbsp;pointer&nbsp;is&nbsp;over&nbsp;or&nbsp;not&nbsp;over&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;191&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;viewport&nbsp;and&nbsp;repaint&nbsp;to&nbsp;change&nbsp;the&nbsp;viewport&nbsp;color.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;192&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;193&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseMoved(MouseEvent&nbsp;e)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;194&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;195&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;x&nbsp;=&nbsp;e.getX();&nbsp;<span class="datatype">int</span>&nbsp;y&nbsp;=&nbsp;e.getY();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;196&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Ignore&nbsp;events&nbsp;outside&nbsp;the&nbsp;border.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;197&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;((x&nbsp;&lt;&nbsp;border)&nbsp;||&nbsp;(y&nbsp;&lt;&nbsp;border)&nbsp;||  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;198&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(x&nbsp;&gt;&nbsp;border+thumbWidth)&nbsp;||&nbsp;(y&nbsp;&gt;&nbsp;border+thumbHeight))  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;199&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;200&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Are&nbsp;we&nbsp;inside&nbsp;the&nbsp;viewport&nbsp;rectangle&nbsp;?  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;201&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(scaledViewport.contains(x,y))&nbsp;viewportColor&nbsp;=&nbsp;viewportOn;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;202&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;viewportColor&nbsp;=&nbsp;viewportOff;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;203&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Hopefully&nbsp;it&nbsp;will&nbsp;repaint&nbsp;only&nbsp;the&nbsp;needed&nbsp;section.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;204&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Rectangle&nbsp;repaintBounds&nbsp;=  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;205&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;Rectangle((<span class="datatype">int</span>)scaledViewport.getX()-5,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;206&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<span class="datatype">int</span>)scaledViewport.getY()-5,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;207&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<span class="datatype">int</span>)scaledViewport.getWidth()+10,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;208&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<span class="datatype">int</span>)scaledViewport.getHeight()+10);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;209&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;repaint(repaintBounds);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;210&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;211&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;212&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;213&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;called&nbsp;when&nbsp;we&nbsp;first&nbsp;click&nbsp;on&nbsp;the&nbsp;thumbnail&nbsp;to&nbsp;start  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;214&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;the&nbsp;dragging&nbsp;movement.&nbsp;It&nbsp;will&nbsp;calculate&nbsp;the&nbsp;new&nbsp;region&nbsp;where&nbsp;we&nbsp;can&nbsp;drag  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;215&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;the&nbsp;thumbnail&nbsp;so&nbsp;it&nbsp;won't&nbsp;"fall"&nbsp;outside&nbsp;the&nbsp;image&nbsp;boundaries.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;216&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;217&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mousePressed(MouseEvent&nbsp;e)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;218&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;219&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;new&nbsp;dragging&nbsp;starting&nbsp;points.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;220&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lastX&nbsp;=&nbsp;e.getX();&nbsp;lastY&nbsp;=&nbsp;e.getY();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;221&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;new&nbsp;window&nbsp;where&nbsp;we&nbsp;can&nbsp;consider&nbsp;viewport&nbsp;movements.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;222&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;minValidX&nbsp;=&nbsp;lastX-(<span class="datatype">int</span>)scaledViewport.getX()+border;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;223&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;minValidY&nbsp;=&nbsp;lastY-(<span class="datatype">int</span>)scaledViewport.getY()+border;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;224&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;maxValidX&nbsp;=&nbsp;border+thumbWidth-(<span class="datatype">int</span>)scaledViewport.getWidth()+(lastX-(<span class="datatype">int</span>)scaledViewport.getX());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;225&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;maxValidY&nbsp;=&nbsp;border+thumbHeight-(<span class="datatype">int</span>)scaledViewport.getHeight()+(lastY-(<span class="datatype">int</span>)scaledViewport.getY());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;226&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;227&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;228&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;229&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;called&nbsp;when&nbsp;we&nbsp;drag&nbsp;the&nbsp;mouse&nbsp;around&nbsp;the&nbsp;thumbnail.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;230&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;If&nbsp;the&nbsp;coordinates&nbsp;are&nbsp;inside&nbsp;the&nbsp;movable&nbsp;region&nbsp;we&nbsp;will&nbsp;update&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;231&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;location&nbsp;of&nbsp;the&nbsp;viewport.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;232&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;233&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseDragged(MouseEvent&nbsp;e)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;234&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;235&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;x&nbsp;=&nbsp;e.getX();&nbsp;<span class="datatype">int</span>&nbsp;y&nbsp;=&nbsp;e.getY();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;236&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(x&nbsp;&gt;&nbsp;maxValidX)&nbsp;x&nbsp;=&nbsp;maxValidX-1;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;237&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(x&nbsp;&lt;&nbsp;minValidX)&nbsp;x&nbsp;=&nbsp;minValidX;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;238&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(y&nbsp;&gt;&nbsp;maxValidY)&nbsp;y&nbsp;=&nbsp;maxValidY&nbsp;-&nbsp;1;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;239&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(y&nbsp;&lt;&nbsp;minValidY)&nbsp;y&nbsp;=&nbsp;minValidY;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;240&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;((x&nbsp;&gt;=&nbsp;minValidX)&nbsp;&amp;&amp;&nbsp;(y&nbsp;&gt;=&nbsp;minValidY)&nbsp;&amp;&amp;&nbsp;(x&nbsp;&lt;=&nbsp;maxValidX)&nbsp;&amp;&amp;&nbsp;(y&nbsp;&lt;=&nbsp;maxValidY))  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;241&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;242&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;updateLocation(x,&nbsp;y);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;243&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastX&nbsp;=&nbsp;x;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;244&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastY&nbsp;=&nbsp;y;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;245&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;246&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;247&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;248&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;249&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;updates&nbsp;the&nbsp;viewport&nbsp;position&nbsp;based&nbsp;on&nbsp;the&nbsp;last&nbsp;position  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;250&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;where&nbsp;the&nbsp;mouse&nbsp;was&nbsp;dragged&nbsp;to.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;251&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;x&nbsp;the&nbsp;last&nbsp;X&nbsp;position&nbsp;where&nbsp;the&nbsp;mouse&nbsp;was&nbsp;dragged&nbsp;to.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;252&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;y&nbsp;the&nbsp;last&nbsp;Y&nbsp;position&nbsp;where&nbsp;the&nbsp;mouse&nbsp;was&nbsp;dragged&nbsp;to.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;253&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;254&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;updateLocation(<span class="datatype">int</span>&nbsp;x,<span class="datatype">int</span>&nbsp;y)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;255&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;256&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;approximate&nbsp;region&nbsp;where&nbsp;the&nbsp;viewport&nbsp;was&nbsp;before&nbsp;the&nbsp;change.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;257&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Rectangle&nbsp;initBounds&nbsp;=  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;258&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;Rectangle((<span class="datatype">int</span>)scaledViewport.getX()-5,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;259&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<span class="datatype">int</span>)scaledViewport.getY()-5,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;260&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<span class="datatype">int</span>)scaledViewport.getWidth()+10,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;261&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<span class="datatype">int</span>)scaledViewport.getHeight()+10);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;262&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Recalculate&nbsp;the&nbsp;new&nbsp;position&nbsp;for&nbsp;the&nbsp;viewport,&nbsp;based&nbsp;on&nbsp;mouse&nbsp;coordinates.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;263&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;origX&nbsp;=&nbsp;scaledViewport.getX()+x-lastX;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;264&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;origY&nbsp;=&nbsp;scaledViewport.getY()+y-lastY;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;265&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Reposition&nbsp;the&nbsp;viewport.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;266&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;scaledViewport.setFrame(origX,origY,scaledViewport.getWidth(),scaledViewport.getHeight());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;267&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;approximate&nbsp;region&nbsp;where&nbsp;the&nbsp;viewport&nbsp;is&nbsp;after&nbsp;the&nbsp;change.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;268&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Rectangle&nbsp;finalBounds&nbsp;=  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;269&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;Rectangle((<span class="datatype">int</span>)scaledViewport.getX()-5,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;270&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<span class="datatype">int</span>)scaledViewport.getY()-5,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;271&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<span class="datatype">int</span>)scaledViewport.getWidth()+10,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;272&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<span class="datatype">int</span>)scaledViewport.getHeight()+10);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;273&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Repaint&nbsp;only&nbsp;the&nbsp;needed&nbsp;section.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;274&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;repaint(finalBounds.union(initBounds));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;275&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;276&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;277&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;278&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;return&nbsp;the&nbsp;part&nbsp;of&nbsp;the&nbsp;original&nbsp;image&nbsp;corresponding  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;279&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;to&nbsp;the&nbsp;region&nbsp;under&nbsp;the&nbsp;viewport.&nbsp;The&nbsp;part&nbsp;of&nbsp;the&nbsp;image&nbsp;will&nbsp;be&nbsp;obtained  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;280&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;by&nbsp;cropping&nbsp;the&nbsp;original&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;281&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;a&nbsp;PlanarImage&nbsp;with&nbsp;the&nbsp;part&nbsp;of&nbsp;the&nbsp;original&nbsp;image  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;282&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;283&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;PlanarImage&nbsp;getImage()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;284&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;285&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;boundaries&nbsp;in&nbsp;the&nbsp;original&nbsp;image&nbsp;coordinates.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;286&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;fromX&nbsp;&nbsp;=&nbsp;(<span class="datatype">float</span>)Math.round((scaledViewport.getX()-border)/scale);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;287&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;fromY&nbsp;&nbsp;=&nbsp;(<span class="datatype">float</span>)Math.round((scaledViewport.getY()-border)/scale);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;288&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;width&nbsp;&nbsp;=&nbsp;(<span class="datatype">float</span>)Math.round(scaledViewport.getWidth()/scale);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;289&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;height&nbsp;=&nbsp;(<span class="datatype">float</span>)Math.round(scaledViewport.getWidth()/scale);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;290&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fix&nbsp;rounding&nbsp;errors&nbsp;to&nbsp;avoid&nbsp;exceptions&nbsp;on&nbsp;the&nbsp;crop.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;291&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;fromX&nbsp;=&nbsp;Math.min(fromX,(imageWidth-visibleRegionWidth));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;292&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;fromY&nbsp;=&nbsp;Math.min(fromY,(imageHeight-visibleRegionHeight));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;293&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;ParameterBlock&nbsp;with&nbsp;information&nbsp;for&nbsp;the&nbsp;cropping.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;294&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;295&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(originalImage);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;296&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(fromX);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;297&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(fromY);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;298&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(width);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;299&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(height);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;300&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;output&nbsp;image&nbsp;by&nbsp;cropping&nbsp;the&nbsp;input&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;301&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;output&nbsp;=&nbsp;JAI.create(<span class="string">"crop"</span>,pb,<span class="specialword">null</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;302&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Translate&nbsp;the&nbsp;image&nbsp;origin.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;303&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;304&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(output);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;305&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(-fromX);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;306&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(-fromY);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;307&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;output&nbsp;image&nbsp;by&nbsp;translating&nbsp;itself.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;308&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;JAI.create(<span class="string">"translate"</span>,pb,<span class="specialword">null</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;309&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;310&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;311&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;312&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Return&nbsp;the&nbsp;real&nbsp;world&nbsp;(original&nbsp;image)&nbsp;bounds.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;313&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;original&nbsp;image's&nbsp;bounds.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;314&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;315&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;Rectangle&nbsp;getCroppedImageBounds()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;316&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;317&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;fromX&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)Math.round((scaledViewport.getX()-border)/scale);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;318&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;fromY&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)Math.round((scaledViewport.getY()-border)/scale);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;319&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)Math.round(scaledViewport.getWidth()/scale);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;320&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;(<span class="datatype">int</span>)Math.round(scaledViewport.getWidth()/scale);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;321&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;<span class="specialword">new</span>&nbsp;Rectangle(fromX,fromY,width,height);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;322&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;323&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;324&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;325&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Return&nbsp;the&nbsp;scaled&nbsp;(thumbnail)&nbsp;viewport&nbsp;bounds.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;326&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;thumbnail's&nbsp;viewport&nbsp;bounds.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;327&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;328&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;Rectangle&nbsp;getViewportBounds()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;329&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;330&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Rectangle&nbsp;temp&nbsp;=&nbsp;scaledViewport.getBounds();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;331&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;temp.setBounds((<span class="datatype">int</span>)temp.getX()-border,(<span class="datatype">int</span>)temp.getY()-border,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;332&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<span class="datatype">int</span>)temp.getWidth(),(<span class="datatype">int</span>)temp.getHeight());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;333&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;temp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;334&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;335&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;336&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>



<p>An application that uses the class <tt>DisplayThumbnail</tt> is shown below. This application creates two windows, one for
the instance of <tt>DisplayThumbnail</tt> and another for an instance of <tt>DisplayJAI</tt> that will show the image corresponding to
the viewport region on the thumbnail. The application will also display coordinates on the image and viewport.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnailsdisplaythumbnailappjava">&nbsp;</a><a href="/web/20151129073046/http://150.163.105.39:8080/JIPCookbook//Code/display/thumbnail/DisplayThumbnailApp.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DisplayThumbnailApp.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.thumbnail;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.BorderLayout;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Container;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.GridLayout;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Rectangle;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseEvent;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseMotionListener;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JLabel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JPanel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;demonstrates&nbsp;the&nbsp;usage&nbsp;of&nbsp;the&nbsp;class&nbsp;DisplayThumbnail.&nbsp;It&nbsp;will&nbsp;create&nbsp;an&nbsp;instance&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;of&nbsp;DisplayThumbnail&nbsp;and&nbsp;an&nbsp;instance&nbsp;of&nbsp;DisplayJAI&nbsp;controlled&nbsp;by&nbsp;it.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DisplayThumbnailApp&nbsp;<span class="classword">extends</span>&nbsp;JFrame&nbsp;<span class="classword">implements</span>&nbsp;MouseMotionListener  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;instance&nbsp;of&nbsp;DisplayThumbnail.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;DisplayThumbnail&nbsp;dt;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;instance&nbsp;of&nbsp;DisplayJAI.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;DisplayJAI&nbsp;dj;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;Two&nbsp;labels&nbsp;to&nbsp;show&nbsp;the&nbsp;world&nbsp;(original&nbsp;image)&nbsp;and&nbsp;thumbnail&nbsp;viewport&nbsp;coordinates.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JLabel&nbsp;world,view;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor&nbsp;for&nbsp;the&nbsp;class,&nbsp;which&nbsp;will&nbsp;take&nbsp;as&nbsp;arguments&nbsp;the&nbsp;original  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;image&nbsp;and&nbsp;the&nbsp;desired&nbsp;width&nbsp;and&nbsp;height&nbsp;of&nbsp;the&nbsp;region&nbsp;to&nbsp;be&nbsp;shown.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;image&nbsp;the&nbsp;original&nbsp;image&nbsp;to&nbsp;be&nbsp;displayed  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;dWidth&nbsp;the&nbsp;desired&nbsp;width&nbsp;for&nbsp;the&nbsp;image&nbsp;region.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;dHeight&nbsp;the&nbsp;desired&nbsp;height&nbsp;for&nbsp;the&nbsp;image&nbsp;region.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;DisplayThumbnailApp(PlanarImage&nbsp;image,<span class="datatype">int</span>&nbsp;dWidth,<span class="datatype">int</span>&nbsp;dHeight)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">super</span>(<span class="string">"Interactive&nbsp;Thumbnail&nbsp;Example"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Container&nbsp;contentPane&nbsp;=&nbsp;getContentPane();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Check&nbsp;whether&nbsp;we&nbsp;can&nbsp;create&nbsp;a&nbsp;thumbnail&nbsp;larger&nbsp;than&nbsp;the&nbsp;region.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;((image.getWidth()&nbsp;&lt;&nbsp;dWidth)&nbsp;||&nbsp;(image.getHeight()&nbsp;&lt;&nbsp;dHeight))  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.printf(<span class="string">"Cannot&nbsp;create&nbsp;a&nbsp;%dx%d&nbsp;region&nbsp;from&nbsp;a&nbsp;%dx%d&nbsp;image.\n"</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dWidth,dHeight,image.getWidth(),image.getHeight());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.exit(1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;First&nbsp;we&nbsp;create&nbsp;the&nbsp;instance&nbsp;of&nbsp;DisplayThumbnail&nbsp;with&nbsp;a&nbsp;0.1&nbsp;scale.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dt&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayThumbnail(image,0.075f,dWidth,dHeight);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;must&nbsp;register&nbsp;mouse&nbsp;motion&nbsp;listeners&nbsp;to&nbsp;it&nbsp;!  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dt.addMouseMotionListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;small&nbsp;panel&nbsp;with&nbsp;the&nbsp;labels.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;world&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JLabel(<span class="string">"World:&nbsp;"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;view&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JLabel(<span class="string">"View:&nbsp;"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;All&nbsp;set&nbsp;?&nbsp;Let's&nbsp;work&nbsp;with&nbsp;the&nbsp;layout&nbsp;then.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;contentPane.add(dt,BorderLayout.CENTER);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;panel&nbsp;for&nbsp;the&nbsp;labels.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JPanel&nbsp;cp&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JPanel(<span class="specialword">new</span>&nbsp;GridLayout(1,2));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;cp.add(world);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;cp.add(view);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;contentPane.add(cp,BorderLayout.SOUTH);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;closing&nbsp;operation&nbsp;so&nbsp;the&nbsp;application&nbsp;is&nbsp;finished.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Don't&nbsp;let&nbsp;the&nbsp;user&nbsp;resize&nbsp;the&nbsp;thumbnail&nbsp;window.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setResizable(<span class="specialword">false</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pack();&nbsp;<span class="comment">//&nbsp;Set&nbsp;an&nbsp;adequated&nbsp;size&nbsp;for&nbsp;the&nbsp;frame  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setVisible(<span class="specialword">true</span>);&nbsp;<span class="comment">//&nbsp;Show&nbsp;the&nbsp;frame.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Now&nbsp;we&nbsp;create&nbsp;the&nbsp;instance&nbsp;of&nbsp;DisplayJAI&nbsp;to&nbsp;show&nbsp;the&nbsp;region&nbsp;corresponding&nbsp;to&nbsp;the&nbsp;viewport.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;It&nbsp;will&nbsp;be&nbsp;displayed&nbsp;in&nbsp;a&nbsp;separate&nbsp;JFrame,&nbsp;also&nbsp;created&nbsp;here.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAI(dt.getImage());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JFrame&nbsp;f&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JFrame(<span class="string">"Thumbnail&nbsp;Region"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;f.add(dj);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;f.setVisible(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;f.pack();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;called&nbsp;when&nbsp;we&nbsp;drag&nbsp;the&nbsp;mouse&nbsp;over&nbsp;the&nbsp;thumbnail.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseDragged(MouseEvent&nbsp;e)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Change&nbsp;the&nbsp;image&nbsp;on&nbsp;the&nbsp;DisplayJAI&nbsp;component&nbsp;to&nbsp;correspond&nbsp;to&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;viewport&nbsp;on&nbsp;the&nbsp;thumbnail.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dj.set(dt.getImage());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Gets&nbsp;some&nbsp;information&nbsp;about&nbsp;the&nbsp;viewport&nbsp;and&nbsp;cropped&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Rectangle&nbsp;crop&nbsp;=&nbsp;dt.getCroppedImageBounds();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Rectangle&nbsp;viewp&nbsp;=&nbsp;dt.getViewportBounds();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Change&nbsp;the&nbsp;labels'&nbsp;contents&nbsp;with&nbsp;this&nbsp;information.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;world.setText(<span class="string">"World:&nbsp;"</span>+crop.x+<span class="string">","</span>+crop.y+<span class="string">"&nbsp;("</span>+crop.width+<span class="string">"x"</span>+crop.height+<span class="string">")"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;view.setText(<span class="string">"View:&nbsp;"</span>+viewp.x+<span class="string">","</span>+viewp.y+<span class="string">"&nbsp;("</span>+viewp.width+<span class="string">"x"</span>+viewp.height+<span class="string">")"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;is&nbsp;here&nbsp;just&nbsp;to&nbsp;keep&nbsp;the&nbsp;MouseMotionListener&nbsp;interface&nbsp;happy.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseMoved(MouseEvent&nbsp;e)&nbsp;{&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point,&nbsp;which&nbsp;will&nbsp;load&nbsp;the&nbsp;image&nbsp;passed&nbsp;as&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;command-line&nbsp;argument&nbsp;and&nbsp;create&nbsp;an&nbsp;instance&nbsp;of&nbsp;the&nbsp;application.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;image&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,&nbsp;args[0]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;DisplayThumbnailApp(image,640,640);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>Some screenshots of the <tt>DisplayThumbnailApp</tt> application are shown below. The first shows the application displaying
the Iizuka scanned map image (please see the chapter <a href="9120-datasets-glimages.jsp">Gray Level Images</a>), the first screenshot
being the thumbnail and the second the image region display window.</p>

<a name="imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnailsscreenshotofthettdisplaythumbnailappttapplicationfirstexamplethumbnail">&nbsp;</a><a href="Resources/Screenshots/DisplayThumbnailApp1t.png"><img class="figure" src="Resources/Screenshots/DisplayThumbnailApp1t_icon.jpg" border=0 alt="Screenshot of the <tt>DisplayThumbnailApp</tt> application (first example, thumbnail)."></a>
<p class="caption">Screenshot of the <tt>DisplayThumbnailApp</tt> application (first example, thumbnail).<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>


<a name="imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnailsscreenshotofthettdisplaythumbnailappttapplicationfirstexampleimageregioncorrespondingtotheselectedregiononthethumbnail">&nbsp;</a><img class="figure" src="Resources/Screenshots/DisplayThumbnailApp1i.png" border=0 alt="Screenshot of the <tt>DisplayThumbnailApp</tt> application (first example, image region corresponding to the selected region on the thumbnail)."><p class="caption">Screenshot of the <tt>DisplayThumbnailApp</tt> application (first example, image region corresponding to the selected region on the thumbnail).</p>
<div class="spacer">&nbsp;</div>


<p>The next screenshots shows the <tt>DisplayThumbnailApp</tt> application displaying the São José dos Campos satellite image
 (please see the chapter <a href="9100-datasets-colorimages.jsp">Color Images</a>). The first screenshot
shows the thumbnail and the second the image region display window. Note that since the original image is tiled, the
thumbnail show a yellow grid corresponding to the tiles. For this example the scale parameter (passed to the constructor of the class 
<tt>DisplayThumbnail</tt>) was set to 0.2.</p>

<a name="imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnailsscreenshotofthettdisplaythumbnailappttapplicationsecondexamplethumbnail">&nbsp;</a><img class="figure" src="Resources/Screenshots/DisplayThumbnailApp2t.png" border=0 alt="Screenshot of the <tt>DisplayThumbnailApp</tt> application (second example, thumbnail)."><p class="caption">Screenshot of the <tt>DisplayThumbnailApp</tt> application (second example, thumbnail).</p>
<div class="spacer">&nbsp;</div>


<a name="imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnailsscreenshotofthettdisplaythumbnailappttapplicationsecondexampleimageregioncorrespondingtotheselectedregiononthethumbnail">&nbsp;</a><img class="figure" src="Resources/Screenshots/DisplayThumbnailApp2i.png" border=0 alt="Screenshot of the <tt>DisplayThumbnailApp</tt> application (second example, image region corresponding to the selected region on the thumbnail)."><p class="caption">Screenshot of the <tt>DisplayThumbnailApp</tt> application (second example, image region corresponding to the selected region on the thumbnail).</p>
<div class="spacer">&nbsp;</div>

 
 




<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="2060-display-extendingdisplayjai.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="2060-display-extendingdisplayjai.jsp">Extending the <tt>DisplayJAI</tt> class</a></td><td class="navigation1"><a href="2100-display-multipleimages.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="2100-display-multipleimages.jsp">Displaying Multiple Images</a></td><td class="navigation0"><a href="2120-display-thumbnail.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="2120-display-thumbnail.jsp">Displaying Interactive Thumbnails</a></td><td class="navigation1"><a href="2200-display-surrogate.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="2200-display-surrogate.jsp">Using Surrogate Images</a></td><td class="navigation2"><a href="2280-display-volume.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="2280-display-volume.jsp">Displaying Volume (Multiband) Images</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20151129073046/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20151129073046/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20151129073046/https://ssl." : "/web/20151129073046/http://www.");
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
     FILE ARCHIVED ON 7:30:46 Nov 29, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 0:59:16 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
