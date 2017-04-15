


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app0.us.archive.org";archive_analytics.values.server_ms=330;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/1300-create-rgb.jsp";

var firstYear = 1996;
var displayDay = "7";
var displayMonth = "Apr";
var displayYear = "2016";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/1300-create-rgb.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20160407134806" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20151225145424/http://www.lac.inpe.br/JIPCookbook/1300-create-rgb.jsp" title="25 Dec 2015">DEC</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 13:48:06 Apr 7, 2016">APR</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20160508173814/http://www.lac.inpe.br/JIPCookbook/1300-create-rgb.jsp" title="8 May 2016"><strong>MAY</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20151225145424/http://www.lac.inpe.br/JIPCookbook/1300-create-rgb.jsp" title="14:54:24 Dec 25, 2015"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 13:48:06 Apr 7, 2016">7</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20160508173814/http://www.lac.inpe.br/JIPCookbook/1300-create-rgb.jsp" title="17:38:14 May 8, 2016"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20150313185447/http://www.lac.inpe.br/JIPCookbook/1300-create-rgb.jsp" title="13 Mar 2015"><strong>2015</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 13:48:06 Apr 7, 2016">2016</td>
	       <td class="f" nowrap="nowrap">
               
                   2017
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20160407134806*/http://www.lac.inpe.br/JIPCookbook/1300-create-rgb.jsp" title="See a list of every capture for this URL">21 captures</a>
           <div class="r" title="Timespan for captures of this URL">1 Mar 10 - 11 Jul 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:001010000001_2011:-1:010100111010_2012:-1:100201000000_2013:-1:000000000000_2014:-1:000000000000_2015:-1:001100000011_2016:3:000111100000_2017:-1:000000000000" />
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
<a href="/web/20160407134806/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20160407134806/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">Creating RGB Images</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjai">Without using JAI</a>
</div>
<div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjairgbimages">RGB Images</a>
</div>
<div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjairgbimageswithlookuptables">RGB images with look-up tables</a>
</div>
<div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaicreatingimagesfromguicomponents">Creating images from GUI components</a>
</div>
<div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaitranslucenttransparentimages">Translucent/transparent images</a>
</div>
<div class="toc3"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimagesusingjai">Using JAI</a>
</div>
<div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimagesusingjairgbimages">RGB Images</a>
</div>
<div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimagesusingjairgbimageswithlookuptables">RGB images with look-up tables</a>
</div>
</div>

<p class="section"><a name="imageanddatamanipulationcreatingrgbimagesintroduction"></a>Introduction</p>

<p>This chapter shows how we can create RGB color images (and their variantes, such as RGBA, with an additional channel or band for
translucency) using Java, with or without the
Java Advanced Imaging API.</p>



<p class="section"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjai"></a>Without using JAI</p>


<p class="subsection"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjairgbimages"></a>RGB Images</p>


<p>
The simplest way to create RGB images in Java is the same as used in other image types: through an instance of 
<tt>BufferedImage</tt>, this time with a RGB color data type (<tt>BufferedImage.TYPE_INT_RGB</tt>) and then using 
this image's <tt>Raster</tt>
to set the pixels' values. The steps to do this are:
</p>
<ol>
<li>Create an instance of <tt>BufferedImage</tt> with the image's width and height in pixels and with an image type of
<tt>BufferedImage.TYPE_INT_RGB</tt>.</li>
<li>Get this image's <tt>Raster</tt> -- we must get it as an instance of <tt>WritableRaster</tt> so we can modify its pixels.</li>
<li>Change the pixels through the instance of <tt>WritableRaster</tt>. We can use the methods 
<tt>setSample</tt> to set a particular sample in a particular band of the <tt>WritableRaster</tt>;
<tt>setPixel</tt> to set a particular pixel (passing an array of values corresponding to all bands);
or <tt>setSamples</tt> and <tt>setPixels</tt>, which does the same for regions on the image. <br>
In the examples in this chapter we will deal with only one band.</li>
</ol>
<p>The steps are demonstrated in the class <tt>CreateRGBImageNoJAI</tt>, shown below. That class creates a 5-color pattern, 
creating first arrays for the five colors and then painting the pixels on specific regions using those colors.</p> 

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaicreatergbimagenojaijava">&nbsp;</a><a href="/web/20160407134806/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateRGBImageNoJAI.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateRGBImageNoJAI.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;color&nbsp;pattern&nbsp;image&nbsp;without&nbsp;using&nbsp;JAI&nbsp;methods&nbsp;or&nbsp;operators.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;The&nbsp;pixels&nbsp;in&nbsp;the&nbsp;image&nbsp;will&nbsp;be&nbsp;set&nbsp;individually&nbsp;by&nbsp;calling&nbsp;the&nbsp;Raster.setPixel&nbsp;method.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateRGBImageNoJAI  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;starting&nbsp;point.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;483;&nbsp;<span class="comment">//&nbsp;Dimensions&nbsp;of&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;483;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;Buffered&nbsp;Image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;image&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;its&nbsp;raster&nbsp;to&nbsp;set&nbsp;the&nbsp;pixels'&nbsp;values.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=&nbsp;image.getRaster();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;colors.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;red&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{255,0,0};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;green&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{0,255,0};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;blue&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{0,0,255};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;yellow&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{255,255,0};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;black&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{0,0,0};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Put&nbsp;the&nbsp;pixels&nbsp;on&nbsp;the&nbsp;raster,&nbsp;choosing&nbsp;a&nbsp;color&nbsp;depending&nbsp;on&nbsp;its&nbsp;coordinates.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;((w&nbsp;&gt;=&nbsp;17)&nbsp;&amp;&amp;&nbsp;(w&nbsp;&lt;&nbsp;17+216)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&gt;=&nbsp;17)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&lt;&nbsp;17+216))&nbsp;raster.setPixel(w,h,red);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;((w&nbsp;&gt;=&nbsp;250)&nbsp;&amp;&amp;&nbsp;(w&nbsp;&lt;&nbsp;250+216)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&gt;=&nbsp;17)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&lt;&nbsp;17+216))&nbsp;raster.setPixel(w,h,green);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;((w&nbsp;&gt;=&nbsp;17)&nbsp;&amp;&amp;&nbsp;(w&nbsp;&lt;&nbsp;17+216)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&gt;=&nbsp;250)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&lt;&nbsp;250+216))&nbsp;raster.setPixel(w,h,yellow);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;((w&nbsp;&gt;=&nbsp;250)&nbsp;&amp;&amp;&nbsp;(w&nbsp;&lt;&nbsp;250+216)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&gt;=&nbsp;250)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&lt;&nbsp;250+216))&nbsp;raster.setPixel(w,h,blue);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;raster.setPixel(w,h,black);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;image&nbsp;using&nbsp;the&nbsp;PNG&nbsp;format.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(image,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"rgbpattern.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The resulting pattern is shown in the image below.</p>

<a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaipatterncreatedbythettcreatergbimagenojaittclass">&nbsp;</a><a href="Resources/Data/rgbpattern.png"><img class="figure" src="Resources/Data/rgbpattern_icon.jpg" border=0 alt="Pattern created by the <tt>CreateRGBImageNoJAI</tt> class."></a>
<p class="caption">Pattern created by the <tt>CreateRGBImageNoJAI</tt> class.<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>


<p>If we need to "paint" regions of the image with the same color, we can use the class <tt>Raster</tt>'s
<tt>setPixels</tt> and <tt>setSamples</tt> methods. The method <tt>setPixels</tt> can be used to "paint" all bands in a rectangular region,
while <tt>setSamples</tt> "paint" a specific band for a rectangular region. Both methods are used in class 
<tt>CreateRGBImageNoJAI2</tt>, shown below.
</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaicreatergbimagenojai2java">&nbsp;</a><a href="/web/20160407134806/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateRGBImageNoJAI2.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateRGBImageNoJAI2.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.Arrays;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;color&nbsp;pattern&nbsp;image&nbsp;without&nbsp;using&nbsp;JAI&nbsp;methods&nbsp;or&nbsp;operators.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;The&nbsp;pixels&nbsp;in&nbsp;the&nbsp;image&nbsp;will&nbsp;be&nbsp;set&nbsp;in&nbsp;blocks&nbsp;by&nbsp;calling&nbsp;the&nbsp;Raster.setPixels&nbsp;and  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Raster.setSamples&nbsp;methods.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateRGBImageNoJAI2  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;starting&nbsp;point.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;483;&nbsp;<span class="comment">//&nbsp;Dimensions&nbsp;of&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;483;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;Buffered&nbsp;Image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;image&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;its&nbsp;raster&nbsp;to&nbsp;set&nbsp;the&nbsp;pixels'&nbsp;values.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=&nbsp;image.getRaster();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;"Fill"&nbsp;the&nbsp;whole&nbsp;image&nbsp;with&nbsp;black.&nbsp;This&nbsp;is&nbsp;not&nbsp;strictly&nbsp;required&nbsp;since&nbsp;non-initialized&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;pixels&nbsp;are&nbsp;black&nbsp;by&nbsp;default.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;background&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[3*image.getWidth()*image.getHeight()];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(background,0);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setPixels(0,0,image.getWidth(),image.getHeight(),background);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;block&nbsp;of&nbsp;samples&nbsp;for&nbsp;maximum&nbsp;and&nbsp;minimum&nbsp;RGB&nbsp;values.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;min&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[216*216];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(min,0);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;max&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[216*216];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(max,255);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;red&nbsp;block.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(17,17,216,216,0,max);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(17,17,216,216,1,min);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(17,17,216,216,2,min);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;green&nbsp;block.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(250,17,216,216,0,min);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(250,17,216,216,1,max);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(250,17,216,216,2,min);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;yellow&nbsp;block.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(17,250,216,216,0,max);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(17,250,216,216,1,max);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(17,250,216,216,2,min);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;blue&nbsp;block.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(250,250,216,216,0,min);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(250,250,216,216,1,min);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(250,250,216,216,2,max);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;image&nbsp;using&nbsp;the&nbsp;PNG&nbsp;format.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(image,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"rgbpattern2.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The image created by class <tt>CreateRGBImageNoJAI2</tt> is the same as the one created by class <tt>CreateRGBImageNoJAI</tt>, shown above.</p>

<p>We can also "paint" an instance of <tt>BufferedImage</tt> by getting its graphics context and using graphics primitives to
draw on it -- the drawings will automatically be rendered in the image. Class <tt>CreateRGBImageNoJAI3</tt> below shows how to do it. 
The pattern it creates is the same created by the two examples above.
</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaicreatergbimagenojai3java">&nbsp;</a><a href="/web/20160407134806/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateRGBImageNoJAI3.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateRGBImageNoJAI3.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Color;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Graphics;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;color&nbsp;pattern&nbsp;image&nbsp;without&nbsp;using&nbsp;JAI&nbsp;methods&nbsp;or&nbsp;operators.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;The&nbsp;pixels&nbsp;in&nbsp;the&nbsp;image&nbsp;will&nbsp;be&nbsp;painted&nbsp;through&nbsp;a&nbsp;Graphics&nbsp;context&nbsp;obtained&nbsp;from&nbsp;the&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateRGBImageNoJAI3  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;starting&nbsp;point.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;483;&nbsp;<span class="comment">//&nbsp;Dimensions&nbsp;of&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;483;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;Buffered&nbsp;Image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;image&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Instead&nbsp;of&nbsp;using&nbsp;a&nbsp;raster&nbsp;to&nbsp;"paint"&nbsp;this&nbsp;image,&nbsp;let's&nbsp;paint&nbsp;it&nbsp;by&nbsp;using&nbsp;a&nbsp;Graphics&nbsp;context.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Graphics&nbsp;g&nbsp;=&nbsp;image.getGraphics();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;whole&nbsp;image&nbsp;with&nbsp;black.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g.setColor(Color.BLACK);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g.fillRect(0,0,image.getWidth(),image.getHeight());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;red&nbsp;block.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g.setColor(Color.RED);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g.fillRect(17,17,216,216);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;green&nbsp;block.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g.setColor(Color.GREEN);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g.fillRect(250,17,216,216);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;yellow&nbsp;block.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g.setColor(Color.YELLOW);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g.fillRect(17,250,216,216);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;blue&nbsp;block.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g.setColor(Color.BLUE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g.fillRect(250,250,216,216);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;image&nbsp;using&nbsp;the&nbsp;PNG&nbsp;format.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(image,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"rgbpattern3.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>






<p class="subsection"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjairgbimageswithlookuptables"></a>RGB images with look-up tables</p>


<p>Creation of colormapped images (with a LUT or look-up table) is also very simple. First we need to create an instance
of <tt>IndexColorModel</tt> with three arrays corresponding to the red, green and blue components of the colors we will use, then
create an instance of <tt>BufferedImage</tt> with a data type of <tt>BufferedImage.TYPE_BYTE_INDEXED</tt> and the
color table. We can then set the pixels of the image to the indexes of the color table. A simple example, which creates a 
color TV test pattern, is given by class <tt>CreateRGBImageNoJAIWithLUT</tt> below.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaicreatergbimagenojaiwithlutjava">&nbsp;</a><a href="/web/20160407134806/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateRGBImageNoJAIWithLUT.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateRGBImageNoJAIWithLUT.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.IndexColorModel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.Arrays;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;color&nbsp;image&nbsp;using&nbsp;a&nbsp;LUT&nbsp;or&nbsp;colormap.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;The&nbsp;JAI&nbsp;API&nbsp;is&nbsp;not&nbsp;used&nbsp;in&nbsp;this&nbsp;example.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateRGBImageNoJAIWithLUT  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Basic&nbsp;palette&nbsp;for&nbsp;a&nbsp;TV&nbsp;color&nbsp;bar-like&nbsp;pattern&nbsp;(WYCGMRBK).&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;nColors&nbsp;=&nbsp;8;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>&nbsp;b000&nbsp;=&nbsp;(<span class="datatype">byte</span>)0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>&nbsp;b255&nbsp;=&nbsp;(<span class="datatype">byte</span>)255;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[]&nbsp;reds&nbsp;&nbsp;&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[]{b255,b255,b000,b000,b255,b255,b000,b000};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[]&nbsp;greens&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[]{b255,b255,b255,b255,b000,b000,b000,b000};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[]&nbsp;blues&nbsp;&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[]{b255,b000,b255,b000,b255,b000,b255,b000};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;700;&nbsp;<span class="comment">//&nbsp;Dimensions&nbsp;of&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;500;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;create&nbsp;the&nbsp;IndexColorModel&nbsp;for&nbsp;this&nbsp;image.&nbsp;The&nbsp;first&nbsp;argument&nbsp;for&nbsp;the&nbsp;constructor  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;is&nbsp;the&nbsp;number&nbsp;of&nbsp;bits&nbsp;required&nbsp;for&nbsp;the&nbsp;color&nbsp;map.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;IndexColorModel&nbsp;colorModel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;IndexColorModel(3,nColors,reds,greens,blues);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;create&nbsp;a&nbsp;BufferedImage&nbsp;for&nbsp;an&nbsp;indexed&nbsp;color&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;im&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedImage(width,height,BufferedImage.TYPE_BYTE_INDEXED,colorModel);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;its&nbsp;raster&nbsp;to&nbsp;set&nbsp;the&nbsp;pixels'&nbsp;values.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=&nbsp;im.getRaster();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Put&nbsp;the&nbsp;pixels&nbsp;on&nbsp;the&nbsp;raster.&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c=0;c&lt;7;c++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;fill&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[100*450];&nbsp;<span class="comment">//&nbsp;A&nbsp;large&nbsp;block...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(fill,c);&nbsp;&nbsp;<span class="comment">//&nbsp;..&nbsp;&nbsp;filled&nbsp;with&nbsp;one&nbsp;of&nbsp;the&nbsp;7&nbsp;first&nbsp;colors&nbsp;in&nbsp;the&nbsp;LUT.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(c*100,0,100,450,0,fill);&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;bottom&nbsp;part&nbsp;of&nbsp;the&nbsp;pattern.&nbsp;We'll&nbsp;use&nbsp;indices&nbsp;to&nbsp;indices&nbsp;here.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;indices&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{6,7,4,7,2,7,0};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c=0;c&lt;7;c++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;fill&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[100*50];&nbsp;<span class="comment">//&nbsp;A&nbsp;small&nbsp;block...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(fill,indices[c]);&nbsp;&nbsp;<span class="comment">//&nbsp;..&nbsp;&nbsp;filled&nbsp;with&nbsp;one&nbsp;of&nbsp;the&nbsp;7&nbsp;colors&nbsp;in&nbsp;the&nbsp;new&nbsp;table.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(c*100,450,100,50,0,fill);&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;image.&nbsp;Use&nbsp;PNG&nbsp;format,&nbsp;it&nbsp;is&nbsp;more&nbsp;flexible&nbsp;for&nbsp;indexed&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(im,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"rgbpattern4.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The image created by class <tt>CreateRGBImageNoJAIWithLUT</tt> is shown below.</p>

<a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaipatterncreatedbythettcreatergbimagenojaiwithlutttclass">&nbsp;</a><a href="Resources/Data/rgbpattern4.png"><img class="figure" src="Resources/Data/rgbpattern4_icon.jpg" border=0 alt="Pattern created by the <tt>CreateRGBImageNoJAIWithLUT</tt> class."></a>
<p class="caption">Pattern created by the <tt>CreateRGBImageNoJAIWithLUT</tt> class.<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>
 
 



<p class="subsection"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaicreatingimagesfromguicomponents"></a>Creating images from GUI components</p>


<p>Color images can also be created from components, e.g. classes that inherits from <tt>JComponent</tt>.
The method <tt>paintComponent</tt> is usually overwritten to do custom painting for the component. Custom painting can be
done using internal data, data passed as arguments to the component's constructor, data read from files, sockets, URLs, etc. 
Note that the component dimensions may be larger than the 
computer display area in pixels.
</p>

<p>Class <tt>MyComponent</tt>, shown below, extends <tt>JComponent</tt> and can be used to draw a relatively complex pattern. The
component's dimensions are set on its constructor, and the details of the drawing depends on the component's dimensions.</p>
<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaimycomponentjava">&nbsp;</a><a href="/web/20160407134806/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/MyComponent.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>MyComponent.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Color;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Dimension;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Font;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.FontMetrics;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Graphics;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Graphics2D;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.geom.Ellipse2D;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JComponent;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;represents&nbsp;a&nbsp;simple&nbsp;component&nbsp;which&nbsp;draws&nbsp;some&nbsp;stuff&nbsp;and&nbsp;which&nbsp;size&nbsp;can&nbsp;be&nbsp;larger  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;than&nbsp;the&nbsp;screen.&nbsp;It&nbsp;will&nbsp;be&nbsp;used&nbsp;by&nbsp;the&nbsp;CreateImageFromComponent&nbsp;application.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Note&nbsp;that&nbsp;the&nbsp;implementation&nbsp;of&nbsp;this&nbsp;component&nbsp;is&nbsp;unnecessarily&nbsp;slow&nbsp;--&nbsp;its&nbsp;appearance&nbsp;never&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;changes,&nbsp;and&nbsp;there&nbsp;are&nbsp;lots&nbsp;of&nbsp;elements&nbsp;being&nbsp;drawn.&nbsp;A&nbsp;faster&nbsp;approach&nbsp;would&nbsp;be&nbsp;create&nbsp;an  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;image&nbsp;inside&nbsp;the&nbsp;component,&nbsp;draw&nbsp;on&nbsp;it&nbsp;the&nbsp;first&nbsp;time&nbsp;it&nbsp;is&nbsp;required&nbsp;and&nbsp;then&nbsp;draw&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;whenever&nbsp;a&nbsp;repaint&nbsp;is&nbsp;required.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;MyComponent&nbsp;<span class="classword">extends</span>&nbsp;JComponent  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;desired&nbsp;width&nbsp;and&nbsp;height&nbsp;of&nbsp;the&nbsp;component.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>&nbsp;width,height;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;Size&nbsp;of&nbsp;the&nbsp;plot&nbsp;border.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="datatype">int</span>&nbsp;border&nbsp;=&nbsp;40;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;font&nbsp;for&nbsp;text&nbsp;drawing.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;Font&nbsp;font&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Font(Font.DIALOG,Font.PLAIN,10);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor&nbsp;for&nbsp;the&nbsp;class.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;w&nbsp;the&nbsp;desired&nbsp;width&nbsp;for&nbsp;the&nbsp;component.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;h&nbsp;the&nbsp;desired&nbsp;height&nbsp;for&nbsp;the&nbsp;component.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;MyComponent(<span class="datatype">int</span>&nbsp;w,<span class="datatype">int</span>&nbsp;h)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">super</span>();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;width&nbsp;=&nbsp;w;&nbsp;height&nbsp;=&nbsp;h;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Returns&nbsp;the&nbsp;maximum&nbsp;size&nbsp;for&nbsp;this&nbsp;component&nbsp;(i.e.&nbsp;the&nbsp;preferred&nbsp;size).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;Dimension&nbsp;getMaximumSize()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;getPreferredSize();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Returns&nbsp;the&nbsp;minimum&nbsp;size&nbsp;for&nbsp;this&nbsp;component&nbsp;(i.e.&nbsp;the&nbsp;preferred&nbsp;size).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;Dimension&nbsp;getMinimumSize()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;getPreferredSize();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Returns&nbsp;the&nbsp;preferred&nbsp;size&nbsp;for&nbsp;this&nbsp;component.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;Dimension&nbsp;getPreferredSize()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;<span class="specialword">new</span>&nbsp;Dimension(width+2*border,height+2*border);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Paint&nbsp;the&nbsp;component.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">protected</span>&nbsp;<span class="datatype">void</span>&nbsp;paintComponent(Graphics&nbsp;g)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">super</span>.paintComponent(g);&nbsp;<span class="comment">//&nbsp;Do&nbsp;I&nbsp;really&nbsp;need&nbsp;this?  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Graphics2D&nbsp;g2d&nbsp;=&nbsp;(Graphics2D)g;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Black&nbsp;background.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.setColor(Color.BLACK);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.fillRect(0,0,width+2*border,height+2*border);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Sets&nbsp;the&nbsp;font&nbsp;and&nbsp;gets&nbsp;some&nbsp;information&nbsp;about&nbsp;its&nbsp;metrics.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.setFont(font);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;FontMetrics&nbsp;metrics&nbsp;=&nbsp;g2d.getFontMetrics();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;halfFontHeight&nbsp;=&nbsp;metrics.getHeight()/2;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Draw&nbsp;vertical&nbsp;lines.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;=width;i+=20)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Draw&nbsp;the&nbsp;text&nbsp;(rotated)&nbsp;on&nbsp;the&nbsp;upper&nbsp;border.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.setColor(Color.GREEN);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.translate(i+halfFontHeight+border,35);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.rotate(-Math.PI/2);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.drawString(<span class="string">""</span>+i,0,0);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.rotate(Math.PI/2);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.translate(-(i+halfFontHeight+border),-35);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Draw&nbsp;the&nbsp;vertical&nbsp;line.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.setColor(<span class="specialword">new</span>&nbsp;Color(255,255,0,80));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.drawLine(i+border,border,i+border,height+border);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Draw&nbsp;horizontal&nbsp;lines.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;=width;i+=20)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Draw&nbsp;the&nbsp;text&nbsp;on&nbsp;the&nbsp;left&nbsp;border&nbsp;(left&nbsp;aligned).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.setColor(Color.GREEN);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;text&nbsp;=&nbsp;<span class="string">""</span>+i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;textWidth&nbsp;=&nbsp;metrics.stringWidth(text);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.drawString(<span class="string">""</span>+i,35-textWidth,border+i+halfFontHeight);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Draw&nbsp;the&nbsp;horizontal&nbsp;line.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.setColor(<span class="specialword">new</span>&nbsp;Color(255,255,0,80));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.drawLine(border,i+border,width+border,i+border);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Draw&nbsp;a&nbsp;wide&nbsp;ellipse.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.setColor(<span class="specialword">new</span>&nbsp;Color(255,0,180));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.draw(<span class="specialword">new</span>&nbsp;Ellipse2D.Float(border,border,width,height));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Draw&nbsp;a&nbsp;funky&nbsp;X&nbsp;on&nbsp;the&nbsp;middle&nbsp;of&nbsp;the&nbsp;screen.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.setColor(<span class="specialword">new</span>&nbsp;Color(0,180,180,160));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.drawLine(border,border,width+border,height+border);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.drawLine(border,height+border,width+border,border);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Even&nbsp;funkier&nbsp;stuff.&nbsp;Yay&nbsp;!  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;width;i+=20)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Color&nbsp;c&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Color(255,80,0,100+(<span class="datatype">int</span>)(155.*i/width));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.setColor(c);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g2d.drawLine(border,border,i+border,height+border);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The component is used in the class <tt>CreateImageFromComponent</tt> which creates a simple GUI application to display the component and save it to a file.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaicreateimagefromcomponentjava">&nbsp;</a><a href="/web/20160407134806/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateImageFromComponent.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateImageFromComponent.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.BorderLayout;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Graphics;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.ActionEvent;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.ActionListener;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JButton;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JScrollPane;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;shows&nbsp;how&nbsp;one&nbsp;can&nbsp;store&nbsp;the&nbsp;graphics&nbsp;of&nbsp;a&nbsp;component&nbsp;(i.e.&nbsp;what's&nbsp;being&nbsp;drawn&nbsp;in&nbsp;a&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;JComponent)&nbsp;on&nbsp;a&nbsp;file.&nbsp;It&nbsp;does&nbsp;not&nbsp;uses&nbsp;the&nbsp;Robot&nbsp;class&nbsp;and&nbsp;works&nbsp;even&nbsp;with&nbsp;drawings&nbsp;larger&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;than&nbsp;the&nbsp;screen.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateImageFromComponent&nbsp;<span class="classword">extends</span>&nbsp;JFrame&nbsp;<span class="classword">implements</span>&nbsp;ActionListener  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;button&nbsp;that&nbsp;will&nbsp;save&nbsp;the&nbsp;drawing.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JButton&nbsp;save;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;component&nbsp;that&nbsp;will&nbsp;be&nbsp;saved&nbsp;as&nbsp;an&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;MyComponent&nbsp;drawing;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;name&nbsp;which&nbsp;will&nbsp;be&nbsp;used&nbsp;for&nbsp;the&nbsp;file.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;String&nbsp;filename;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor&nbsp;for&nbsp;the&nbsp;class,&nbsp;which&nbsp;will&nbsp;sets&nbsp;its&nbsp;GUI.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;filename&nbsp;the&nbsp;file&nbsp;name&nbsp;for&nbsp;storing&nbsp;the&nbsp;resulting&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;CreateImageFromComponent(String&nbsp;filename)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">this</span>.filename&nbsp;=&nbsp;filename;&nbsp;<span class="comment">//&nbsp;We'll&nbsp;need&nbsp;this&nbsp;later.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;an&nbsp;instance&nbsp;of&nbsp;a&nbsp;class&nbsp;which&nbsp;extends&nbsp;JComponent.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;drawing&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;MyComponent(1200,1200);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;it&nbsp;to&nbsp;the&nbsp;JFrame.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;getContentPane().add(<span class="specialword">new</span>&nbsp;JScrollPane(drawing),BorderLayout.CENTER);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;and&nbsp;add&nbsp;an&nbsp;action&nbsp;button.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;save&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JButton(<span class="string">"Save&nbsp;in&nbsp;file&nbsp;"</span>+filename);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;save.addActionListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;getContentPane().add(save,BorderLayout.SOUTH);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;closing&nbsp;operation&nbsp;so&nbsp;the&nbsp;application&nbsp;is&nbsp;finished.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pack();&nbsp;<span class="comment">//&nbsp;Set&nbsp;an&nbsp;adequated&nbsp;size&nbsp;for&nbsp;the&nbsp;frame.&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setVisible(<span class="specialword">true</span>);&nbsp;<span class="comment">//&nbsp;Show&nbsp;the&nbsp;frame.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;called&nbsp;when&nbsp;we&nbsp;click&nbsp;on&nbsp;the&nbsp;save&nbsp;button.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;actionPerformed(ActionEvent&nbsp;e)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;an&nbsp;image&nbsp;with&nbsp;the&nbsp;dimensions&nbsp;of&nbsp;the&nbsp;component.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;im&nbsp;=&nbsp;(BufferedImage)drawing.createImage(drawing.getWidth(),drawing.getHeight());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;graphics&nbsp;context&nbsp;corresponding&nbsp;to&nbsp;the&nbsp;buffered&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Graphics&nbsp;graphics&nbsp;=&nbsp;im.createGraphics();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(graphics&nbsp;!=&nbsp;<span class="specialword">null</span>)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Draw&nbsp;the&nbsp;component&nbsp;using&nbsp;the&nbsp;image's&nbsp;graphic&nbsp;context.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;drawing.paintComponent(graphics);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;drawing.update(graphics);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;BufferedImage&nbsp;on&nbsp;a&nbsp;file.&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">try</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(im,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(filename));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">catch</span>&nbsp;(IOException&nbsp;e1)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e1.printStackTrace();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Show&nbsp;to&nbsp;the&nbsp;user&nbsp;we're&nbsp;done.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;save.setText(<span class="string">"Saved&nbsp;in&nbsp;file&nbsp;"</span>+filename);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;save.setEnabled(<span class="specialword">false</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;entry&nbsp;point&nbsp;for&nbsp;the&nbsp;application.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;args&nbsp;the&nbsp;arguments&nbsp;to&nbsp;the&nbsp;application.&nbsp;The&nbsp;first&nbsp;one&nbsp;will&nbsp;be&nbsp;used  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;as&nbsp;the&nbsp;output&nbsp;file&nbsp;name.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;CreateImageFromComponent(args[0]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The component, rendered as an image, is shown below.</p>

<a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaipatterncreatedbythettcreateimagefromcomponentttclass">&nbsp;</a><a href="Resources/Data/component.png"><img class="figure" src="Resources/Data/component_icon.jpg" border=0 alt="Pattern created by the <tt>CreateImageFromComponent</tt> class."></a>
<p class="caption">Pattern created by the <tt>CreateImageFromComponent</tt> class.<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>





<p class="subsection"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaitranslucenttransparentimages"></a>Translucent/transparent images</p>


<p>Translucent images are images where pixels are not opaque, meaning that if the image is superposed over another, we may see 
parts of the image underneath where the overlay image is translucent. Creating translucent images in Java is almost
as simple as creating RGB images: all we need to do is create an additional channel or band that will control the pixels'
translucency.</p>

<p>The first step is to create an instance of <tt>BufferedImage</tt> with a data type of <tt>BufferedImage.TYPE_INT_ARGB</tt>.
From this image we get its <tt>WritableRaster</tt> and manipulate it as we did in other examples, but using a fourth
band that controls translucency (zero means totally translucent, 255 means totally opaque, intermediate values control per pixel translucency).</p>

<p>An example is given by class <tt>CreateARGBImageNoJAI</tt>, shown below. This class creates an image with square regions filled with random pixels 
and then creates an translucency or alpha channel with that goes from totally translucent (or transparent) on the center of the image
to totally opaque, on its edges.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaicreateargbimagenojaijava">&nbsp;</a><a href="/web/20160407134806/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateARGBImageNoJAI.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateARGBImageNoJAI.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/JIPCookbook/index.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.Arrays;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;color&nbsp;pattern&nbsp;image&nbsp;with&nbsp;translucency&nbsp;(each&nbsp;individual&nbsp;pixel&nbsp;may&nbsp;have  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;a&nbsp;transparency&nbsp;value),&nbsp;without&nbsp;using&nbsp;JAI&nbsp;methods&nbsp;or&nbsp;operators.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateARGBImageNoJAI  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;starting&nbsp;point.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;512;&nbsp;<span class="comment">//&nbsp;Dimensions&nbsp;of&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;512;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;Buffered&nbsp;Image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;image&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedImage(width,height,BufferedImage.TYPE_INT_ARGB);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;its&nbsp;raster&nbsp;to&nbsp;set&nbsp;the&nbsp;pixels'&nbsp;values.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=&nbsp;image.getRaster();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Paint&nbsp;some&nbsp;randomly-colored&nbsp;blocks.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;r&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[32*32];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;g&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[32*32];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;b&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[32*32];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w+=32)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;width;h+=32)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(r,(<span class="datatype">int</span>)(Math.random()*256));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(g,(<span class="datatype">int</span>)(Math.random()*256));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(b,(<span class="datatype">int</span>)(Math.random()*256));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(w,h,32,32,0,r);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(w,h,32,32,1,g);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(w,h,32,32,2,b);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Paint&nbsp;the&nbsp;translucency&nbsp;layer,&nbsp;in&nbsp;a&nbsp;degrade&nbsp;pattern.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;a&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[512*512];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;width;h++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a[w+h*width]&nbsp;=&nbsp;(<span class="datatype">int</span>)(Math.sqrt((256-w)*(256-w)+(256-h)*(256-h))/1.42);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(0,0,512,512,3,a);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;image&nbsp;using&nbsp;the&nbsp;PNG&nbsp;format.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(image,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"rgbapattern.png"</span>));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The image created with the code in class <tt>CreateARGBImageNoJAI</tt> is shown below.</p>

<a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaipatterncreatedbythettcreateargbimagenojaittclass">&nbsp;</a><a href="Resources/Data/rgbapattern.png"><img class="figure" src="Resources/Data/rgbapattern_icon.jpg" border=0 alt="Pattern created by the <tt>CreateARGBImageNoJAI</tt> class."></a>
<p class="caption">Pattern created by the <tt>CreateARGBImageNoJAI</tt> class.<br>Click on the icon for a larger image.<br>Note that the translucency may not be rendered correctly in your browser.</p>
<div class="spacer">&nbsp;</div>


<p>
Yet another way to create a translucent image is by creating the instance of <tt>BufferedImage</tt> with the 
appropriate parameters and then getting its graphics context and painting/drawing on it. An example is given by
class <tt>CreateARGBImageNoJAI2</tt>, shown below, which uses an instance of <tt>RadialGradientPaint</tt> to create a radial
translucent ellipse on the center of the image.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaicreateargbimagenojai2java">&nbsp;</a><a href="/web/20160407134806/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateARGBImageNoJAI2.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateARGBImageNoJAI2.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Color;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Graphics2D;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.RadialGradientPaint;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;color&nbsp;pattern&nbsp;image&nbsp;with&nbsp;translucency&nbsp;(each&nbsp;individual&nbsp;pixel&nbsp;may&nbsp;have  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;a&nbsp;transparency&nbsp;value),&nbsp;without&nbsp;using&nbsp;JAI&nbsp;methods&nbsp;or&nbsp;operators.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;The&nbsp;pixels&nbsp;in&nbsp;the&nbsp;image&nbsp;will&nbsp;be&nbsp;painted&nbsp;through&nbsp;a&nbsp;Graphics&nbsp;context&nbsp;obtained&nbsp;from&nbsp;the&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateARGBImageNoJAI2  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;starting&nbsp;point.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;512;&nbsp;<span class="comment">//&nbsp;Dimensions&nbsp;of&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;512;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;Buffered&nbsp;Image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;image&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedImage(width,height,BufferedImage.TYPE_INT_ARGB);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Instead&nbsp;of&nbsp;using&nbsp;a&nbsp;raster&nbsp;to&nbsp;"paint"&nbsp;this&nbsp;image,&nbsp;let's&nbsp;paint&nbsp;it&nbsp;by&nbsp;using&nbsp;a&nbsp;Graphics2D&nbsp;context.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Graphics2D&nbsp;g&nbsp;=&nbsp;(Graphics2D)image.getGraphics();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;create&nbsp;a&nbsp;radial&nbsp;gradient&nbsp;paint&nbsp;that&nbsp;makes&nbsp;the&nbsp;edges&nbsp;translucent&nbsp;and&nbsp;the&nbsp;center&nbsp;a  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;solid&nbsp;dark&nbsp;blue.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;This&nbsp;code&nbsp;will&nbsp;work&nbsp;only&nbsp;with&nbsp;Java&nbsp;6&nbsp;or&nbsp;later&nbsp;versions!  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Color&nbsp;c1&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Color(0,80,180,255);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Color&nbsp;c2&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Color(0,0,0,100);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;RadialGradientPaint&nbsp;rgp&nbsp;=&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;RadialGradientPaint(width/2,height/2,width/2,<span class="specialword">new</span>&nbsp;<span class="datatype">float</span>[]{0f,0.3f,1f},<span class="specialword">new</span>&nbsp;Color[]{c1,c1,c2});  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g.setPaint(rgp);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g.fillRect(0,0,width,height);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;image&nbsp;using&nbsp;the&nbsp;PNG&nbsp;format.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(image,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"rgbapattern2.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The image created with the code in class <tt>CreateARGBImageNoJAI2</tt> is shown below.</p>

<a name="imageanddatamanipulationcreatingrgbimageswithoutusingjaipatterncreatedbythettcreateargbimagenojai2ttclass">&nbsp;</a><a href="Resources/Data/rgbapattern2.png"><img class="figure" src="Resources/Data/rgbapattern2_icon.jpg" border=0 alt="Pattern created by the <tt>CreateARGBImageNoJAI2</tt> class."></a>
<p class="caption">Pattern created by the <tt>CreateARGBImageNoJAI2</tt> class.<br>Click on the icon for a larger image.<br>Note that the translucency may not be rendered correctly in your browser.</p>
<div class="spacer">&nbsp;</div>







<p class="section"><a name="imageanddatamanipulationcreatingrgbimagesusingjai"></a>Using JAI</p>


<p>These examples uses <tt>TiledImage</tt>, a class from the Java Advanced Imaging API that allows the
creation of large images with additional features but which requires more complex code.
</p>

<p>To create a tiled image using Java and JAI we can follow these steps:</p>
<ol>
<li>Create a sample model for the image by creating an instance of <tt>SampleModel</tt> or a derived class. In this
case we will create an instance of <tt>BandedSampleModel</tt> since the pixels of a color image
can be stored in bands (usually three bands -- red, green and blue). To create the instance of <tt>BandedSampleModel</tt>
we must provide the data type for the image, its dimensions and the number of bands.</li>
<li>Create an instance of <tt>TiledImage</tt> with the image dimensions (including origin, which may be different from 0,0), 
the file offsets, a sample model and a color model. The sample model is the one created in the previous step,
and for color model we can use <tt>null</tt> (for RGB images).<br></li>
<li>From the instance of <tt>TiledImage</tt> we can get an instance of <tt>WritableRaster</tt> and use it to set the image pixels
or samples in the same way shown in other examples in this chapter. 
<br>Since the image is tiled, we must retrieve tiles' rasters to manipulate them, one at a time. In the example shown 
below, we will get a single raster since our image have a single tile.</li>
</ol>

<p class="subsection"><a name="imageanddatamanipulationcreatingrgbimagesusingjairgbimages"></a>RGB Images</p>


<p>The class <tt>CreateRGBImageJAI</tt>, shown below, shows how to create a RGB image as an instance of <tt>TiledImage</tt>.
The code is similar to the one in class <tt>CreateRGBImageNoJAI2</tt> above.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingrgbimagesusingjaicreatergbimagejaijava">&nbsp;</a><a href="/web/20160407134806/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateRGBImageJAI.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateRGBImageJAI.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.DataBuffer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.SampleModel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.Arrays;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.RasterFactory;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.TiledImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;pure&nbsp;black-and-white&nbsp;image&nbsp;using&nbsp;the&nbsp;Java&nbsp;Advanced&nbsp;Imaging&nbsp;API.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateRGBImageJAI  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;image&nbsp;dimensions.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;483;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;483;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;a&nbsp;sample&nbsp;model&nbsp;for&nbsp;color&nbsp;images&nbsp;where&nbsp;the&nbsp;pixels&nbsp;are&nbsp;bytes,&nbsp;with&nbsp;three&nbsp;bands.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;SampleModel&nbsp;sampleModel&nbsp;=&nbsp;RasterFactory.createBandedSampleModel(DataBuffer.TYPE_BYTE,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;width,height,3);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;TiledImage&nbsp;using&nbsp;the&nbsp;SampleModel.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TiledImage&nbsp;tiledImage&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TiledImage(0,0,width,height,0,0,sampleModel,<span class="specialword">null</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;a&nbsp;raster&nbsp;for&nbsp;the&nbsp;single&nbsp;tile.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=&nbsp;tiledImage.getWritableTile(0,0);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;pattern.&nbsp;We&nbsp;will&nbsp;use&nbsp;the&nbsp;same&nbsp;code&nbsp;as&nbsp;in&nbsp;the&nbsp;class&nbsp;CreateRGBImageNoJAI2.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;block&nbsp;of&nbsp;samples&nbsp;for&nbsp;maximum&nbsp;and&nbsp;minimum&nbsp;RGB&nbsp;values.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;min&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[216*216];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(min,0);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;max&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[216*216];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(max,255);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;red&nbsp;block.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(17,17,216,216,0,max);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(17,17,216,216,1,min);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(17,17,216,216,2,min);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;green&nbsp;block.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(250,17,216,216,0,min);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(250,17,216,216,1,max);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(250,17,216,216,2,min);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;yellow&nbsp;block.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(17,250,216,216,0,max);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(17,250,216,216,1,max);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(17,250,216,216,2,min);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;blue&nbsp;block.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(250,250,216,216,0,min);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(250,250,216,216,1,min);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(250,250,216,216,2,max);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Save&nbsp;the&nbsp;image&nbsp;on&nbsp;a&nbsp;file.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JAI.create(<span class="string">"filestore"</span>,tiledImage,<span class="string">"jairgb.png"</span>,<span class="string">"PNG"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The image created with the class <tt>CreateRGBImageJAI</tt> is shown below. It is the same pattern as the one created with the classes
<tt>CreateRGBImageNoJAI</tt> and <tt>CreateRGBImageNoJAI2</tt>.</p>

<a name="imageanddatamanipulationcreatingrgbimagesusingjaipatterncreatedbythettcreatergbimagejaittclass">&nbsp;</a><a href="Resources/Data/jairgb.png"><img class="figure" src="Resources/Data/jairgb_icon.jpg" border=0 alt="Pattern created by the <tt>CreateRGBImageJAI</tt> class."></a>
<p class="caption">Pattern created by the <tt>CreateRGBImageJAI</tt> class.<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>


<p>So far in this section we've created instances of the class
<tt>TiledImage</tt> but we didn't store these tiled image as tiled (actually they were created as tiled images but with a single tile).
In order to created a tiled image with more than one single tile) and to store it as tiled we must create it differently.</p>

<p>The class <tt>CreateTiledRGBImageJAI</tt>, shown below, demonstrates how to create and store a tiled color image. 
The image's width and height will be <tt>483</tt> pixels and it will be composed of
tiles of <tt>64x64</tt> pixels. We use a loop to process all tiles on the image,
modifying the pixels on the tiles (by calling <tt>setSample</tt> or <tt>setSamples</tt>)
using the <b>absolute</b> coordinates for the pixels instead of relative ones. </p>
<p>The image is stored using the TIFF format. To ensure that the stored image will be tiled, we must
set some parameters on an instance of <tt>TIFFEncodeParam</tt> and use it as a parameter for the
<tt>filestore</tt> operation. The resulting image is shown after the code.</p>


<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingrgbimagesusingjaicreatetiledrgbimagejaijava">&nbsp;</a><a href="/web/20160407134806/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateTiledRGBImageJAI.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateTiledRGBImageJAI.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.ColorModel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.DataBuffer;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.SampleModel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.RasterFactory;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.TiledImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.codec.TIFFEncodeParam;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;pure&nbsp;black-and-white&nbsp;image&nbsp;using&nbsp;the&nbsp;Java&nbsp;Advanced&nbsp;Imaging&nbsp;API.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateTiledRGBImageJAI  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;image&nbsp;dimensions.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;483;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;483;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;tile&nbsp;dimensions.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;tWidth&nbsp;=&nbsp;64;&nbsp;<span class="datatype">int</span>&nbsp;tHeight&nbsp;=&nbsp;64;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;a&nbsp;sample&nbsp;model&nbsp;for&nbsp;color&nbsp;images&nbsp;where&nbsp;the&nbsp;pixels&nbsp;are&nbsp;bytes,&nbsp;with&nbsp;three&nbsp;bands.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Note&nbsp;that&nbsp;the&nbsp;sample&nbsp;model&nbsp;dimensions&nbsp;correspond&nbsp;to&nbsp;the&nbsp;tile&nbsp;dimensions,&nbsp;and&nbsp;not&nbsp;to&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;image&nbsp;dimensions!  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;SampleModel&nbsp;sampleModel&nbsp;=&nbsp;RasterFactory.createBandedSampleModel(DataBuffer.TYPE_BYTE,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tWidth,tHeight,3);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;TiledImage&nbsp;using&nbsp;the&nbsp;SampleModel&nbsp;(and&nbsp;a&nbsp;compatible&nbsp;ColorModel).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ColorModel&nbsp;cm&nbsp;=&nbsp;TiledImage.createColorModel(sampleModel);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TiledImage&nbsp;tiledImage&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TiledImage(0,0,width,height,0,0,sampleModel,cm);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;pattern.&nbsp;We&nbsp;will&nbsp;use&nbsp;the&nbsp;same&nbsp;code&nbsp;as&nbsp;in&nbsp;the&nbsp;class&nbsp;CreateRGBImageNoJAI.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;colors.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;red&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{255,0,0};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;green&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{0,255,0};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;blue&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{0,0,255};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;yellow&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{255,255,0};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;black&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{0,0,0};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;must&nbsp;process&nbsp;all&nbsp;tiles.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;th=tiledImage.getMinTileY();th&lt;=tiledImage.getMaxTileY();th++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;tw=tiledImage.getMinTileX();tw&lt;=tiledImage.getMaxTileX();tw++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;a&nbsp;raster&nbsp;for&nbsp;the&nbsp;single&nbsp;tile.&nbsp;Curiously,&nbsp;even&nbsp;the&nbsp;tiles&nbsp;on&nbsp;the&nbsp;right&nbsp;and&nbsp;bottom  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;edge&nbsp;of&nbsp;the&nbsp;images&nbsp;will&nbsp;have&nbsp;the&nbsp;same&nbsp;dimensions.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;wr&nbsp;=&nbsp;tiledImage.getWritableTile(tw,th);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;ih=0;ih&lt;tHeight;ih++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;iw=0;iw&lt;tWidth;iw++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;w&nbsp;=&nbsp;wr.getMinX()+iw;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;h&nbsp;=&nbsp;wr.getMinY()+ih;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;System.out.println("Setting&nbsp;"+w+","+h);  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;((w&nbsp;&gt;=&nbsp;17)&nbsp;&amp;&amp;&nbsp;(w&nbsp;&lt;&nbsp;17+216)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&gt;=&nbsp;17)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&lt;&nbsp;17+216))&nbsp;wr.setPixel(w,h,red);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;((w&nbsp;&gt;=&nbsp;250)&nbsp;&amp;&amp;&nbsp;(w&nbsp;&lt;&nbsp;250+216)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&gt;=&nbsp;17)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&lt;&nbsp;17+216))&nbsp;wr.setPixel(w,h,green);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;((w&nbsp;&gt;=&nbsp;17)&nbsp;&amp;&amp;&nbsp;(w&nbsp;&lt;&nbsp;17+216)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&gt;=&nbsp;250)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&lt;&nbsp;250+216))&nbsp;wr.setPixel(w,h,yellow);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;((w&nbsp;&gt;=&nbsp;250)&nbsp;&amp;&amp;&nbsp;(w&nbsp;&lt;&nbsp;250+216)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&gt;=&nbsp;250)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&lt;&nbsp;250+216))&nbsp;wr.setPixel(w,h,blue);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;wr.setPixel(w,h,black);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Save&nbsp;the&nbsp;image&nbsp;on&nbsp;a&nbsp;file.&nbsp;We&nbsp;cannot&nbsp;just&nbsp;store&nbsp;it,&nbsp;we&nbsp;must&nbsp;set&nbsp;the&nbsp;image&nbsp;encoding&nbsp;parameters  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;to&nbsp;ensure&nbsp;that&nbsp;it&nbsp;will&nbsp;be&nbsp;stored&nbsp;as&nbsp;a&nbsp;tiled&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TIFFEncodeParam&nbsp;tep&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TIFFEncodeParam();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;tep.setWriteTiled(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;tep.setTileSize(tWidth,tHeight);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JAI.create(<span class="string">"filestore"</span>,tiledImage,<span class="string">"jairgbtiled.tiff"</span>,<span class="string">"TIFF"</span>,tep);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The resulting image is (visually) similar to the created by the class <tt>CreateRGBImageJAIWithLUT</tt>.</p>




<p class="subsection"><a name="imageanddatamanipulationcreatingrgbimagesusingjairgbimageswithlookuptables"></a>RGB images with look-up tables</p>


<p>We can also create an instance of <tt>TiledImage</tt> with a colormap or LUT, first by creating the instance of
<tt>IndexColorModel</tt> and using it as the color model for the instance of <tt>TiledImage</tt>. This is shown in class
<tt>CreateRGBImageJAIWithLUT</tt>, below.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingrgbimagesusingjaicreatergbimagejaiwithlutjava">&nbsp;</a><a href="/web/20160407134806/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateRGBImageJAIWithLUT.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateRGBImageJAIWithLUT.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.ColorModel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.DataBuffer;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.IndexColorModel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.SampleModel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.RasterFactory;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.TiledImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;color&nbsp;image&nbsp;using&nbsp;the&nbsp;Java&nbsp;Advanced&nbsp;Imaging&nbsp;API.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateRGBImageJAIWithLUT  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;image&nbsp;dimensions.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;483;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;483;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;a&nbsp;sample&nbsp;model&nbsp;for&nbsp;images&nbsp;where&nbsp;the&nbsp;pixels&nbsp;are&nbsp;bytes,&nbsp;with&nbsp;one&nbsp;band.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;SampleModel&nbsp;sampleModel&nbsp;=&nbsp;RasterFactory.createBandedSampleModel(DataBuffer.TYPE_BYTE,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;width,height,1);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;IndexColorModel&nbsp;(first&nbsp;create&nbsp;the&nbsp;LUT&nbsp;itself).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;nColors&nbsp;=&nbsp;5;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>&nbsp;b000&nbsp;=&nbsp;(<span class="datatype">byte</span>)0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>&nbsp;b255&nbsp;=&nbsp;(<span class="datatype">byte</span>)255;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Colors&nbsp;are&nbsp;black,&nbsp;red,&nbsp;green,&nbsp;yellow,&nbsp;blue.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[]&nbsp;reds&nbsp;&nbsp;&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[]{b000,b255,b000,b255,b000};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[]&nbsp;greens&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[]{b000,b000,b255,b255,b000};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[]&nbsp;blues&nbsp;&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[]{b000,b000,b000,b000,b255};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ColorModel&nbsp;colorModel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;IndexColorModel(8,nColors,reds,greens,blues);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;TiledImage&nbsp;using&nbsp;the&nbsp;SampleModel&nbsp;and&nbsp;the&nbsp;IndexColorModel.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TiledImage&nbsp;tiledImage&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TiledImage(0,0,width,height,0,0,sampleModel,colorModel);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;a&nbsp;raster&nbsp;for&nbsp;the&nbsp;whole&nbsp;image.&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;wr&nbsp;=&nbsp;tiledImage.getWritableTile(0,0);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;((w&nbsp;&gt;=&nbsp;17)&nbsp;&amp;&amp;&nbsp;(w&nbsp;&lt;&nbsp;17+216)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&gt;=&nbsp;17)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&lt;&nbsp;17+216))&nbsp;wr.setSample(w,h,0,1);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;((w&nbsp;&gt;=&nbsp;250)&nbsp;&amp;&amp;&nbsp;(w&nbsp;&lt;&nbsp;250+216)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&gt;=&nbsp;17)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&lt;&nbsp;17+216))&nbsp;wr.setSample(w,h,0,2);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;((w&nbsp;&gt;=&nbsp;17)&nbsp;&amp;&amp;&nbsp;(w&nbsp;&lt;&nbsp;17+216)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&gt;=&nbsp;250)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&lt;&nbsp;250+216))&nbsp;wr.setSample(w,h,0,3);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;((w&nbsp;&gt;=&nbsp;250)&nbsp;&amp;&amp;&nbsp;(w&nbsp;&lt;&nbsp;250+216)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&gt;=&nbsp;250)&nbsp;&amp;&amp;&nbsp;(h&nbsp;&lt;&nbsp;250+216))&nbsp;wr.setSample(w,h,0,4);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;wr.setSample(w,h,0,0);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Save&nbsp;the&nbsp;image&nbsp;on&nbsp;a&nbsp;file.&nbsp;We&nbsp;can&nbsp;save&nbsp;the&nbsp;image&nbsp;as&nbsp;a&nbsp;PNG&nbsp;without&nbsp;problems,&nbsp;but&nbsp;saving&nbsp;it  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;as&nbsp;a&nbsp;TIFF&nbsp;file&nbsp;will&nbsp;result&nbsp;in&nbsp;a&nbsp;file&nbsp;which&nbsp;cannot&nbsp;be&nbsp;decoded&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;ImageMagick&nbsp;says&nbsp;"incorrect&nbsp;count&nbsp;for&nbsp;field&nbsp;'ColorMap'&nbsp;(15,&nbsp;expecting&nbsp;768);&nbsp;tag&nbsp;ignored".  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(tiledImage,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"jairgblut.png"</span>));&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The image created with the class <tt>CreateRGBImageJAIWithLUT</tt> is (at least visually) the same as the one created
with the class class <tt>CreateRGBImageJAIWithLUT</tt>.</p>








<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="1100-create-bw.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="1100-create-bw.jsp">Creating Black-and-White Images</a></td><td class="navigation1"><a href="1200-create-gl.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="1200-create-gl.jsp">Creating Gray-Level Images</a></td><td class="navigation0"><a href="1300-create-rgb.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="1300-create-rgb.jsp">Creating RGB Images</a></td><td class="navigation1"><a href="2050-display-displayjai.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="2050-display-displayjai.jsp">Displaying Images with the <tt>DisplayJAI</tt> class</a></td><td class="navigation2"><a href="2060-display-extendingdisplayjai.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="2060-display-extendingdisplayjai.jsp">Extending the <tt>DisplayJAI</tt> class</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20160407134806/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20160407134806/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20160407134806/https://ssl." : "/web/20160407134806/http://www.");
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
     FILE ARCHIVED ON 13:48:06 Apr 7, 2016 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 0:52:16 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
