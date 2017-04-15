


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app4.us.archive.org";archive_analytics.values.server_ms=347;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/6520-howto-chromakey.jsp";

var firstYear = 1996;
var displayDay = "18";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/6520-howto-chromakey.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20151118120511" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20151017091145/http://www.lac.inpe.br/JIPCookbook/6520-howto-chromakey.jsp" title="17 Oct 2015">OCT</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 12:05:11 Nov 18, 2015">NOV</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20151225144635/http://www.lac.inpe.br/JIPCookbook/6520-howto-chromakey.jsp" title="25 Dec 2015"><strong>DEC</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20151017091145/http://www.lac.inpe.br/JIPCookbook/6520-howto-chromakey.jsp" title="9:11:45 Oct 17, 2015"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 12:05:11 Nov 18, 2015">18</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20151225144635/http://www.lac.inpe.br/JIPCookbook/6520-howto-chromakey.jsp" title="14:46:35 Dec 25, 2015"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20141027072403/http://www.lac.inpe.br/JIPCookbook/6520-howto-chromakey.jsp" title="27 Oct 2014"><strong>2014</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 12:05:11 Nov 18, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
                   2016
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20151118120511*/http://www.lac.inpe.br/JIPCookbook/6520-howto-chromakey.jsp" title="See a list of every capture for this URL">27 captures</a>
           <div class="r" title="Timespan for captures of this URL">29 Jan 10 - 17 Sep 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:100000011011_2011:-1:000011001111_2012:-1:000100000001_2013:-1:000000000000_2014:-1:000000000100_2015:10:001110000111_2016:-1:011110111000_2017:-1:000000000000" />
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
<a href="/web/20151118120511/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20151118120511/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">How can I implement a chroma key composition on images?</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestransparency">Transparency</a>
</div>
<div class="toc3"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestranslucency">Translucency</a>
</div>
<div class="toc3"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestipsandtricks">Tips and tricks</a>
</div>
<div class="toc3"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagesreferences">References</a>
</div>
</div>

<p class="section"><a name="howtohowcaniimplementachromakeycompositiononimagesintroduction"></a>Introduction</p>

<p>Chroma Key is a technique for mixing two images together, in which a color (or a small color range) from the overlay image is made transparent, 
revealing another image (the background) behind it. This technique is also known as greenscreen or bluescreen, 
since green and blue screens are often used to denote
the overlay image's region which must be removed or not rendered over the background image.</p>

<p>Implementation of chroma key composition or mixing is trivial, 
but results are often not perfect since it is difficult to have 
a clean separation between pixels belonging to the 
foreground (which must be rendered over a background image)
and pixels that must be considered transparent or translucent (which shouldn't be rendered) due to
antialias effects, compression artifacts or other reasons.  
Problems may also occur when the transparent or translucent region is not homogeneous, which makes the determination of
the transparency/translucency values hard or imprecise.</p>

<p>In this chapter we'll see some simple examples of chroma key and suggestions on how to improve the results. For an example, we'll render
a UFO image with a green background (which will not be rendered) over the Johns Hopkins University's Upper Quad (see images below).</p>

<a name="howtohowcaniimplementachromakeycompositiononimagesintroductionbackgroundimagejohnshopkinsuniversity39supperquad">&nbsp;</a><img class="figure" src="Resources/ChromaKey/dsc00099_large.jpg" border=0 alt="Background image -- Johns Hopkins University&#39;s Upper Quad"><p class="caption">Background image -- Johns Hopkins University&#39;s Upper Quad</p>
<div class="spacer">&nbsp;</div>

<a name="howtohowcaniimplementachromakeycompositiononimagesintroductionoverlayimagegreenpixelswillnotberendered">&nbsp;</a><img class="figure" src="Resources/ChromaKey/UFO.png" border=0 alt="Overlay image (green pixels will not be rendered)"><p class="caption">Overlay image (green pixels will not be rendered)</p>
<div class="spacer">&nbsp;</div>


<p>In this chapter <i>transparent</i> pixels are pixels that, when overlaid over others, will not change their colors, being, for all practical purposes, invisible. 
<i>Translucent</i> pixels, when overlaid over others, may change their colors depending on the amount of translucency. Translucent pixels
can be considered partially transparent. </p>
 



<p class="section"><a name="howtohowcaniimplementachromakeycompositiononimagestransparency"></a>Transparency</p>

<p>One simple way to implement chroma key composition is using a color that will be considered fully transparent or invisible when
one image is overlaid into another. We can then loop over all pixels in the overlay image: if a pixel's color is the same as the
transparent color then we skip it, otherwise we paint it over the background image. </p>

<p>With this technique, a pixel in the overlay image will be either painted over the background image or not painted at all --
This technique is implemented in the application in the class <tt>TransparencyByColors</tt>, shown below.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="howtohowcaniimplementachromakeycompositiononimagestransparencytransparencybycolorsjava">&nbsp;</a><a href="/web/20151118120511/http://150.163.105.39:8080/JIPCookbook//Code/howto/chromakey/TransparencyByColors.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>TransparencyByColors.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;howto.chromakey;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;demonstrates&nbsp;how&nbsp;to&nbsp;select&nbsp;a&nbsp;color&nbsp;for&nbsp;transparency&nbsp;to&nbsp;create&nbsp;overlays&nbsp;of&nbsp;images.&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;It&nbsp;reads&nbsp;two&nbsp;images&nbsp;from&nbsp;the&nbsp;disk,&nbsp;drawing&nbsp;the&nbsp;second&nbsp;one&nbsp;over&nbsp;the&nbsp;first&nbsp;one&nbsp;but&nbsp;considering&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;green&nbsp;pixels&nbsp;on&nbsp;the&nbsp;second&nbsp;one&nbsp;as&nbsp;transparent.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;TransparencyByColors  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;@param&nbsp;args&nbsp;the&nbsp;arguments&nbsp;for&nbsp;the&nbsp;application&nbsp;(will&nbsp;be&nbsp;ignored)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;@throws&nbsp;IOException&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;input&nbsp;images.&nbsp;We&nbsp;assume&nbsp;that&nbsp;the&nbsp;first&nbsp;image&nbsp;is&nbsp;the&nbsp;background,&nbsp;and&nbsp;that&nbsp;it&nbsp;is&nbsp;larger  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;than&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;background&nbsp;=&nbsp;ImageIO.read(<span class="specialword">new</span>&nbsp;File(<span class="string">"dsc00099_large.jpg"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=&nbsp;background.getRaster();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;layer&nbsp;=&nbsp;ImageIO.read(<span class="specialword">new</span>&nbsp;File(<span class="string">"UFO.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;layer.getWidth();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;layer.getHeight();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;will&nbsp;shift&nbsp;the&nbsp;overlay&nbsp;image&nbsp;over&nbsp;the&nbsp;background&nbsp;this&nbsp;amount.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;shiftX&nbsp;=&nbsp;72;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;shiftY&nbsp;=&nbsp;80;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Slow&nbsp;method:&nbsp;scan&nbsp;all&nbsp;input&nbsp;(layer)&nbsp;image&nbsp;pixels,&nbsp;plotting&nbsp;only&nbsp;those&nbsp;which&nbsp;are&nbsp;not&nbsp;green.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;lPixel,red,green,blue;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lPixel&nbsp;=&nbsp;layer.getRGB(w,h);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;((lPixel&amp;0x00FFFFFF)&nbsp;!=&nbsp;0x00FF00)&nbsp;<span class="comment">//&nbsp;Not&nbsp;pure&nbsp;green!  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;red&nbsp;&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)((lPixel&amp;0x00FF0000)&gt;&gt;&gt;16);&nbsp;<span class="comment">//&nbsp;Red&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;green&nbsp;=&nbsp;(<span class="datatype">int</span>)((lPixel&amp;0x0000FF00)&gt;&gt;&gt;8);&nbsp;&nbsp;<span class="comment">//&nbsp;Green&nbsp;level  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;blue&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)&nbsp;(lPixel&amp;0x000000FF);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Blue&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;pixel&nbsp;on&nbsp;the&nbsp;output&nbsp;image's&nbsp;raster.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raster.setPixel(w+shiftX,h+shiftY,<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{red,green,blue,255});&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="comment">//&nbsp;end&nbsp;for  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Save&nbsp;the&nbsp;image&nbsp;as&nbsp;a&nbsp;PNG&nbsp;via&nbsp;ImageIO.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(background,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"transparency.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Display&nbsp;the&nbsp;input&nbsp;and&nbsp;output&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JFrame&nbsp;frame&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JFrame(<span class="string">"Transparency&nbsp;by&nbsp;Colors"</span>);&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.add(<span class="specialword">new</span>&nbsp;DisplayJAI(background));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.pack();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setVisible(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>
 

<p>This application will open the background and overlay image, and for each pixel in the overlay image
will get its color. If the pixel is not exactly green it will be paint over the raster of the background image,
which will be stored in disk and displayed in a <tt>JFrame</tt>. The resulting image is shown below.</p>

<a name="howtohowcaniimplementachromakeycompositiononimagestransparencyoverlaidimageusingtransparency">&nbsp;</a><img class="figure" src="Resources/ChromaKey/transparency.png" border=0 alt="Overlaid image (using transparency)"><p class="caption">Overlaid image (using transparency)</p>
<div class="spacer">&nbsp;</div>


<p>We can see that using a single color as transparent yields noticeable problems: there are some green streaks on the edges of the UFO,
which can be seen in a enlarged region of the overlaid image, shown below. This happened because the UFO image is antialiased, therefore there
are some pixels' colors which are a mixture of the edges and the green background, not being pure green, therefore painted over the
background image.</p>

<a name="howtohowcaniimplementachromakeycompositiononimagestransparencydetailoftheoverlaidimageusingtransparency">&nbsp;</a><img class="figure" src="Resources/ChromaKey/transparency_zoom.png" border=0 alt="Detail of the overlaid image (using transparency)"><p class="caption">Detail of the overlaid image (using transparency)</p>
<div class="spacer">&nbsp;</div>





<p class="section"><a name="howtohowcaniimplementachromakeycompositiononimagestranslucency"></a>Translucency</p>


<p>A better way to do a chroma key composition is to use different degrees of transparency, 
so overlay and background pixels' colors will be mixed accordingly to the similarity of the overlay pixel color to the color 
defined as transparent.</p>

<p>In order to achieve this, we must calculate the amount of translucency for each pixel, and use this amount to weight 
how much of the background and overlay colors will influence the final color of a pixel. One simple way do to this is to calculate
the distance from a overlay pixel's color to the color that must be transparent, normalizing this value.</p>
<p>With a translucency value between 0 (totally translucent or invisible) and 1 (totally opaque), we can calculate each color component of a pixel 
as <TT>R=L*translucency+B*(1-translucency)</TT>, where <tt>R</tt> is the output color value, <tt>L</tt> is the input overlay color value and 
<tt>B</tt> is the input background color value.</p> 
<p>This technique is implemented in the application in the class <tt>TranslucencyByColors</tt>, shown below. 
The amount of translucency is calculated
as the Euclidean distance between the color on the layer image and the color which should be transparent (green), 
limited to 100 units of distance and 
normalized to the range 
[0,1].</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="howtohowcaniimplementachromakeycompositiononimagestranslucencytranslucencybycolorsjava">&nbsp;</a><a href="/web/20151118120511/http://150.163.105.39:8080/JIPCookbook//Code/howto/chromakey/TranslucencyByColors.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>TranslucencyByColors.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;howto.chromakey;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;demonstrates&nbsp;how&nbsp;to&nbsp;select&nbsp;a&nbsp;color&nbsp;for&nbsp;translucency.&nbsp;It&nbsp;reads&nbsp;two&nbsp;images&nbsp;from&nbsp;the&nbsp;disk,  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;drawing&nbsp;the&nbsp;second&nbsp;one&nbsp;over&nbsp;the&nbsp;first&nbsp;one&nbsp;but&nbsp;considering&nbsp;green&nbsp;pixels&nbsp;on&nbsp;the&nbsp;second&nbsp;one&nbsp;as  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;transparent/translucent&nbsp;--&nbsp;the&nbsp;closer&nbsp;the&nbsp;color&nbsp;is&nbsp;to&nbsp;green,&nbsp;the&nbsp;more&nbsp;transparent&nbsp;it&nbsp;is.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;TranslucencyByColors  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;@param&nbsp;args&nbsp;the&nbsp;arguments&nbsp;for&nbsp;the&nbsp;application&nbsp;(will&nbsp;be&nbsp;ignored)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;@throws&nbsp;IOException&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;input&nbsp;images.&nbsp;We&nbsp;assume&nbsp;that&nbsp;the&nbsp;first&nbsp;image&nbsp;is&nbsp;the&nbsp;background,&nbsp;and&nbsp;that&nbsp;it&nbsp;is&nbsp;larger  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;than&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;background&nbsp;=&nbsp;ImageIO.read(<span class="specialword">new</span>&nbsp;File(<span class="string">"dsc00099_large.jpg"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=&nbsp;background.getRaster();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;layer&nbsp;=&nbsp;ImageIO.read(<span class="specialword">new</span>&nbsp;File(<span class="string">"UFO.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;layer.getWidth();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;layer.getHeight();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;will&nbsp;shift&nbsp;the&nbsp;overlay&nbsp;image&nbsp;over&nbsp;the&nbsp;background&nbsp;this&nbsp;amount.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;shiftX&nbsp;=&nbsp;72;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;shiftY&nbsp;=&nbsp;80;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Slow&nbsp;method:&nbsp;scan&nbsp;all&nbsp;input&nbsp;(layer)&nbsp;image&nbsp;pixels&nbsp;and&nbsp;corresponding&nbsp;background&nbsp;pixels.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;its&nbsp;"greenness"&nbsp;and&nbsp;translucency&nbsp;and&nbsp;recreate&nbsp;the&nbsp;pixels'&nbsp;values,&nbsp;plotting  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;them&nbsp;over&nbsp;the&nbsp;background.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;iPixel,lPixel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;refRed&nbsp;=&nbsp;0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;refGreen&nbsp;=&nbsp;255;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;refBlue&nbsp;=&nbsp;0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;iRed,iGreen,iBlue,lRed,lGreen,lBlue,oRed,oGreen,oBlue;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;iPixel&nbsp;=&nbsp;background.getRGB(w+shiftX,h+shiftY);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;iRed&nbsp;&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)((iPixel&amp;0x00FF0000)&gt;&gt;&gt;16);&nbsp;<span class="comment">//&nbsp;Red&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;iGreen&nbsp;=&nbsp;(<span class="datatype">int</span>)((iPixel&amp;0x0000FF00)&gt;&gt;&gt;8);&nbsp;&nbsp;<span class="comment">//&nbsp;Green&nbsp;level  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;iBlue&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)&nbsp;(iPixel&amp;0x000000FF);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Blue&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lPixel&nbsp;=&nbsp;layer.getRGB(w,h);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lRed&nbsp;&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)((lPixel&amp;0x00FF0000)&gt;&gt;&gt;16);&nbsp;<span class="comment">//&nbsp;Red&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lGreen&nbsp;=&nbsp;(<span class="datatype">int</span>)((lPixel&amp;0x0000FF00)&gt;&gt;&gt;8);&nbsp;&nbsp;<span class="comment">//&nbsp;Green&nbsp;level  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lBlue&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)&nbsp;(lPixel&amp;0x000000FF);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Blue&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;translucency,&nbsp;based&nbsp;on&nbsp;the&nbsp;green&nbsp;value&nbsp;of&nbsp;the&nbsp;layer.&nbsp;To&nbsp;make&nbsp;calculations  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;easier,&nbsp;let's&nbsp;assume&nbsp;that&nbsp;the&nbsp;translucency&nbsp;is&nbsp;a&nbsp;value&nbsp;between&nbsp;0&nbsp;(invisible)&nbsp;and&nbsp;1&nbsp;(opaque).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;distance&nbsp;=&nbsp;Math.sqrt((refRed-lRed)*(refRed-lRed)+  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(refGreen-lGreen)*(refGreen-lGreen)+  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(refBlue-lBlue)*(refBlue-lBlue));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Convert&nbsp;distance&nbsp;to&nbsp;the&nbsp;range&nbsp;0-100.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;distance&nbsp;=&nbsp;Math.min(distance,100f);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;translucency&nbsp;=&nbsp;((<span class="datatype">float</span>)distance/100f);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Recalculate&nbsp;the&nbsp;RGB&nbsp;coordinates&nbsp;of&nbsp;the&nbsp;layer&nbsp;and&nbsp;background&nbsp;pixels,&nbsp;using&nbsp;the&nbsp;translucency  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;as&nbsp;a&nbsp;weight.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oRed&nbsp;=&nbsp;(<span class="datatype">int</span>)(translucency*lRed+(1-translucency)*iRed);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oGreen&nbsp;=&nbsp;(<span class="datatype">int</span>)(translucency*lGreen+(1-translucency)*iGreen);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oBlue&nbsp;=&nbsp;(<span class="datatype">int</span>)(translucency*lBlue+(1-translucency)*iBlue);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;pixel&nbsp;on&nbsp;the&nbsp;output&nbsp;image's&nbsp;raster.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raster.setPixel(w+shiftX,h+shiftY,<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{oRed,oGreen,oBlue,255});&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="comment">//&nbsp;end&nbsp;for  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Save&nbsp;the&nbsp;image&nbsp;as&nbsp;a&nbsp;PNG&nbsp;via&nbsp;ImageIO.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(background,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"translucency.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Display&nbsp;the&nbsp;input&nbsp;and&nbsp;output&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JFrame&nbsp;frame&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JFrame(<span class="string">"Translucency&nbsp;by&nbsp;Colors"</span>);&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.add(<span class="specialword">new</span>&nbsp;DisplayJAI(background));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.pack();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setVisible(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>
 

<p>The resulting image is shown below. It is slightly better looking than the overlay created with only transparency, but we
still can see some green edges in parts of the image.</p>

<a name="howtohowcaniimplementachromakeycompositiononimagestranslucencyoverlaidimageusingtranslucency">&nbsp;</a><img class="figure" src="Resources/ChromaKey/translucency.png" border=0 alt="Overlaid image (using translucency)"><p class="caption">Overlaid image (using translucency)</p>
<div class="spacer">&nbsp;</div>

<a name="howtohowcaniimplementachromakeycompositiononimagestranslucencydetailoftheoverlaidimageusingtranslucency">&nbsp;</a><img class="figure" src="Resources/ChromaKey/translucency_zoom.png" border=0 alt="Detail of the overlaid image (using translucency)"><p class="caption">Detail of the overlaid image (using translucency)</p>
<div class="spacer">&nbsp;</div>


<p>Another way to calculate translucency is using a color space based on hue -- this way, we can calculate 
the differences between the transparent color and a pixel's color in a more intuitive way.</p>

<p>The next example shows how to calculate the translucency using the HSB (hue, saturation, brightness) color space and a 
user-defined tolerance value.
With a high tolerance value, even colors different than the reference green will be considered translucent,
while with a low value, only colors really close to the reference green will be translucent. More details on the
tolerance value will be shown below.</p> 
<p>The example is implemented in the application in class <tt>TranslucencyByColorsHSB</tt>.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="howtohowcaniimplementachromakeycompositiononimagestranslucencytranslucencybycolorshsbjava">&nbsp;</a><a href="/web/20151118120511/http://150.163.105.39:8080/JIPCookbook//Code/howto/chromakey/TranslucencyByColorsHSB.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>TranslucencyByColorsHSB.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;howto.chromakey;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Color;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;demonstrates&nbsp;how&nbsp;to&nbsp;select&nbsp;a&nbsp;color&nbsp;for&nbsp;translucency.&nbsp;It&nbsp;reads&nbsp;two&nbsp;images&nbsp;from&nbsp;the&nbsp;disk,  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;drawing&nbsp;the&nbsp;second&nbsp;one&nbsp;over&nbsp;the&nbsp;first&nbsp;one&nbsp;but&nbsp;considering&nbsp;green&nbsp;pixels&nbsp;on&nbsp;the&nbsp;second&nbsp;one&nbsp;as  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;transparent/translucent&nbsp;--&nbsp;the&nbsp;closer&nbsp;the&nbsp;color&nbsp;is&nbsp;to&nbsp;green,&nbsp;the&nbsp;more&nbsp;transparent&nbsp;it&nbsp;is.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;In&nbsp;this&nbsp;example,&nbsp;the&nbsp;similarity&nbsp;to&nbsp;green&nbsp;will&nbsp;be&nbsp;calculated&nbsp;using&nbsp;the&nbsp;hue&nbsp;coordinate&nbsp;(HSB&nbsp;color  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;space).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;TranslucencyByColorsHSB  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;@param&nbsp;args&nbsp;the&nbsp;arguments&nbsp;for&nbsp;the&nbsp;application&nbsp;(will&nbsp;be&nbsp;ignored)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;@throws&nbsp;IOException&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;input&nbsp;images.&nbsp;We&nbsp;assume&nbsp;that&nbsp;the&nbsp;first&nbsp;image&nbsp;is&nbsp;the&nbsp;background,&nbsp;and&nbsp;that&nbsp;it&nbsp;is&nbsp;larger  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;than&nbsp;the&nbsp;second&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;background&nbsp;=&nbsp;ImageIO.read(<span class="specialword">new</span>&nbsp;File(<span class="string">"dsc00099_large.jpg"</span>));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=&nbsp;background.getRaster();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;layer&nbsp;=&nbsp;ImageIO.read(<span class="specialword">new</span>&nbsp;File(<span class="string">"UFO.png"</span>));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;layer.getWidth();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;layer.getHeight();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;will&nbsp;shift&nbsp;the&nbsp;overlay&nbsp;image&nbsp;over&nbsp;the&nbsp;background&nbsp;this&nbsp;amount.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;shiftX&nbsp;=&nbsp;72;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;shiftY&nbsp;=&nbsp;80;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Slow&nbsp;method:&nbsp;scan&nbsp;all&nbsp;input&nbsp;(layer)&nbsp;image&nbsp;pixels&nbsp;and&nbsp;corresponding&nbsp;background&nbsp;pixels.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;its&nbsp;"greenness"&nbsp;and&nbsp;translucency&nbsp;and&nbsp;recreate&nbsp;the&nbsp;pixels'&nbsp;values,&nbsp;plotting  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;them&nbsp;over&nbsp;the&nbsp;background.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;iPixel,lPixel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;targetHue&nbsp;=&nbsp;1f/3f;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;tolerance&nbsp;=&nbsp;0.1f;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;iRed,iGreen,iBlue,lRed,lGreen,lBlue,oRed,oGreen,oBlue;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Background&nbsp;pixels.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;iPixel&nbsp;=&nbsp;background.getRGB(w+shiftX,h+shiftY);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;iRed&nbsp;&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)((iPixel&amp;0x00FF0000)&gt;&gt;&gt;16);&nbsp;<span class="comment">//&nbsp;Red&nbsp;level  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;iGreen&nbsp;=&nbsp;(<span class="datatype">int</span>)((iPixel&amp;0x0000FF00)&gt;&gt;&gt;8);&nbsp;&nbsp;<span class="comment">//&nbsp;Green&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;iBlue&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)&nbsp;(iPixel&amp;0x000000FF);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Blue&nbsp;level  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Layer&nbsp;pixels.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lPixel&nbsp;=&nbsp;layer.getRGB(w,h);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lRed&nbsp;&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)((lPixel&amp;0x00FF0000)&gt;&gt;&gt;16);&nbsp;<span class="comment">//&nbsp;Red&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lGreen&nbsp;=&nbsp;(<span class="datatype">int</span>)((lPixel&amp;0x0000FF00)&gt;&gt;&gt;8);&nbsp;&nbsp;<span class="comment">//&nbsp;Green&nbsp;level  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lBlue&nbsp;&nbsp;=&nbsp;(<span class="datatype">int</span>)&nbsp;(lPixel&amp;0x000000FF);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Blue&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>[]&nbsp;lHSB&nbsp;=&nbsp;Color.RGBtoHSB(lRed,lGreen,lBlue,<span class="specialword">null</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;translucency,&nbsp;based&nbsp;on&nbsp;the&nbsp;green&nbsp;value&nbsp;of&nbsp;the&nbsp;layer,&nbsp;using&nbsp;HSB&nbsp;coordinates.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;To&nbsp;make&nbsp;calculations&nbsp;easier,&nbsp;let's&nbsp;assume&nbsp;that&nbsp;the&nbsp;translucency&nbsp;is&nbsp;a&nbsp;value&nbsp;between&nbsp;0&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;(invisible)&nbsp;and&nbsp;1&nbsp;(opaque).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;deltaHue&nbsp;=&nbsp;Math.abs(lHSB[0]-targetHue);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;translucency&nbsp;=&nbsp;(deltaHue/tolerance);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;translucency&nbsp;=&nbsp;Math.min(translucency,1f);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Recalculate&nbsp;the&nbsp;RGB&nbsp;coordinates&nbsp;of&nbsp;the&nbsp;layer&nbsp;and&nbsp;background&nbsp;pixels,&nbsp;using&nbsp;the&nbsp;translucency  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;as&nbsp;a&nbsp;weight.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oRed&nbsp;=&nbsp;(<span class="datatype">int</span>)(translucency*lRed+(1-translucency)*iRed);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oGreen&nbsp;=&nbsp;(<span class="datatype">int</span>)(translucency*lGreen+(1-translucency)*iGreen);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oBlue&nbsp;=&nbsp;(<span class="datatype">int</span>)(translucency*lBlue+(1-translucency)*iBlue);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;pixel&nbsp;on&nbsp;the&nbsp;output&nbsp;image's&nbsp;raster.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raster.setPixel(w+shiftX,h+shiftY,<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{oRed,oGreen,oBlue,255});&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="comment">//&nbsp;end&nbsp;for  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Save&nbsp;the&nbsp;image&nbsp;as&nbsp;a&nbsp;PNG&nbsp;via&nbsp;ImageIO.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(background,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"translucencyHSB.png"</span>));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Display&nbsp;the&nbsp;input&nbsp;and&nbsp;output&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JFrame&nbsp;frame&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JFrame(<span class="string">"Translucency&nbsp;by&nbsp;Colors&nbsp;(HSB)"</span>);&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.add(<span class="specialword">new</span>&nbsp;DisplayJAI(background));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.pack();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setVisible(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>
 

<p>The resulting image (shown below) appears even better than the obtained with other approaches in this chapter. The green tint in the
UFO's edge is almost unnoticeable.</p>

<a name="howtohowcaniimplementachromakeycompositiononimagestranslucencyoverlaidimageusingtranslucencycalculatedinthehsbcolorspace">&nbsp;</a><img class="figure" src="Resources/ChromaKey/translucencyHSB.png" border=0 alt="Overlaid image (using translucency calculated in the HSB color space)"><p class="caption">Overlaid image (using translucency calculated in the HSB color space)</p>
<div class="spacer">&nbsp;</div>


<a name="howtohowcaniimplementachromakeycompositiononimagestranslucencydetailofoverlaidimageusingtranslucencycalculatedinthehsbcolorspace">&nbsp;</a><img class="figure" src="Resources/ChromaKey/translucencyHSB_zoom.png" border=0 alt="Detail of overlaid image (using translucency calculated in the HSB color space)"><p class="caption">Detail of overlaid image (using translucency calculated in the HSB color space)</p>
<div class="spacer">&nbsp;</div>


<p>A low tolerance value will ensure that only pixels which color is very close to green will be translucent, probably causing some
 greenish pixels to be only partially translucent. 
A large value will make greenish pixels more transparent, but can affect also other colors, making them translucent too.
The figure below shows details on the resulting images obtained with three different tolerance values. We can see that a value of 0.4
removes all the greenish
tint around the edges of the UFO, but also makes the other colors partially translucent, specially the ones which hue is close to green.
</p>

<table class="simpletable">
  <tr>
    <td class="simpletable legend threecolumns">
      <a name="howtohowcaniimplementachromakeycompositiononimagestranslucencycompositionusingtolerancevalue001">&nbsp;</a><img class="figure" src="Resources/ChromaKey/translucencyHSB_001.png" border=0 alt="Composition using tolerance value 0.01"><p class="caption">Composition using tolerance value 0.01</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend threecolumns">
      <a name="howtohowcaniimplementachromakeycompositiononimagestranslucencycompositionusingtolerancevalue01">&nbsp;</a><img class="figure" src="Resources/ChromaKey/translucencyHSB_010.png" border=0 alt="Composition using tolerance value 0.1"><p class="caption">Composition using tolerance value 0.1</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend threecolumns">
      <a name="howtohowcaniimplementachromakeycompositiononimagestranslucencycompositionusingtolerancevalue04">&nbsp;</a><img class="figure" src="Resources/ChromaKey/translucencyHSB_040.png" border=0 alt="Composition using tolerance value 0.4"><p class="caption">Composition using tolerance value 0.4</p>
<div class="spacer">&nbsp;</div>

    </td>
  </tr>
</table>




<p class="section"><a name="howtohowcaniimplementachromakeycompositiononimagestipsandtricks"></a>Tips and tricks</p>


<p>In the examples in this chapter we used a PNG overlay image (lossless compression) which was set over a JPEG image. 
If we use a JPEG or other lossy compressed image as the overlay, the lossy compression artifacts may cause smudges and other
artifacts when overlaid.</p>

<p>This is shown in the example below, where a highly compressed image was overlaid into another. Even with a good composition algorithm
the compression artifacts causes the green halo and other defects. To avoid this, we must use losslessly compressed images as overlays,
or at least images compressed without too much loss of information.
</p>

<a name="howtohowcaniimplementachromakeycompositiononimagestipsandtricksoverlaidimagewithacompressedoverlayimage">&nbsp;</a><img class="figure" src="Resources/ChromaKey/translucencyHSB2.png" border=0 alt="Overlaid image (with a compressed overlay image)"><p class="caption">Overlaid image (with a compressed overlay image)</p>
<div class="spacer">&nbsp;</div>

<a name="howtohowcaniimplementachromakeycompositiononimagestipsandtricksdetailofoverlaidimagewithacompressedoverlayimage">&nbsp;</a><img class="figure" src="Resources/ChromaKey/translucencyHSB2_zoom.png" border=0 alt="Detail of overlaid image (with a compressed overlay image)"><p class="caption">Detail of overlaid image (with a compressed overlay image)</p>
<div class="spacer">&nbsp;</div>


<p>Some problems that may occur (and possible solutions) are:</p>
<ul>
<li>A non-homogeneous background in the overlay image (which is bound to happen in real green or blue backgrounds). 
In this case it may help use more lenient 
tolerance values, or even use more than one transparent color and calculating translucency based on relative translucency to those colors.</li>
<li>Non-background regions with the same color as the background: for example, if a person is wearing a shirt with a drawing with
colors similar to the background, those colors may cause "holes" when the images are overlaid. In this case we may consider a smarter
algorithm, which will detect small regions that can be considered as non-background and rendered without translucency. There is no
guarantee that this will work, since it is very hard to determine which small regions with similar colors are background and foreground
(we expect background to be a large, contiguous region, but depending on the subject holes may naturally occur -- 
think about a person with his/her hands on his/her hips.) </li>
</ul>

<p>Some other possible ways to get better looking results are:</p>
<ul>
<li>Using not only the hue, but also saturation and brightness/lightness information to calculate translucency. This will help 
when there are slightly green tinted white, gray or black colors in the overlay. Very light, dark colors can be considered foreground
regardless of the hue. </li>
</ul>







<p class="section"><a name="howtohowcaniimplementachromakeycompositiononimagesreferences"></a>References</p>

<p>Some links with more information:</p>
<ul>
<li><a href="/web/20151118120511/http://en.wikipedia.org/wiki/Bluescreen">Wikipedia: Chroma Key</a>.</li>
<li><a href="/web/20151118120511/http://www.gamedev.net/community/forums/topic.asp?topic_id=471433">Chroma Keyer/Green Screen</a>: topic in a <a href="/web/20151118120511/http://www.gamedev.net/">Gamedev.net</a> forum.</li>
<li><a href="/web/20151118120511/http://www.mediacollege.com/video/special-effects/green-screen/">How to Make a Green Screen</a>.</li>
</ul>




<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="6320-howto-pansharpening.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="6320-howto-pansharpening.jsp">How can I implement a pan sharpening algorithm?</a></td><td class="navigation1"><a href="6330-howto-ndvi.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="6330-howto-ndvi.jsp">How can I calculate and display a NDVI image?</a></td><td class="navigation0"><a href="6520-howto-chromakey.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="6520-howto-chromakey.jsp">How can I implement a chroma key composition on images?</a></td><td class="navigation1"><a href="7020-tutorial-supervisedclassification.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="7020-tutorial-supervisedclassification.jsp">A Brief Tutorial on Supervised Image Classification</a></td><td class="navigation2"><a href="8000-jaistuff.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="8000-jaistuff.jsp">Old code from the JAIStuff Project</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20151118120511/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20151118120511/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20151118120511/https://ssl." : "/web/20151118120511/http://www.");
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
     FILE ARCHIVED ON 12:05:11 Nov 18, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 1:18:34 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
