


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app1.us.archive.org";archive_analytics.values.server_ms=219;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/2200-display-surrogate.jsp";

var firstYear = 1996;
var displayDay = "14";
var displayMonth = "Dec";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/2200-display-surrogate.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20151214020027" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20131208165508/http://www.lac.inpe.br/JIPCookbook/2200-display-surrogate.jsp" title="8 Dec 2013">DEC</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 2:00:27 Dec 14, 2015">DEC</td>
		<td class="f" nowrap="nowrap">
		
		    Jan
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131208165508/http://www.lac.inpe.br/JIPCookbook/2200-display-surrogate.jsp" title="16:55:08 Dec 8, 2013"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 2:00:27 Dec 14, 2015">14</td>
	       <td class="f" nowrap="nowrap">
               
                   <img src="/static/images/toolbar/wm_tb_nxt_off.png" alt="Next capture" width="14" height="16" border="0"/>
               
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131208165508/http://www.lac.inpe.br/JIPCookbook/2200-display-surrogate.jsp" title="8 Dec 2013"><strong>2013</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 2:00:27 Dec 14, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
                   2016
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20151214020027*/http://www.lac.inpe.br/JIPCookbook/2200-display-surrogate.jsp" title="See a list of every capture for this URL">13 captures</a>
           <div class="r" title="Timespan for captures of this URL">16 Jul 10 - 14 Dec 15</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000110000_2011:-1:101010101010_2012:-1:100100000100_2013:-1:000000000001_2014:-1:000000000000_2015:11:000000000001_2016:-1:000000000000_2017:-1:000000000000" />
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
<a href="/web/20151214020027/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20151214020027/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">Using Surrogate Images</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagesbasicsurrogateimagecomponent">Basic Surrogate Image Component</a>
</div>
<div class="toc3"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagessurrogateimagecomponentwithlookuptablesluts">Surrogate Image Component with Look-Up Tables (LUTs)</a>
</div>
</div>

<p class="section"><a name="imagedisplayusingsurrogateimagesintroduction"></a>Introduction</p>

<p>Images can have pixels with values outside of the 0-255 (byte) range -- for example, digital elevation models (DEM) can be represented 
as digital images where the pixels' values are proportional to the elevation of the region covered by the pixel. Other applications may also
use non-byte images (even with negative and/or floating-point values). Some sample non-byte images can be seen in the chapter 
<a href="9130-datasets-nonbyteimages.jsp">Non-byte Images</a>.</p>

<p>Non-byte images cannot be displayed in the same way as images with pixels on the 0-255 range due to limitations in display hardware. 
In order to display them we can use <i>surrogate images</i> -- images where the original pixels' values are mapped into the 0-255 range. 
The original data is preserved so we can associate and display the original values with the surrogate pixels. 
</p>

<p>To create the surrogate image we first calculate the minimum and maximum pixel values in the original image.
For each pixel <I>i</I> in the original image we calculate its surrogate pixel as <i>255*(i-min)/(max-min)</i>, which ensures that the
surrogate image pixel's values will be on the range (0-255).</p>

<p>The rest of this chapter shows some simple implementations of surrogate image display components.</p>




<p class="section"><a name="imagedisplayusingsurrogateimagesbasicsurrogateimagecomponent"></a>Basic Surrogate Image Component</p>

<p>An image display component that automatically creates a surrogate image and uses it for display is shown in class <tt>DisplayNBImage</tt> below.
It extends the <tt>DisplayJAI</tt> class, and its constructor creates the surrogate image. The component is also able to
return the original value from the pixel under the mouse cursor. 
</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplayusingsurrogateimagesbasicsurrogateimagecomponentdisplaynbimagejava">&nbsp;</a><a href="/web/20151214020027/http://150.163.105.39:8080/JIPCookbook//Code/display/surrogate/DisplayNBImage.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DisplayNBImage.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.surrogate;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseEvent;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseMotionListener;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.DataBuffer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.RenderedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.renderable.ParameterBlock;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.RenderedOp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.iterator.RandomIter;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.iterator.RandomIterFactory;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;shows&nbsp;how&nbsp;to&nbsp;use&nbsp;the&nbsp;DisplayJAI&nbsp;class&nbsp;to&nbsp;display&nbsp;floating-point&nbsp;or&nbsp;integer&nbsp;(i.e.,&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;non-byte)&nbsp;images.&nbsp;We&nbsp;will&nbsp;read&nbsp;the&nbsp;non-byte&nbsp;image&nbsp;and&nbsp;use&nbsp;a&nbsp;surrogate&nbsp;byte&nbsp;image&nbsp;for&nbsp;the&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;real&nbsp;display.&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;The&nbsp;surrogate&nbsp;byte&nbsp;image&nbsp;will&nbsp;have&nbsp;its&nbsp;values&nbsp;normalized&nbsp;to&nbsp;be&nbsp;in&nbsp;the&nbsp;0-255&nbsp;interval.&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;The&nbsp;original&nbsp;image&nbsp;will&nbsp;be&nbsp;used&nbsp;to&nbsp;get&nbsp;the&nbsp;data&nbsp;from&nbsp;it.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;The&nbsp;algorithm&nbsp;to&nbsp;rescale&nbsp;the&nbsp;image&nbsp;pixels&nbsp;gray&nbsp;levels&nbsp;so&nbsp;they&nbsp;will&nbsp;fit&nbsp;on&nbsp;a&nbsp;byte&nbsp;is&nbsp;very&nbsp;simple,&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;and&nbsp;probably&nbsp;won't&nbsp;work&nbsp;for&nbsp;all&nbsp;cases&nbsp;-&nbsp;I&nbsp;assume&nbsp;that&nbsp;the&nbsp;max&nbsp;and&nbsp;min&nbsp;values&nbsp;used&nbsp;for&nbsp;rescaling&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;pixels&nbsp;are&nbsp;to&nbsp;be&nbsp;extracted&nbsp;from&nbsp;all&nbsp;bands,&nbsp;and&nbsp;each&nbsp;band&nbsp;will&nbsp;be&nbsp;adjusted&nbsp;by&nbsp;the&nbsp;same&nbsp;max&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;and&nbsp;min&nbsp;values.&nbsp;In&nbsp;other&nbsp;words,&nbsp;the&nbsp;rescaling&nbsp;is&nbsp;not&nbsp;done&nbsp;band&nbsp;by&nbsp;band.&nbsp;Since&nbsp;I&nbsp;didn't&nbsp;had&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;chance&nbsp;to&nbsp;work&nbsp;with&nbsp;multiband&nbsp;floating-point&nbsp;images,&nbsp;I&nbsp;cannot&nbsp;check&nbsp;whether&nbsp;this&nbsp;approach&nbsp;is&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;better&nbsp;or&nbsp;worse&nbsp;than&nbsp;rescaling&nbsp;band&nbsp;by&nbsp;band.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;We'll&nbsp;implement&nbsp;the&nbsp;MouseMotionListener&nbsp;interface&nbsp;to&nbsp;capture&nbsp;the&nbsp;mouse's  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;movement&nbsp;in&nbsp;order&nbsp;to&nbsp;allow&nbsp;the&nbsp;display&nbsp;the&nbsp;values&nbsp;of&nbsp;the&nbsp;pixel&nbsp;under&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;pointer&nbsp;in&nbsp;a&nbsp;JLabel.&nbsp;The&nbsp;display&nbsp;itself&nbsp;must&nbsp;be&nbsp;done&nbsp;in&nbsp;other&nbsp;class.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DisplayNBImage&nbsp;<span class="classword">extends</span>&nbsp;DisplayJAI&nbsp;<span class="classword">implements</span>&nbsp;MouseMotionListener  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;StringBuffer&nbsp;pixelInfo;&nbsp;<span class="comment">//&nbsp;The&nbsp;pixel&nbsp;information&nbsp;(formatted&nbsp;as&nbsp;a&nbsp;StringBuffer).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;<span class="datatype">double</span>[]&nbsp;pixelValues;&nbsp;<span class="comment">//&nbsp;The&nbsp;pixel&nbsp;values&nbsp;(bands)&nbsp;as&nbsp;an&nbsp;array&nbsp;of&nbsp;doubles.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;RandomIter&nbsp;readIterator;&nbsp;<span class="comment">//&nbsp;A&nbsp;RandomIter&nbsp;that&nbsp;allow&nbsp;us&nbsp;to&nbsp;get&nbsp;the&nbsp;data&nbsp;of&nbsp;a&nbsp;single&nbsp;pixel.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;PlanarImage&nbsp;surrogateImage;&nbsp;<span class="comment">//&nbsp;The&nbsp;surrogate&nbsp;byte&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;<span class="datatype">int</span>&nbsp;width,height;&nbsp;<span class="comment">//&nbsp;The&nbsp;dimensions&nbsp;of&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;<span class="datatype">double</span>&nbsp;minValue,maxValue;&nbsp;<span class="comment">//&nbsp;The&nbsp;range&nbsp;of&nbsp;the&nbsp;image&nbsp;values.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor&nbsp;of&nbsp;the&nbsp;class,&nbsp;which&nbsp;creates&nbsp;the&nbsp;arrays&nbsp;and&nbsp;instances&nbsp;needed  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;to&nbsp;obtain&nbsp;the&nbsp;image&nbsp;data&nbsp;and&nbsp;registers&nbsp;the&nbsp;class&nbsp;to&nbsp;listen&nbsp;to&nbsp;mouse&nbsp;motion&nbsp;events.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;image&nbsp;a&nbsp;RenderedImage&nbsp;for&nbsp;display  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;DisplayNBImage(RenderedImage&nbsp;image)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;iterator.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;readIterator&nbsp;=&nbsp;RandomIterFactory.create(image,&nbsp;<span class="specialword">null</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;some&nbsp;data&nbsp;about&nbsp;the&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;width&nbsp;=&nbsp;image.getWidth();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;height&nbsp;=&nbsp;image.getHeight();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;an&nbsp;array&nbsp;to&nbsp;receive&nbsp;the&nbsp;pixels&nbsp;values&nbsp;with&nbsp;the&nbsp;appropriate&nbsp;number&nbsp;of&nbsp;bands  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pixelValues&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">double</span>[image.getSampleModel().getNumBands()];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Which&nbsp;are&nbsp;the&nbsp;max&nbsp;and&nbsp;min&nbsp;of&nbsp;the&nbsp;image?&nbsp;We&nbsp;need&nbsp;to&nbsp;know&nbsp;to&nbsp;create&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;surrogate&nbsp;image.&nbsp;Let's&nbsp;use&nbsp;the&nbsp;extrema&nbsp;operator&nbsp;to&nbsp;get&nbsp;them.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pbMaxMin&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbMaxMin.addSource(image);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;RenderedOp&nbsp;extrema&nbsp;=&nbsp;JAI.create(<span class="string">"extrema"</span>,&nbsp;pbMaxMin);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Must&nbsp;get&nbsp;the&nbsp;extrema&nbsp;of&nbsp;all&nbsp;bands&nbsp;!  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>[]&nbsp;allMins&nbsp;=&nbsp;(<span class="datatype">double</span>[])extrema.getProperty(<span class="string">"minimum"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>[]&nbsp;allMaxs&nbsp;=&nbsp;(<span class="datatype">double</span>[])extrema.getProperty(<span class="string">"maximum"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;minValue&nbsp;=&nbsp;allMins[0];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;maxValue&nbsp;=&nbsp;allMaxs[0];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;v=1;v&lt;allMins.length;v++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(allMins[v]&nbsp;&lt;&nbsp;minValue)&nbsp;minValue&nbsp;=&nbsp;allMins[v];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(allMaxs[v]&nbsp;&gt;&nbsp;maxValue)&nbsp;maxValue&nbsp;=&nbsp;allMaxs[v];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Rescale&nbsp;the&nbsp;image&nbsp;with&nbsp;the&nbsp;parameters  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>[]&nbsp;subtractThis&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">double</span>[1];&nbsp;subtractThis[0]&nbsp;=&nbsp;minValue;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>[]&nbsp;multiplyBy&nbsp;&nbsp;&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">double</span>[1];&nbsp;multiplyBy[0]&nbsp;&nbsp;&nbsp;=&nbsp;255./(maxValue-minValue);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Now&nbsp;we&nbsp;can&nbsp;rescale&nbsp;the&nbsp;pixels'&nbsp;values:  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pbSub&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbSub.addSource(image);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbSub.add(subtractThis);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;surrogateImage&nbsp;=&nbsp;(PlanarImage)JAI.create(<span class="string">"subtractconst"</span>,pbSub,<span class="specialword">null</span>);&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pbMult&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbMult.addSource(surrogateImage);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbMult.add(multiplyBy);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;surrogateImage&nbsp;=&nbsp;(PlanarImage)JAI.create(<span class="string">"multiplyconst"</span>,pbMult,<span class="specialword">null</span>);&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;convert&nbsp;the&nbsp;data&nbsp;type&nbsp;for&nbsp;displaying.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pbConvert&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbConvert.addSource(surrogateImage);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbConvert.add(DataBuffer.TYPE_BYTE);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;surrogateImage&nbsp;=&nbsp;JAI.create(<span class="string">"format"</span>,&nbsp;pbConvert);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;set(surrogateImage);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;StringBuffer&nbsp;instance&nbsp;for&nbsp;the&nbsp;pixel&nbsp;information.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;StringBuffer(50);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Registers&nbsp;the&nbsp;mouse&nbsp;motion&nbsp;listener.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;addMouseMotionListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="comment">//&nbsp;end&nbsp;constructor  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;does&nbsp;not&nbsp;do&nbsp;anything,&nbsp;it&nbsp;is&nbsp;here&nbsp;just&nbsp;to&nbsp;keep&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;MouseMotionListener&nbsp;interface&nbsp;happy.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;me&nbsp;the&nbsp;mouse&nbsp;event&nbsp;that&nbsp;caused&nbsp;the&nbsp;execution&nbsp;of&nbsp;this&nbsp;method.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseDragged(MouseEvent&nbsp;e)&nbsp;{&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;called&nbsp;when&nbsp;the&nbsp;mouse&nbsp;is&nbsp;moved&nbsp;over&nbsp;the&nbsp;image&nbsp;being&nbsp;displayed.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;me&nbsp;the&nbsp;mouse&nbsp;event&nbsp;that&nbsp;caused&nbsp;the&nbsp;execution&nbsp;of&nbsp;this&nbsp;method.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseMoved(MouseEvent&nbsp;me)&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.setLength(0);&nbsp;<span class="comment">//&nbsp;clear&nbsp;the&nbsp;StringBuffer  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;x&nbsp;=&nbsp;me.getX();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;y&nbsp;=&nbsp;me.getY();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;((x&nbsp;&gt;=&nbsp;width)&nbsp;||&nbsp;(y&nbsp;&gt;=&nbsp;height))&nbsp;<span class="comment">//&nbsp;Consider&nbsp;only&nbsp;pixels&nbsp;within&nbsp;image&nbsp;bounds.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.append(<span class="string">"No&nbsp;data!"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.setLength(0);&nbsp;<span class="comment">//&nbsp;Clear&nbsp;the&nbsp;StringBuffer  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.append(<span class="string">"(Original&nbsp;image&nbsp;data)&nbsp;"</span>+x+<span class="string">","</span>+y+<span class="string">":&nbsp;"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;readIterator.getPixel(x,y,pixelValues);&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;pixel  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;b=0;b&lt;pixelValues.length;b++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo.append(pixelValues[b]+<span class="string">","</span>);&nbsp;<span class="comment">//&nbsp;Append&nbsp;to&nbsp;the&nbsp;StringBuffer  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pixelInfo&nbsp;=&nbsp;pixelInfo.deleteCharAt(pixelInfo.length()-1);&nbsp;<span class="comment">//&nbsp;Erase&nbsp;comma  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="comment">//&nbsp;end&nbsp;of&nbsp;method&nbsp;mouseMoved  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;surrogate&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@returns&nbsp;the&nbsp;surrogate&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;PlanarImage&nbsp;getSurrogateImage()&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;surrogateImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;138&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;139&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;140&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;allows&nbsp;external&nbsp;classes&nbsp;access&nbsp;to&nbsp;the&nbsp;pixel&nbsp;info&nbsp;which&nbsp;was  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;141&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;obtained&nbsp;in&nbsp;the&nbsp;mouseMoved&nbsp;method.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;142&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;pixel&nbsp;information,&nbsp;formatted&nbsp;as&nbsp;a&nbsp;string  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;143&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;144&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;String&nbsp;getPixelInfo()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;145&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;146&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;pixelInfo.toString();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;147&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;148&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;149&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;150&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;minimum&nbsp;value&nbsp;of&nbsp;the&nbsp;image&nbsp;data.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;151&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;minimum&nbsp;data&nbsp;value&nbsp;of&nbsp;the&nbsp;image&nbsp;data.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;152&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;153&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">double</span>&nbsp;getMinValue()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;154&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;155&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;minValue;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;156&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;157&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;158&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;159&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;maximum&nbsp;value&nbsp;of&nbsp;the&nbsp;image&nbsp;data.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;160&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;maximum&nbsp;data&nbsp;value&nbsp;of&nbsp;the&nbsp;image&nbsp;data.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;161&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;162&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">double</span>&nbsp;getMaxValue()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;163&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;164&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;maxValue;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;165&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;166&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;167&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>An example of usage of class <tt>DisplayNBImage</tt> is shown in class <tt>DisplayNBImageApp</tt> below. This application
creates a simple user interface with an instance of <tt>DisplayNBImage</tt> and a <tt>JLabel</tt> which is used to display the
real pixel values when we move the mouse over the surrogate image.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplayusingsurrogateimagesbasicsurrogateimagecomponentdisplaynbimageappjava">&nbsp;</a><a href="/web/20151214020027/http://150.163.105.39:8080/JIPCookbook//Code/display/surrogate/DisplayNBImageApp.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DisplayNBImageApp.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.surrogate;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.BorderLayout;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseEvent;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseListener;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseMotionListener;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JLabel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JOptionPane;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JScrollPane;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;display.surrogate.DisplayNBImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;uses&nbsp;the&nbsp;DisplayNBImage&nbsp;component&nbsp;in&nbsp;an&nbsp;application.&nbsp;We&nbsp;also&nbsp;allow&nbsp;the&nbsp;user  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;to&nbsp;save&nbsp;the&nbsp;surrogate&nbsp;image&nbsp;on&nbsp;the&nbsp;DisplayNBImage&nbsp;component.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DisplayNBImageApp&nbsp;<span class="classword">extends</span>&nbsp;JFrame&nbsp;<span class="classword">implements</span>&nbsp;MouseListener,&nbsp;MouseMotionListener  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;DisplayNBImage&nbsp;dd;&nbsp;<span class="comment">//&nbsp;An&nbsp;instance&nbsp;of&nbsp;the&nbsp;DisplayNBImage&nbsp;component  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JLabel&nbsp;label;&nbsp;<span class="comment">//&nbsp;The&nbsp;label&nbsp;used&nbsp;to&nbsp;display&nbsp;information&nbsp;about&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor&nbsp;for&nbsp;the&nbsp;class,&nbsp;which&nbsp;will&nbsp;create&nbsp;the&nbsp;user&nbsp;interface&nbsp;and  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;register&nbsp;the&nbsp;mouse&nbsp;motion&nbsp;events.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;DisplayNBImageApp(PlanarImage&nbsp;image)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setTitle(<span class="string">"Move&nbsp;the&nbsp;mouse&nbsp;over&nbsp;the&nbsp;image&nbsp;!"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;getContentPane().setLayout(<span class="specialword">new</span>&nbsp;BorderLayout());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;An&nbsp;instance&nbsp;of&nbsp;DisplayNBImage,&nbsp;which&nbsp;will&nbsp;contain&nbsp;the&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dd&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayNBImage(image);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;getContentPane().add(<span class="specialword">new</span>&nbsp;JScrollPane(dd),&nbsp;BorderLayout.CENTER);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;a&nbsp;JLabel&nbsp;so&nbsp;we&nbsp;can&nbsp;see&nbsp;the&nbsp;original&nbsp;DEMs&nbsp;values&nbsp;under&nbsp;the&nbsp;mouse&nbsp;cursor.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;label&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JLabel(<span class="string">"---"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;getContentPane().add(label,&nbsp;BorderLayout.SOUTH);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;the&nbsp;event&nbsp;registry.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dd.addMouseMotionListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dd.addMouseListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;closing&nbsp;operation&nbsp;so&nbsp;the&nbsp;application&nbsp;is&nbsp;finished.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pack();&nbsp;<span class="comment">//&nbsp;adjust&nbsp;the&nbsp;frame&nbsp;size&nbsp;using&nbsp;preferred&nbsp;dimensions.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setVisible(<span class="specialword">true</span>);&nbsp;<span class="comment">//&nbsp;show&nbsp;the&nbsp;frame.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;not&nbsp;do&nbsp;anything&nbsp;-&nbsp;it&nbsp;is&nbsp;here&nbsp;just&nbsp;to&nbsp;keep&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;MouseMotionListener&nbsp;interface&nbsp;happy.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseDragged(MouseEvent&nbsp;e)&nbsp;{&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;executed&nbsp;when&nbsp;the&nbsp;mouse&nbsp;is&nbsp;moved&nbsp;over&nbsp;the&nbsp;image&nbsp;display&nbsp;component.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;e&nbsp;the&nbsp;mouse&nbsp;event  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseMoved(MouseEvent&nbsp;e)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;label.setText(dd.getPixelInfo());&nbsp;<span class="comment">//&nbsp;just&nbsp;update&nbsp;the&nbsp;label&nbsp;with&nbsp;the&nbsp;original&nbsp;image&nbsp;data.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;allows&nbsp;the&nbsp;saving&nbsp;of&nbsp;the&nbsp;surrogate&nbsp;image&nbsp;on&nbsp;the&nbsp;DisplayNBImage&nbsp;component.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseClicked(MouseEvent&nbsp;e)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;fname&nbsp;=&nbsp;JOptionPane.showInputDialog(<span class="string">"Enter&nbsp;the&nbsp;image&nbsp;file&nbsp;name&nbsp;(use&nbsp;.png&nbsp;as&nbsp;extension)"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(fname&nbsp;==&nbsp;<span class="specialword">null</span>)&nbsp;<span class="controlword">return</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;sImage&nbsp;=&nbsp;dd.getSurrogateImage();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Save&nbsp;the&nbsp;image&nbsp;on&nbsp;a&nbsp;file.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JAI.create(<span class="string">"filestore"</span>,&nbsp;sImage,&nbsp;fname,&nbsp;<span class="string">"PNG"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;is&nbsp;here&nbsp;just&nbsp;to&nbsp;keep&nbsp;the&nbsp;MouseListener&nbsp;interface&nbsp;happy.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mousePressed(MouseEvent&nbsp;e)&nbsp;{&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;is&nbsp;here&nbsp;just&nbsp;to&nbsp;keep&nbsp;the&nbsp;MouseListener&nbsp;interface&nbsp;happy.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseReleased(MouseEvent&nbsp;e)&nbsp;{&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;is&nbsp;here&nbsp;just&nbsp;to&nbsp;keep&nbsp;the&nbsp;MouseListener&nbsp;interface&nbsp;happy.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseEntered(MouseEvent&nbsp;e)&nbsp;{&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;is&nbsp;here&nbsp;just&nbsp;to&nbsp;keep&nbsp;the&nbsp;MouseListener&nbsp;interface&nbsp;happy.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseExited(MouseEvent&nbsp;e)&nbsp;{&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;args&nbsp;the&nbsp;command&nbsp;line&nbsp;arguments.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;image&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,&nbsp;args[0]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;DisplayNBImageApp(image);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>A screenshot of the application in class <tt>DisplayNBImageApp</tt> is shown below.</p>

<a name="imagedisplayusingsurrogateimagesbasicsurrogateimagecomponentscreenshotofthettdisplaynbimagettapplication">&nbsp;</a><img class="figure" src="Resources/Screenshots/DisplayNBImageApp.png" border=0 alt="Screenshot of the <tt>DisplayNBImage</tt> application."><p class="caption">Screenshot of the <tt>DisplayNBImage</tt> application.</p>
<div class="spacer">&nbsp;</div>




<p class="section"><a name="imagedisplayusingsurrogateimagessurrogateimagecomponentwithlookuptablesluts"></a>Surrogate Image Component with Look-Up Tables (LUTs)</p>


<p>Surrogate images are just representations of the original images. In order to enhance visualization we can also use
colors for its display (if the original image has only one band). Since the surrogate image has 256 levels, we can use up to 256 different
colors in a <i>look-up table</i>, which returns a RGB value that will be assigned to a single (byte) pixel.</p>

<p>An example of this technique is shown below in class <tt>DisplayNBImageWithLUTs</tt>, which implements a component to
display surrogate images with one of several possible look-up tables (which are arrays of <tt>256x3</tt> values of the type <tt>short</tt>).
The class extends <tt>DisplayNBImage</tt>, and its method <tt>setLUT</tt> does all the work, recreating the surrogate image with a new indexed
color model.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplayusingsurrogateimagessurrogateimagecomponentwithlookuptableslutsdisplaynbimagewithlutsjava">&nbsp;</a><a href="/web/20151214020027/http://150.163.105.39:8080/JIPCookbook//Code/display/surrogate/DisplayNBImageWithLUTs.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DisplayNBImageWithLUTs.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.surrogate;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.RenderingHints;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.ColorModel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.IndexColorModel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.RenderedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.renderable.ParameterBlock;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.HashMap;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.ImageLayout;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;extends&nbsp;the&nbsp;DisplayNBImage&nbsp;class&nbsp;to&nbsp;allow&nbsp;the&nbsp;setting&nbsp;of&nbsp;a&nbsp;false-color  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;LUT&nbsp;to&nbsp;the&nbsp;displayed&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DisplayNBImageWithLUTs&nbsp;<span class="classword">extends</span>&nbsp;DisplayNBImage  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor&nbsp;for&nbsp;the&nbsp;class,&nbsp;which&nbsp;calls&nbsp;the&nbsp;constructor&nbsp;for&nbsp;its&nbsp;ancestral&nbsp;class.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;DisplayNBImageWithLUTs(RenderedImage&nbsp;image)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">super</span>(image);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;sets&nbsp;a&nbsp;look-up-table&nbsp;for&nbsp;the&nbsp;surrogate&nbsp;image,&nbsp;converting&nbsp;it&nbsp;to&nbsp;an&nbsp;image&nbsp;with&nbsp;a  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;color&nbsp;model.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;setLUT(<span class="datatype">short</span>[][]&nbsp;colors)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Now&nbsp;we&nbsp;convert&nbsp;the&nbsp;color&nbsp;array&nbsp;(which&nbsp;data&nbsp;type&nbsp;is&nbsp;short)&nbsp;into&nbsp;three  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;separate&nbsp;byte&nbsp;arrays.&nbsp;We&nbsp;always&nbsp;assume&nbsp;that&nbsp;the&nbsp;LUT&nbsp;has&nbsp;256&nbsp;entries.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[]&nbsp;reds&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[256];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[]&nbsp;greens&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[256];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[]&nbsp;blues&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[256];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;reds[i]&nbsp;=&nbsp;(<span class="datatype">byte</span>)colors[i][0];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;greens[i]&nbsp;=&nbsp;(<span class="datatype">byte</span>)colors[i][1];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;blues[i]&nbsp;=&nbsp;(<span class="datatype">byte</span>)colors[i][2];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;an&nbsp;IndexColorModel&nbsp;using&nbsp;the&nbsp;arrays&nbsp;above.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ColorModel&nbsp;colorModel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;IndexColorModel(8,256,reds,greens,blues);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;To&nbsp;change&nbsp;the&nbsp;color&nbsp;model&nbsp;of&nbsp;the&nbsp;surrogate&nbsp;image,&nbsp;we&nbsp;need&nbsp;to&nbsp;create&nbsp;a&nbsp;new  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;image&nbsp;layout&nbsp;based&nbsp;on&nbsp;the&nbsp;image,&nbsp;and&nbsp;change&nbsp;the&nbsp;layout's&nbsp;color&nbsp;model.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageLayout&nbsp;layout&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ImageLayout(surrogateImage);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;layout.setColorModel(colorModel);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;In&nbsp;order&nbsp;to&nbsp;change&nbsp;the&nbsp;image&nbsp;layout&nbsp;we&nbsp;need&nbsp;to&nbsp;set&nbsp;its&nbsp;rendering&nbsp;hints.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;HashMap&lt;RenderingHints.Key,ImageLayout&gt;&nbsp;map&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;HashMap&lt;RenderingHints.Key,ImageLayout&gt;();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;map.put(JAI.KEY_IMAGE_LAYOUT,layout);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;RenderingHints&nbsp;hints&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;RenderingHints(map);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Reformat&nbsp;the&nbsp;image&nbsp;using&nbsp;the&nbsp;above&nbsp;hints.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(surrogateImage);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;don't&nbsp;really&nbsp;want&nbsp;to&nbsp;change&nbsp;the&nbsp;original&nbsp;surrogate&nbsp;image...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;newSurrogateImage&nbsp;=&nbsp;JAI.create(<span class="string">"format"</span>,pb,hints);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;new,&nbsp;LUT-applied&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;set(newSurrogateImage);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>An example of usage of the class <tt>DisplayNBImageWithLUTs</tt> is shown below, in class <tt>DisplayNBImageWithLUTsApp</tt>. 
The application shows a surrogate image with a LUT and allows the user to change the LUT of the image. Several LUTs are created by
static methods in the class <tt>LUTFunctions</tt>.
<br><b>Note:</b> There are several other ways to create the user interface, the code shows one that is easier to understand but
quite extense.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplayusingsurrogateimagessurrogateimagecomponentwithlookuptableslutsdisplaynbimagewithlutsappjava">&nbsp;</a><a href="/web/20151214020027/http://150.163.105.39:8080/JIPCookbook//Code/display/surrogate/DisplayNBImageWithLUTsApp.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DisplayNBImageWithLUTsApp.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.surrogate;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.BorderLayout;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.GridLayout;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.ActionEvent;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.ActionListener;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseEvent;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.MouseMotionListener;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JButton;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JLabel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JPanel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JScrollPane;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;shows&nbsp;how&nbsp;one&nbsp;can&nbsp;display&nbsp;and&nbsp;manipulate&nbsp;an&nbsp;instance&nbsp;of&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;DisplayNBImageWithLUT&nbsp;class.&nbsp;Some&nbsp;buttons&nbsp;on&nbsp;the&nbsp;user&nbsp;interface&nbsp;allows&nbsp;the&nbsp;change  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;of&nbsp;the&nbsp;LUT&nbsp;of&nbsp;the&nbsp;image&nbsp;being&nbsp;displayed.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DisplayNBImageWithLUTsApp&nbsp;<span class="classword">extends</span>&nbsp;JFrame&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="classword">implements</span>&nbsp;MouseMotionListener,&nbsp;ActionListener  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;DisplayNBImageWithLUTs&nbsp;dd;&nbsp;<span class="comment">//&nbsp;The&nbsp;false&nbsp;color&nbsp;(LUT)&nbsp;image&nbsp;display&nbsp;component  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JLabel&nbsp;label;&nbsp;<span class="comment">//&nbsp;The&nbsp;label&nbsp;used&nbsp;to&nbsp;display&nbsp;information&nbsp;about&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JButton[]&nbsp;lutButtons;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;String[]&nbsp;labels&nbsp;=  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Red"</span>,<span class="string">"Green"</span>,<span class="string">"Blue"</span>,<span class="string">"Cyan"</span>,<span class="string">"Yellow"</span>,<span class="string">"Magenta"</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Gray"</span>,<span class="string">"Inverted&nbsp;Gray"</span>,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"2&nbsp;Levels"</span>,<span class="string">"4&nbsp;Levels"</span>,<span class="string">"8&nbsp;Levels"</span>,<span class="string">"16&nbsp;Levels"</span>,<span class="string">"32&nbsp;Levels"</span>,<span class="string">"64&nbsp;Levels"</span>,<span class="string">"128&nbsp;Levels"</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Red-Cyan"</span>,<span class="string">"Green-Magenta"</span>,<span class="string">"Blue-Yellow"</span>,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Sin&nbsp;RGB"</span>,<span class="string">"Sin&nbsp;RBG"</span>,<span class="string">"Sin&nbsp;GRB"</span>,<span class="string">"Sin&nbsp;GBR"</span>,<span class="string">"Sin&nbsp;BRG"</span>,<span class="string">"Sin&nbsp;BGR"</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Sqrt&nbsp;RGB"</span>,<span class="string">"Sqrt&nbsp;RBG"</span>,<span class="string">"Sqrt&nbsp;GRB"</span>,<span class="string">"Sqrt&nbsp;GBR"</span>,<span class="string">"Sqrt&nbsp;BRG"</span>,<span class="string">"Sqrt&nbsp;BGR"</span>,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Hue&nbsp;RGB"</span>,<span class="string">"Hue&nbsp;RBG"</span>,<span class="string">"Hue&nbsp;GRB"</span>,<span class="string">"Hue&nbsp;GBR"</span>,<span class="string">"Hue&nbsp;BRG"</span>,<span class="string">"Hue&nbsp;BGR"</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Sin&nbsp;RGB&nbsp;(0)"</span>,<span class="string">"Sin&nbsp;RBG&nbsp;(0)"</span>,<span class="string">"Sin&nbsp;GRB&nbsp;(0)"</span>,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Sin&nbsp;GBR&nbsp;(0)"</span>,<span class="string">"Sin&nbsp;BRG&nbsp;(0)"</span>,<span class="string">"Sin&nbsp;BGR&nbsp;(0)"</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Sqrt&nbsp;RGB&nbsp;(0)"</span>,<span class="string">"Sqrt&nbsp;RBG&nbsp;(0)"</span>,<span class="string">"Sqrt&nbsp;GRB&nbsp;(0)"</span>,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Sqrt&nbsp;GBR&nbsp;(0)"</span>,<span class="string">"Sqrt&nbsp;BRG&nbsp;(0)"</span>,<span class="string">"Sqrt&nbsp;BGR&nbsp;(0)"</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Hue&nbsp;RGB&nbsp;(0)"</span>,<span class="string">"Hue&nbsp;RBG&nbsp;(0)"</span>,<span class="string">"Hue&nbsp;GRB&nbsp;(0)"</span>,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Hue&nbsp;GBR&nbsp;(0)"</span>,<span class="string">"Hue&nbsp;BRG&nbsp;(0)"</span>,<span class="string">"Hue&nbsp;BGR&nbsp;(0)"</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Red&nbsp;Saw&nbsp;2"</span>,<span class="string">"Red&nbsp;Saw&nbsp;4"</span>,<span class="string">"Red&nbsp;Saw&nbsp;8"</span>,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Green&nbsp;Saw&nbsp;2"</span>,<span class="string">"Green&nbsp;Saw&nbsp;4"</span>,<span class="string">"Green&nbsp;Saw&nbsp;8"</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Blue&nbsp;Saw&nbsp;2"</span>,<span class="string">"Blue&nbsp;Saw&nbsp;4"</span>,<span class="string">"Blue&nbsp;Saw&nbsp;8"</span>,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Red-Green&nbsp;Saw&nbsp;2"</span>,<span class="string">"Red-Green&nbsp;Saw&nbsp;4"</span>,<span class="string">"Red-Green&nbsp;Saw&nbsp;8"</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Red-Blue&nbsp;Saw&nbsp;2"</span>,<span class="string">"Red-Blue&nbsp;Saw&nbsp;4"</span>,<span class="string">"Red-Blue&nbsp;Saw&nbsp;8"</span>,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Green-Blue&nbsp;Saw&nbsp;2"</span>,<span class="string">"Green-Blue&nbsp;Saw&nbsp;4"</span>,<span class="string">"Green-Blue&nbsp;Saw&nbsp;8"</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"Random&nbsp;256"</span>,<span class="string">"Random&nbsp;32"</span>,<span class="string">"Random&nbsp;8"</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor&nbsp;for&nbsp;the&nbsp;class,&nbsp;which&nbsp;will&nbsp;create&nbsp;the&nbsp;user&nbsp;interface&nbsp;and  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;register&nbsp;the&nbsp;mouse&nbsp;motion&nbsp;events.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;DisplayNBImageWithLUTsApp(PlanarImage&nbsp;image)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setTitle(<span class="string">"Move&nbsp;the&nbsp;mouse&nbsp;over&nbsp;the&nbsp;image&nbsp;/&nbsp;Click&nbsp;on&nbsp;a&nbsp;LUT&nbsp;button&nbsp;on&nbsp;the&nbsp;right"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;getContentPane().setLayout(<span class="specialword">new</span>&nbsp;BorderLayout());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;an&nbsp;instance&nbsp;of&nbsp;DisplayNBImageWithLUTs,&nbsp;which&nbsp;will&nbsp;contain&nbsp;the&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dd&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayNBImageWithLUTs(image);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;getContentPane().add(<span class="specialword">new</span>&nbsp;JScrollPane(dd),BorderLayout.CENTER);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;a&nbsp;JLabel&nbsp;so&nbsp;we&nbsp;can&nbsp;see&nbsp;the&nbsp;original&nbsp;image&nbsp;values&nbsp;under&nbsp;the&nbsp;mouse&nbsp;cursor.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;label&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JLabel(<span class="string">"---"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;getContentPane().add(label,BorderLayout.SOUTH);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;the&nbsp;event&nbsp;registry.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;dd.addMouseMotionListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;a&nbsp;whole&nbsp;bunch&nbsp;of&nbsp;buttons&nbsp;(three&nbsp;columns)&nbsp;in&nbsp;a&nbsp;JPanel.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JPanel&nbsp;bPanel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JPanel(<span class="specialword">new</span>&nbsp;GridLayout(0,3));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lutButtons&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JButton[labels.length];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;b=0;b&lt;labels.length;b++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lutButtons[b]&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JButton(labels[b]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lutButtons[b].addActionListener(<span class="specialword">this</span>);&nbsp;bPanel.add(lutButtons[b]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;the&nbsp;button&nbsp;panel&nbsp;to&nbsp;the&nbsp;content&nbsp;pane&nbsp;of&nbsp;this&nbsp;JFrame.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;getContentPane().add(bPanel,BorderLayout.EAST);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;closing&nbsp;operation&nbsp;so&nbsp;the&nbsp;application&nbsp;is&nbsp;finished.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pack();&nbsp;<span class="comment">//&nbsp;Adjust&nbsp;the&nbsp;frame&nbsp;size&nbsp;using&nbsp;preferred&nbsp;dimensions.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setVisible(<span class="specialword">true</span>);&nbsp;<span class="comment">//&nbsp;Show&nbsp;the&nbsp;frame.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;answer&nbsp;to&nbsp;button&nbsp;clicked&nbsp;events,&nbsp;and&nbsp;change&nbsp;the&nbsp;LUT  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;on&nbsp;the&nbsp;image&nbsp;being&nbsp;displayed.&nbsp;I&nbsp;bet&nbsp;there&nbsp;is&nbsp;a&nbsp;shorter&nbsp;way&nbsp;to&nbsp;do&nbsp;this,  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;but&nbsp;it&nbsp;won't&nbsp;probably&nbsp;be&nbsp;as&nbsp;direct&nbsp;as&nbsp;the&nbsp;below.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;actionPerformed(ActionEvent&nbsp;e)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JButton&nbsp;pressed&nbsp;=&nbsp;(JButton)e.getSource();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Red"</span>))&nbsp;dd.setLUT(LUTFunctions.red());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Green"</span>))&nbsp;dd.setLUT(LUTFunctions.green());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Blue"</span>))&nbsp;dd.setLUT(LUTFunctions.blue());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Cyan"</span>))&nbsp;dd.setLUT(LUTFunctions.cyan());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Magenta"</span>))&nbsp;dd.setLUT(LUTFunctions.magenta());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Yellow"</span>))&nbsp;dd.setLUT(LUTFunctions.yellow());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Gray"</span>))&nbsp;dd.setLUT(LUTFunctions.gray());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Inverted&nbsp;Gray"</span>))&nbsp;dd.setLUT(LUTFunctions.invGray());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"2&nbsp;Levels"</span>))&nbsp;dd.setLUT(LUTFunctions.gray2levels());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"4&nbsp;Levels"</span>))&nbsp;dd.setLUT(LUTFunctions.gray4levels());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"8&nbsp;Levels"</span>))&nbsp;dd.setLUT(LUTFunctions.gray8levels());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"16&nbsp;Levels"</span>))&nbsp;dd.setLUT(LUTFunctions.gray16levels());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"32&nbsp;Levels"</span>))&nbsp;dd.setLUT(LUTFunctions.gray32levels());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"64&nbsp;Levels"</span>))&nbsp;dd.setLUT(LUTFunctions.gray64levels());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"128&nbsp;Levels"</span>))&nbsp;dd.setLUT(LUTFunctions.gray128levels());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Red-Cyan"</span>))&nbsp;dd.setLUT(LUTFunctions.red_cyan());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Green-Magenta"</span>))&nbsp;dd.setLUT(LUTFunctions.green_magenta());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Blue-Yellow"</span>))&nbsp;dd.setLUT(LUTFunctions.blue_yellow());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sin&nbsp;RGB"</span>))&nbsp;dd.setLUT(LUTFunctions.sin_rgb());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sin&nbsp;RBG"</span>))&nbsp;dd.setLUT(LUTFunctions.sin_rbg());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sin&nbsp;GRB"</span>))&nbsp;dd.setLUT(LUTFunctions.sin_grb());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sin&nbsp;GBR"</span>))&nbsp;dd.setLUT(LUTFunctions.sin_gbr());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sin&nbsp;BRG"</span>))&nbsp;dd.setLUT(LUTFunctions.sin_brg());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sin&nbsp;BGR"</span>))&nbsp;dd.setLUT(LUTFunctions.sin_bgr());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sqrt&nbsp;RGB"</span>))&nbsp;dd.setLUT(LUTFunctions.sqrt_rgb());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sqrt&nbsp;RBG"</span>))&nbsp;dd.setLUT(LUTFunctions.sqrt_rbg());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sqrt&nbsp;GRB"</span>))&nbsp;dd.setLUT(LUTFunctions.sqrt_grb());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sqrt&nbsp;GBR"</span>))&nbsp;dd.setLUT(LUTFunctions.sqrt_gbr());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sqrt&nbsp;BRG"</span>))&nbsp;dd.setLUT(LUTFunctions.sqrt_brg());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sqrt&nbsp;BGR"</span>))&nbsp;dd.setLUT(LUTFunctions.sqrt_bgr());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Hue&nbsp;RGB"</span>))&nbsp;dd.setLUT(LUTFunctions.hue_rgb());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Hue&nbsp;RBG"</span>))&nbsp;dd.setLUT(LUTFunctions.hue_rbg());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Hue&nbsp;GRB"</span>))&nbsp;dd.setLUT(LUTFunctions.hue_grb());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Hue&nbsp;GBR"</span>))&nbsp;dd.setLUT(LUTFunctions.hue_gbr());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Hue&nbsp;BRG"</span>))&nbsp;dd.setLUT(LUTFunctions.hue_brg());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Hue&nbsp;BGR"</span>))&nbsp;dd.setLUT(LUTFunctions.hue_bgr());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sin&nbsp;RGB&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.sin_rgb_0());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sin&nbsp;RBG&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.sin_rbg_0());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sin&nbsp;GRB&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.sin_grb_0());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;138&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sin&nbsp;GBR&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.sin_gbr_0());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;139&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sin&nbsp;BRG&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.sin_brg_0());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;140&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sin&nbsp;BGR&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.sin_bgr_0());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;141&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sqrt&nbsp;RGB&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.sqrt_rgb_0());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;142&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sqrt&nbsp;RBG&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.sqrt_rbg_0());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;143&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sqrt&nbsp;GRB&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.sqrt_grb_0());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;144&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sqrt&nbsp;GBR&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.sqrt_gbr_0());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;145&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sqrt&nbsp;BRG&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.sqrt_brg_0());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;146&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Sqrt&nbsp;BGR&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.sqrt_bgr_0());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;147&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Hue&nbsp;RGB&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.hue_rgb_0());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;148&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Hue&nbsp;RBG&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.hue_rbg_0());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;149&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Hue&nbsp;GRB&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.hue_grb_0());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;150&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Hue&nbsp;GBR&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.hue_gbr_0());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;151&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Hue&nbsp;BRG&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.hue_brg_0());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;152&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Hue&nbsp;BGR&nbsp;(0)"</span>))&nbsp;dd.setLUT(LUTFunctions.hue_bgr_0());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;153&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Red&nbsp;Saw&nbsp;2"</span>))&nbsp;dd.setLUT(LUTFunctions.red_saw_2());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;154&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Red&nbsp;Saw&nbsp;4"</span>))&nbsp;dd.setLUT(LUTFunctions.red_saw_4());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;155&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Red&nbsp;Saw&nbsp;8"</span>))&nbsp;dd.setLUT(LUTFunctions.red_saw_8());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;156&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Green&nbsp;Saw&nbsp;2"</span>))&nbsp;dd.setLUT(LUTFunctions.green_saw_2());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;157&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Green&nbsp;Saw&nbsp;4"</span>))&nbsp;dd.setLUT(LUTFunctions.green_saw_4());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;158&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Green&nbsp;Saw&nbsp;8"</span>))&nbsp;dd.setLUT(LUTFunctions.green_saw_8());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;159&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Blue&nbsp;Saw&nbsp;2"</span>))&nbsp;dd.setLUT(LUTFunctions.blue_saw_2());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;160&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Blue&nbsp;Saw&nbsp;4"</span>))&nbsp;dd.setLUT(LUTFunctions.blue_saw_4());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;161&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Blue&nbsp;Saw&nbsp;8"</span>))&nbsp;dd.setLUT(LUTFunctions.blue_saw_8());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;162&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Red-Green&nbsp;Saw&nbsp;2"</span>))&nbsp;dd.setLUT(LUTFunctions.red_green_saw_2());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;163&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Red-Green&nbsp;Saw&nbsp;4"</span>))&nbsp;dd.setLUT(LUTFunctions.red_green_saw_4());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;164&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Red-Green&nbsp;Saw&nbsp;8"</span>))&nbsp;dd.setLUT(LUTFunctions.red_green_saw_8());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;165&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Red-Blue&nbsp;Saw&nbsp;2"</span>))&nbsp;dd.setLUT(LUTFunctions.red_blue_saw_2());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;166&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Red-Blue&nbsp;Saw&nbsp;4"</span>))&nbsp;dd.setLUT(LUTFunctions.red_blue_saw_4());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;167&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Red-Blue&nbsp;Saw&nbsp;8"</span>))&nbsp;dd.setLUT(LUTFunctions.red_blue_saw_8());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;168&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Green-Blue&nbsp;Saw&nbsp;2"</span>))&nbsp;dd.setLUT(LUTFunctions.green_blue_saw_2());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;169&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Green-Blue&nbsp;Saw&nbsp;4"</span>))&nbsp;dd.setLUT(LUTFunctions.green_blue_saw_4());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;170&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Green-Blue&nbsp;Saw&nbsp;8"</span>))&nbsp;dd.setLUT(LUTFunctions.green_blue_saw_8());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;171&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Random&nbsp;256"</span>))&nbsp;dd.setLUT(LUTFunctions.random_256());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;172&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Random&nbsp;32"</span>))&nbsp;dd.setLUT(LUTFunctions.random_32());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;173&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(pressed.getText().equals(<span class="string">"Random&nbsp;8"</span>))&nbsp;dd.setLUT(LUTFunctions.random_8());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;174&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;175&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;176&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;177&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;don't&nbsp;do&nbsp;anything&nbsp;-&nbsp;it&nbsp;is&nbsp;here&nbsp;just&nbsp;to&nbsp;keep&nbsp;the&nbsp;MouseMotionListener&nbsp;interface&nbsp;happy.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;178&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;179&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseDragged(MouseEvent&nbsp;e)&nbsp;{&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;180&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;181&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;182&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;executed&nbsp;when&nbsp;the&nbsp;mouse&nbsp;is&nbsp;moved&nbsp;over&nbsp;the&nbsp;image&nbsp;display&nbsp;class.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;183&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;e&nbsp;the&nbsp;mouse&nbsp;event  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;184&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;185&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;mouseMoved(MouseEvent&nbsp;e)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;186&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;187&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Just&nbsp;update&nbsp;the&nbsp;label&nbsp;with&nbsp;the&nbsp;DisplayFPImageWithLUTs&nbsp;instance&nbsp;info.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;188&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;label.setText(dd.getPixelInfo());&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;189&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;190&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;191&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;192&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;193&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;args&nbsp;the&nbsp;command&nbsp;line&nbsp;arguments.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;194&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;195&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;196&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;197&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;image&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,&nbsp;args[0]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;198&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;DisplayNBImageWithLUTsApp(image);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;199&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;200&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;201&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>A screenshot of the application in class <tt>DisplayNBImageWithLUTsApp</tt> is shown below.</p>

<a name="imagedisplayusingsurrogateimagessurrogateimagecomponentwithlookuptableslutsscreenshotofthettdisplaynbimagewithlutsappttapplication">&nbsp;</a><a href="Resources/Screenshots/DisplayNBImageWithLUTsApp.png"><img class="figure" src="Resources/Screenshots/DisplayNBImageWithLUTsApp_icon.jpg" border=0 alt="Screenshot of the <tt>DisplayNBImageWithLUTsApp</tt> application."></a>
<p class="caption">Screenshot of the <tt>DisplayNBImageWithLUTsApp</tt> application.<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>




<p>The LUTs can be calculate in several different ways, depending on which kind of color map we want. Several LUTs are calculated
through the static methods in the class <tt>LUTFunctions</tt>, shown below.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplayusingsurrogateimagessurrogateimagecomponentwithlookuptableslutslutfunctionsjava">&nbsp;</a><a href="/web/20151214020027/http://150.163.105.39:8080/JIPCookbook//Code/display/surrogate/LUTFunctions.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>LUTFunctions.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.surrogate;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;contains&nbsp;several&nbsp;static&nbsp;methods&nbsp;that&nbsp;create&nbsp;on-the-fly&nbsp;look-up&nbsp;tables.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;LUTFunctions  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;green&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;green()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;blue&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;blue()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;cyan&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;cyan()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;magenta&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;magenta()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;yellow&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;yellow()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;gray&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;gray()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;inverted&nbsp;gray&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;invGray()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-i);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-i);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-i);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;two-levels&nbsp;gray&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;gray2levels()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(128*(<span class="datatype">short</span>)(i/128));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(128*(<span class="datatype">short</span>)(i/128));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(128*(<span class="datatype">short</span>)(i/128));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;four-levels&nbsp;gray&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;gray4levels()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(64*(<span class="datatype">short</span>)(i/64));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;138&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(64*(<span class="datatype">short</span>)(i/64));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;139&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(64*(<span class="datatype">short</span>)(i/64));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;140&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;141&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;142&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;143&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;144&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;eight-levels&nbsp;gray&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;145&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;gray8levels()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;146&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;147&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;148&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;149&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;150&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(32*(<span class="datatype">short</span>)(i/32));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;151&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(32*(<span class="datatype">short</span>)(i/32));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;152&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(32*(<span class="datatype">short</span>)(i/32));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;153&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;154&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;155&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;156&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;157&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sixteen-levels&nbsp;gray&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;158&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;gray16levels()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;159&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;160&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;161&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;162&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;163&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(16*(<span class="datatype">short</span>)(i/16));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;164&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(16*(<span class="datatype">short</span>)(i/16));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;165&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(16*(<span class="datatype">short</span>)(i/16));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;166&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;167&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;168&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;169&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;thirty-two-levels&nbsp;gray&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;170&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;gray32levels()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;171&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;172&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;173&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;174&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;175&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(8*(<span class="datatype">short</span>)(i/8));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;176&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(8*(<span class="datatype">short</span>)(i/8));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;177&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(8*(<span class="datatype">short</span>)(i/8));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;178&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;179&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;180&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;181&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;182&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sixty-four-levels&nbsp;gray&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;183&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;gray64levels()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;184&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;185&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;186&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;187&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;188&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(4*(<span class="datatype">short</span>)(i/4));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;189&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(4*(<span class="datatype">short</span>)(i/4));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;190&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(4*(<span class="datatype">short</span>)(i/4));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;191&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;192&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;193&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;194&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;195&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hundred-twenty-eight-levels&nbsp;gray&nbsp;lut.&nbsp;Are&nbsp;we&nbsp;bored&nbsp;with&nbsp;gray&nbsp;yet?&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;196&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;gray128levels()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;197&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;198&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;199&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;200&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;201&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(2*(<span class="datatype">short</span>)(i/2));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;202&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(2*(<span class="datatype">short</span>)(i/2));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;203&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(2*(<span class="datatype">short</span>)(i/2));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;204&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;205&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;206&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;207&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;208&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red-cyan&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;209&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_cyan()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;210&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;211&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;212&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;213&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;214&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-i);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;215&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;216&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;217&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;218&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;219&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;220&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;221&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;green-magenta&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;222&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;green_magenta()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;223&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;224&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;225&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;226&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;227&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;228&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-i);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;229&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;230&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;231&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;232&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;233&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;234&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;blue-yellow&nbsp;lut&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;235&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;blue_yellow()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;236&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;237&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;238&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;239&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;240&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;241&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;242&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-i);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;243&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;244&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;245&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;246&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;247&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sin&nbsp;lut&nbsp;(rgb&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;248&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sin_rgb()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;249&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;250&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;251&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;252&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;253&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i-127)/255)));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;254&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i&nbsp;&nbsp;&nbsp;&nbsp;)/255)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;255&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i+127)/255)));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;256&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;257&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;258&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;259&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;260&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sin&nbsp;lut&nbsp;(rbg&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;261&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sin_rbg()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;262&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;263&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;264&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;265&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;266&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i-127)/255)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;267&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i&nbsp;&nbsp;&nbsp;&nbsp;)/255)));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;268&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i+127)/255)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;269&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;270&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;271&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;272&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;273&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sin&nbsp;lut&nbsp;(grb&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;274&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sin_grb()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;275&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;276&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;277&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;278&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;279&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i-127)/255)));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;280&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i&nbsp;&nbsp;&nbsp;&nbsp;)/255)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;281&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i+127)/255)));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;282&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;283&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;284&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;285&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;286&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sin&nbsp;lut&nbsp;(gbr&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;287&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sin_gbr()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;288&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;289&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;290&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;291&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;292&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i-127)/255)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;293&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i&nbsp;&nbsp;&nbsp;&nbsp;)/255)));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;294&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i+127)/255)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;295&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;296&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;297&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;298&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;299&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sin&nbsp;lut&nbsp;(brg&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;300&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sin_brg()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;301&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;302&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;303&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;304&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;305&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i-127)/255)));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;306&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i&nbsp;&nbsp;&nbsp;&nbsp;)/255)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;307&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i+127)/255)));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;308&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;309&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;310&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;311&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;312&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sin&nbsp;lut&nbsp;(bgr&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;313&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sin_bgr()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;314&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;315&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;316&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;317&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;318&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i-127)/255)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;319&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i&nbsp;&nbsp;&nbsp;&nbsp;)/255)));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;320&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(127*(1+Math.sin(Math.PI*(i+127)/255)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;321&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;322&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;323&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;324&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;325&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sin&nbsp;lut&nbsp;(rgb&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;326&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sin_rgb_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;327&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;328&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;sin_rgb();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;329&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;330&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;331&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;332&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;333&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sin&nbsp;lut&nbsp;(rbg&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;334&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sin_rbg_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;335&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;336&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;sin_rbg();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;337&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;338&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;339&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;340&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;341&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sin&nbsp;lut&nbsp;(grb&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;342&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sin_grb_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;343&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;344&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;sin_grb();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;345&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;346&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;347&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;348&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;349&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sin&nbsp;lut&nbsp;(gbr&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;350&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sin_gbr_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;351&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;352&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;sin_gbr();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;353&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;354&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;355&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;356&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;357&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sin&nbsp;lut&nbsp;(brg&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;358&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sin_brg_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;359&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;360&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;sin_brg();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;361&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;362&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;363&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;364&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;365&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sin&nbsp;lut&nbsp;(bgr&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;366&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sin_bgr_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;367&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;368&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;sin_bgr();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;369&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;370&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;371&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;372&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;373&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sqrt&nbsp;lut&nbsp;(rgb&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;374&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sqrt_rgb()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;375&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;376&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;377&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;378&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;379&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-15*Math.sqrt(i));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;380&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;381&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-15*Math.sqrt(255-i));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;382&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;383&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;384&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;385&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;386&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sqrt&nbsp;lut&nbsp;(rbg&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;387&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sqrt_rbg()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;388&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;389&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;390&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;391&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;392&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-15*Math.sqrt(i));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;393&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;394&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-15*Math.sqrt(255-i));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;395&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;396&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;397&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;398&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;399&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sqrt&nbsp;lut&nbsp;(grb&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;400&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sqrt_grb()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;401&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;402&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;403&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;404&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;405&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-15*Math.sqrt(i));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;406&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;407&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-15*Math.sqrt(255-i));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;408&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;409&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;410&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;411&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;412&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sqrt&nbsp;lut&nbsp;(gbr&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;413&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sqrt_gbr()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;414&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;415&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;416&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;417&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;418&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-15*Math.sqrt(i));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;419&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;420&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-15*Math.sqrt(255-i));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;421&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;422&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;423&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;424&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;425&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sqrt&nbsp;lut&nbsp;(brg&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;426&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sqrt_brg()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;427&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;428&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;429&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;430&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;431&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-15*Math.sqrt(i));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;432&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;433&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-15*Math.sqrt(255-i));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;434&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;435&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;436&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;437&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;438&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sqrt&nbsp;lut&nbsp;(bgr&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;439&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sqrt_bgr()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;440&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;441&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;442&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;443&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;444&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-15*Math.sqrt(i));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;445&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;446&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(255-15*Math.sqrt(255-i));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;447&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;448&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;449&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;450&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;451&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sqrt&nbsp;lut&nbsp;(rgb&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;452&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sqrt_rgb_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;453&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;454&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;sqrt_rgb();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;455&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;456&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;457&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;458&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;459&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sqrt&nbsp;lut&nbsp;(rbg&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;460&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sqrt_rbg_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;461&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;462&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;sqrt_rbg();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;463&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;464&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;465&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;466&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;467&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sqrt&nbsp;lut&nbsp;(brg&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;468&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sqrt_brg_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;469&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;470&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;sqrt_brg();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;471&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;472&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;473&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;474&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;475&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sqrt&nbsp;lut&nbsp;(bgr&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;476&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sqrt_bgr_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;477&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;478&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;sqrt_bgr();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;479&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;480&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;481&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;482&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;483&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sqrt&nbsp;lut&nbsp;(gbr&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;484&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sqrt_gbr_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;485&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;486&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;sqrt_gbr();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;487&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;488&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;489&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;490&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;491&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;sqrt&nbsp;lut&nbsp;(grb&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;492&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;sqrt_grb_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;493&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;494&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;sqrt_grb();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;495&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;496&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;497&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;498&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;499&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hue&nbsp;lut&nbsp;(rgb&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;500&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;hue_rgb()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;501&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;502&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;503&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;r=255,g=0,b=0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;504&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;43;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;505&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;506&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)r;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)g;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)b;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;507&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g&nbsp;+=&nbsp;5.9;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;508&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;509&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;=&nbsp;255;&nbsp;g&nbsp;=&nbsp;255;&nbsp;b&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;510&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=43;i&lt;86;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;511&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;512&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)r;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)g;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)b;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;513&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;-=&nbsp;5.9;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;514&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;515&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;=&nbsp;0;&nbsp;g&nbsp;=&nbsp;255;&nbsp;b&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;516&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=86;i&lt;128;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;517&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;518&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)r;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)g;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)b;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;519&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b&nbsp;+=&nbsp;5.9;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;520&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;521&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;=&nbsp;0;&nbsp;g&nbsp;=&nbsp;255;&nbsp;b&nbsp;=&nbsp;255;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;522&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=128;i&lt;171;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;523&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;524&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)r;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)g;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)b;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;525&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g&nbsp;-=&nbsp;5.9;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;526&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;527&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;=&nbsp;0;&nbsp;g&nbsp;=&nbsp;0;&nbsp;b&nbsp;=&nbsp;255;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;528&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=171;i&lt;213;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;529&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;530&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)r;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)g;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)b;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;531&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;+=&nbsp;5.9;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;532&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;533&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;=&nbsp;255;&nbsp;g&nbsp;=&nbsp;0;&nbsp;b&nbsp;=&nbsp;255;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;534&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=213;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;535&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;536&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)r;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)g;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)b;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;537&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b&nbsp;-=&nbsp;5.9;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;538&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;539&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;540&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;541&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;542&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hue&nbsp;lut&nbsp;(rbg&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;543&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;hue_rbg()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;544&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;545&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;temp&nbsp;=&nbsp;hue_rgb();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;546&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;547&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;548&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;t&nbsp;=&nbsp;temp[i][1];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;549&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp[i][1]&nbsp;=&nbsp;temp[i][2];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;550&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp[i][2]&nbsp;=&nbsp;t;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;551&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;552&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;temp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;553&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;554&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;555&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hue&nbsp;lut&nbsp;(grb&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;556&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;hue_grb()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;557&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;558&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;temp&nbsp;=&nbsp;hue_rgb();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;559&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;560&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;561&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;t&nbsp;=&nbsp;temp[i][0];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;562&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp[i][0]&nbsp;=&nbsp;temp[i][1];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;563&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp[i][1]&nbsp;=&nbsp;t;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;564&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;565&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;temp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;566&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;567&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;568&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hue&nbsp;lut&nbsp;(gbr&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;569&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;hue_gbr()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;570&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;571&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;temp&nbsp;=&nbsp;hue_rgb();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;572&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;573&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;574&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;r&nbsp;=&nbsp;temp[i][0];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;575&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;g&nbsp;=&nbsp;temp[i][1];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;576&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;b&nbsp;=&nbsp;temp[i][2];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;577&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp[i][0]&nbsp;=&nbsp;b;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;578&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp[i][1]&nbsp;=&nbsp;r;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;579&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp[i][2]&nbsp;=&nbsp;g;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;580&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;581&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;temp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;582&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;583&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;584&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hue&nbsp;lut&nbsp;(brg&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;585&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;hue_brg()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;586&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;587&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;temp&nbsp;=&nbsp;hue_rgb();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;588&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;589&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;590&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;r&nbsp;=&nbsp;temp[i][0];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;591&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;g&nbsp;=&nbsp;temp[i][1];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;592&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;b&nbsp;=&nbsp;temp[i][2];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;593&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp[i][0]&nbsp;=&nbsp;g;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;594&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp[i][1]&nbsp;=&nbsp;b;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;595&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp[i][2]&nbsp;=&nbsp;r;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;596&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;597&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;temp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;598&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;599&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;600&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hue&nbsp;lut&nbsp;(bgr&nbsp;order)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;601&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;hue_bgr()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;602&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;603&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;temp&nbsp;=&nbsp;hue_rgb();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;604&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;605&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;606&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;t&nbsp;=&nbsp;temp[i][0];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;607&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp[i][0]&nbsp;=&nbsp;temp[i][2];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;608&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp[i][2]&nbsp;=&nbsp;t;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;609&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;610&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;temp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;611&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;612&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;613&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hue&nbsp;lut&nbsp;(rgb&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;614&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;hue_rgb_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;615&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;616&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;hue_rgb();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;617&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;618&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;619&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;620&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;621&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hue&nbsp;lut&nbsp;(rbg&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;622&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;hue_rbg_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;623&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;624&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;hue_rbg();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;625&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;626&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;627&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;628&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;629&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hue&nbsp;lut&nbsp;(grb&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;630&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;hue_grb_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;631&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;632&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;hue_grb();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;633&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;634&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;635&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;636&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;637&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hue&nbsp;lut&nbsp;(gbr&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;638&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;hue_gbr_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;639&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;640&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;hue_gbr();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;641&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;642&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;643&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;644&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;645&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hue&nbsp;lut&nbsp;(brg&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;646&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;hue_brg_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;647&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;648&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;hue_brg();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;649&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;650&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;651&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;652&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;653&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;hue&nbsp;lut&nbsp;(bgr&nbsp;order,&nbsp;black&nbsp;as&nbsp;zero)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;654&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;hue_bgr_0()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;655&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;656&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;hue_bgr();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;657&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lut[0][0]&nbsp;=&nbsp;lut[0][1]&nbsp;=&nbsp;lut[0][2]&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;658&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;659&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;660&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;661&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red&nbsp;saw&nbsp;lut&nbsp;(number&nbsp;of&nbsp;teeth&nbsp;is&nbsp;passed&nbsp;as&nbsp;an&nbsp;argument)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;662&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_saw(<span class="datatype">short</span>&nbsp;teeth)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;663&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;664&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;665&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;r&nbsp;=&nbsp;255;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;666&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;667&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;668&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;r;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;669&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;670&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;671&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;-=&nbsp;teeth;&nbsp;<span class="controlword">if</span>&nbsp;(r&nbsp;&lt;&nbsp;0)&nbsp;r&nbsp;=&nbsp;255;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;672&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;673&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;674&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;675&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;676&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;green&nbsp;saw&nbsp;lut&nbsp;(number&nbsp;of&nbsp;teeth&nbsp;is&nbsp;passed&nbsp;as&nbsp;an&nbsp;argument)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;677&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;green_saw(<span class="datatype">short</span>&nbsp;teeth)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;678&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;679&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;680&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;r&nbsp;=&nbsp;255;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;681&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;682&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;683&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;684&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;r;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;685&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;686&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;-=&nbsp;teeth;&nbsp;<span class="controlword">if</span>&nbsp;(r&nbsp;&lt;&nbsp;0)&nbsp;r&nbsp;=&nbsp;255;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;687&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;688&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;689&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;690&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;691&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;blue&nbsp;saw&nbsp;lut&nbsp;(number&nbsp;of&nbsp;teeth&nbsp;is&nbsp;passed&nbsp;as&nbsp;an&nbsp;argument)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;692&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;blue_saw(<span class="datatype">short</span>&nbsp;teeth)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;693&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;694&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;695&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;r&nbsp;=&nbsp;255;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;696&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;697&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;698&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;699&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;700&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;r;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;701&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;-=&nbsp;teeth;&nbsp;<span class="controlword">if</span>&nbsp;(r&nbsp;&lt;&nbsp;0)&nbsp;r&nbsp;=&nbsp;255;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;702&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;703&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;704&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;705&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;706&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red&nbsp;saw&nbsp;lut&nbsp;(2&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;707&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_saw_2()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;708&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;709&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;red_saw((<span class="datatype">short</span>)2);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;710&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;711&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;712&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red&nbsp;saw&nbsp;lut&nbsp;(4&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;713&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_saw_4()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;714&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;715&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;red_saw((<span class="datatype">short</span>)4);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;716&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;717&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;718&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red&nbsp;saw&nbsp;lut&nbsp;(8&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;719&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_saw_8()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;720&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;721&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;red_saw((<span class="datatype">short</span>)8);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;722&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;723&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;724&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;green&nbsp;saw&nbsp;lut&nbsp;(2&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;725&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;green_saw_2()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;726&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;727&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;green_saw((<span class="datatype">short</span>)2);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;728&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;729&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;730&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;green&nbsp;saw&nbsp;lut&nbsp;(4&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;731&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;green_saw_4()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;732&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;733&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;green_saw((<span class="datatype">short</span>)4);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;734&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;735&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;736&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;green&nbsp;saw&nbsp;lut&nbsp;(8&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;737&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;green_saw_8()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;738&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;739&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;green_saw((<span class="datatype">short</span>)8);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;740&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;741&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;742&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;blue&nbsp;saw&nbsp;lut&nbsp;(2&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;743&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;blue_saw_2()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;744&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;745&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;blue_saw((<span class="datatype">short</span>)2);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;746&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;747&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;748&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;blue&nbsp;saw&nbsp;lut&nbsp;(4&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;749&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;blue_saw_4()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;750&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;751&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;blue_saw((<span class="datatype">short</span>)4);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;752&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;753&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;754&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;blue&nbsp;saw&nbsp;lut&nbsp;(8&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;755&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;blue_saw_8()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;756&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;757&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;blue_saw((<span class="datatype">short</span>)8);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;758&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;759&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;760&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red-green&nbsp;saw&nbsp;lut&nbsp;(number&nbsp;of&nbsp;teeth&nbsp;passed&nbsp;as&nbsp;argument)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;761&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_green_saw(<span class="datatype">short</span>&nbsp;teeth)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;762&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;763&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;764&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;r&nbsp;=&nbsp;255;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;765&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;g&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;766&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;767&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;768&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;r;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;769&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;g;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;770&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;771&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;-=&nbsp;teeth;&nbsp;<span class="controlword">if</span>&nbsp;(r&nbsp;&lt;&nbsp;0)&nbsp;r&nbsp;=&nbsp;255;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;772&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g&nbsp;+=&nbsp;teeth;&nbsp;<span class="controlword">if</span>&nbsp;(g&nbsp;&gt;&nbsp;255)&nbsp;g&nbsp;=&nbsp;0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;773&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;774&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;775&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;776&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;777&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red_green&nbsp;saw&nbsp;lut&nbsp;(2&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;778&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_green_saw_2()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;779&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;780&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;red_green_saw((<span class="datatype">short</span>)2);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;781&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;782&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;783&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red_green&nbsp;saw&nbsp;lut&nbsp;(4&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;784&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_green_saw_4()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;785&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;786&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;red_green_saw((<span class="datatype">short</span>)4);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;787&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;788&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;789&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red_green&nbsp;saw&nbsp;lut&nbsp;(8&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;790&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_green_saw_8()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;791&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;792&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;red_green_saw((<span class="datatype">short</span>)8);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;793&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;794&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;795&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red-blue&nbsp;saw&nbsp;lut&nbsp;(number&nbsp;of&nbsp;teeth&nbsp;passed&nbsp;as&nbsp;argument)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;796&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_blue_saw(<span class="datatype">short</span>&nbsp;teeth)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;797&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;798&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;799&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;r&nbsp;=&nbsp;255;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;800&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;b&nbsp;=&nbsp;0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;801&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;802&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;803&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;r;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;804&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;805&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;b;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;806&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;-=&nbsp;teeth;&nbsp;<span class="controlword">if</span>&nbsp;(r&nbsp;&lt;&nbsp;0)&nbsp;r&nbsp;=&nbsp;255;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;807&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b&nbsp;+=&nbsp;teeth;&nbsp;<span class="controlword">if</span>&nbsp;(b&nbsp;&gt;&nbsp;255)&nbsp;b&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;808&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;809&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;810&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;811&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;812&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red_blue&nbsp;saw&nbsp;lut&nbsp;(2&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;813&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_blue_saw_2()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;814&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;815&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;red_blue_saw((<span class="datatype">short</span>)2);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;816&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;817&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;818&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red_blue&nbsp;saw&nbsp;lut&nbsp;(4&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;819&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_blue_saw_4()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;820&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;821&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;red_blue_saw((<span class="datatype">short</span>)4);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;822&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;823&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;824&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red_blue&nbsp;saw&nbsp;lut&nbsp;(8&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;825&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;red_blue_saw_8()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;826&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;827&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;red_blue_saw((<span class="datatype">short</span>)8);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;828&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;829&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;830&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;red-blue&nbsp;saw&nbsp;lut&nbsp;(number&nbsp;of&nbsp;teeth&nbsp;passed&nbsp;as&nbsp;argument)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;831&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;green_blue_saw(<span class="datatype">short</span>&nbsp;teeth)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;832&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;833&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;834&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;g&nbsp;=&nbsp;255;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;835&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;b&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;836&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;837&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;838&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;839&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;g;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;840&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;b;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;841&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g&nbsp;-=&nbsp;teeth;&nbsp;<span class="controlword">if</span>&nbsp;(g&nbsp;&lt;&nbsp;0)&nbsp;g&nbsp;=&nbsp;255;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;842&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b&nbsp;+=&nbsp;teeth;&nbsp;<span class="controlword">if</span>&nbsp;(b&nbsp;&gt;&nbsp;255)&nbsp;b&nbsp;=&nbsp;0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;843&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;844&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;845&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;846&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;847&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;green_blue&nbsp;saw&nbsp;lut&nbsp;(2&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;848&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;green_blue_saw_2()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;849&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;850&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;green_blue_saw((<span class="datatype">short</span>)2);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;851&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;852&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;853&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;green_blue&nbsp;saw&nbsp;lut&nbsp;(4&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;854&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;green_blue_saw_4()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;855&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;856&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;green_blue_saw((<span class="datatype">short</span>)4);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;857&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;858&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;859&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;green_blue&nbsp;saw&nbsp;lut&nbsp;(8&nbsp;teeth)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;860&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;green_blue_saw_8()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;861&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;862&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;green_blue_saw((<span class="datatype">short</span>)8);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;863&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;864&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;865&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;random_256&nbsp;lut&nbsp;(values&nbsp;are&nbsp;totally&nbsp;independent)&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;866&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;random_256()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;867&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;868&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;869&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;870&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;871&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;(<span class="datatype">short</span>)(Math.random()*256);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;872&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;(<span class="datatype">short</span>)(Math.random()*256);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;873&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;(<span class="datatype">short</span>)(Math.random()*256);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;874&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;875&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;876&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;877&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;878&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;random_32&nbsp;lut&nbsp;(values&nbsp;are&nbsp;totally&nbsp;independent)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;879&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;random_32()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;880&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;881&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;882&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;r=0,g=0,b=0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;883&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;884&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;885&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(i&nbsp;%&nbsp;8&nbsp;==&nbsp;0)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;886&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;887&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;=&nbsp;(<span class="datatype">short</span>)(Math.random()*256);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;888&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g&nbsp;=&nbsp;(<span class="datatype">short</span>)(Math.random()*256);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;889&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b&nbsp;=&nbsp;(<span class="datatype">short</span>)(Math.random()*256);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;890&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;891&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;r;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;892&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;g;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;893&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;b;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;894&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;895&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;896&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;897&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;898&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**&nbsp;The&nbsp;random_8&nbsp;lut&nbsp;(values&nbsp;are&nbsp;totally&nbsp;independent)&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;899&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;random_8()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;900&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;901&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>[][]&nbsp;lut&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[256][3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;902&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">short</span>&nbsp;r=0,g=0,b=0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;903&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">short</span>&nbsp;i=0;i&lt;256;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;904&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;905&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(i&nbsp;%&nbsp;32&nbsp;==&nbsp;0)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;906&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;907&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r&nbsp;=&nbsp;(<span class="datatype">short</span>)(Math.random()*256);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;908&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g&nbsp;=&nbsp;(<span class="datatype">short</span>)(Math.random()*256);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;909&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b&nbsp;=&nbsp;(<span class="datatype">short</span>)(Math.random()*256);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;910&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;911&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][0]&nbsp;=&nbsp;r;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;912&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][1]&nbsp;=&nbsp;g;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;913&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lut[i][2]&nbsp;=&nbsp;b;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;914&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;915&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;lut;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;916&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;917&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;918&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>






<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="2100-display-multipleimages.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="2100-display-multipleimages.jsp">Displaying Multiple Images</a></td><td class="navigation1"><a href="2120-display-thumbnail.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="2120-display-thumbnail.jsp">Displaying Interactive Thumbnails</a></td><td class="navigation0"><a href="2200-display-surrogate.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="2200-display-surrogate.jsp">Using Surrogate Images</a></td><td class="navigation1"><a href="2280-display-volume.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="2280-display-volume.jsp">Displaying Volume (Multiband) Images</a></td><td class="navigation2"><a href="2300-display-annotation.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="2300-display-annotation.jsp">Drawing Over Images</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20151214020027/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20151214020027/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20151214020027/https://ssl." : "/web/20151214020027/http://www.");
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
     FILE ARCHIVED ON 2:00:27 Dec 14, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 0:51:09 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
