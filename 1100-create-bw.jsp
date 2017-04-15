


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app12.us.archive.org";archive_analytics.values.server_ms=290;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/1100-create-bw.jsp";

var firstYear = 1996;
var displayDay = "3";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/1100-create-bw.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150303112650" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20141231055411/http://www.lac.inpe.br/JIPCookbook/1100-create-bw.jsp" title="31 Dec 2014">DEC</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 11:26:50 Mar 3, 2015">MAR</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20150504004930/http://www.lac.inpe.br/JIPCookbook/1100-create-bw.jsp" title="4 May 2015"><strong>MAY</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20141231055411/http://www.lac.inpe.br/JIPCookbook/1100-create-bw.jsp" title="5:54:11 Dec 31, 2014"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 11:26:50 Mar 3, 2015">3</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20150403064814/http://www.lac.inpe.br/JIPCookbook/1100-create-bw.jsp" title="6:48:14 Apr 3, 2015"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20140208091640/http://www.lac.inpe.br/JIPCookbook/1100-create-bw.jsp" title="8 Feb 2014"><strong>2014</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 11:26:50 Mar 3, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
	           <a href="/web/20160402041354/http://www.lac.inpe.br/JIPCookbook/1100-create-bw.jsp" title="2 Apr 2016"><strong>2016</strong></a>
	       
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150303112650*/http://www.lac.inpe.br/JIPCookbook/1100-create-bw.jsp" title="See a list of every capture for this URL">29 captures</a>
           <div class="r" title="Timespan for captures of this URL">27 Feb 10 - 11 Aug 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:010000010011_2011:-1:000010111000_2012:-1:100111010100_2013:-1:101011000000_2014:-1:010000000001_2015:2:001110000000_2016:-1:001111110000_2017:-1:000000000000" />
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
<a href="/web/20150303112650/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150303112650/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">Creating Black-and-White Images</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjai">Without using JAI</a>
</div>
<div class="toc3"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimagesusingjai">Using JAI</a>
</div>
</div>

<p class="section"><a name="imageanddatamanipulationcreatingblackandwhiteimagesintroduction"></a>Introduction</p>

<p>This chapter shows how we can create pure black-and-white or binary images using Java, with or without the
Java Advanced Imaging API.</p>



<p class="section"><a name="imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjai"></a>Without using JAI</p>


<p>
We can create pure black-and-white images (i.e. where the pixels are either black or white, without other possible colors) 
by first creating the instance of <tt>BufferedImage</tt> with an appropriate image type (<tt>BufferedImage.TYPE_BYTE_BINARY</tt>) and then using this image's <tt>Raster</tt>
to set the pixels' values. The steps to do this are:
</p>
<ol>
<li>Create an instance of <tt>BufferedImage</tt> with the image's width and height in pixels and with an image type of
<tt>BufferedImage.TYPE_BYTE_BINARY</tt>.</li>
<li>Get this image's <tt>Raster</tt> -- we must get it as an instance of <tt>WritableRaster</tt> so we can modify its pixels.</li>
<li>Change the pixels through the instance of <tt>WritableRaster</tt>. We can use the methods 
<tt>setSample</tt> to set a particular sample in a particular band of the <tt>WritableRaster</tt>;
<tt>setPixel</tt> to set a particular pixel (passing an array of values corresponding to all bands);
or <tt>setSamples</tt> and <tt>setPixels</tt>, which does the same for regions on the image. <br>
In the examples in this chapter we will deal with only one band.</li>
</ol>
<p>The steps are demonstrated in the class <tt>CreateBWImageNoJAI</tt>, shown below. That class creates a binary, black-and-white
image with a checkerboard pattern. The pixels' values are set one by one with the method <tt>setSample</tt> of 
the class <tt>WritableRaster</tt>.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjaicreatebwimagenojaijava">&nbsp;</a><a href="/web/20150303112650/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateBWImageNoJAI.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateBWImageNoJAI.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
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
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;pure&nbsp;black-and-white&nbsp;image.&nbsp;In&nbsp;this&nbsp;image&nbsp;all&nbsp;pixels&nbsp;values&nbsp;are&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;either&nbsp;zero&nbsp;(black)&nbsp;or&nbsp;one&nbsp;(white).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;The&nbsp;JAI&nbsp;API&nbsp;is&nbsp;not&nbsp;used&nbsp;in&nbsp;this&nbsp;example.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateBWImageNoJAI  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;400;&nbsp;<span class="comment">//&nbsp;Dimensions&nbsp;of&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;400;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;create&nbsp;a&nbsp;BufferedImage&nbsp;for&nbsp;a&nbsp;binary&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;im&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedImage(width,height,BufferedImage.TYPE_BYTE_BINARY);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;its&nbsp;raster&nbsp;to&nbsp;set&nbsp;the&nbsp;pixels'&nbsp;values.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=&nbsp;im.getRaster();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Put&nbsp;the&nbsp;pixels&nbsp;on&nbsp;the&nbsp;raster.&nbsp;Note&nbsp;that&nbsp;only&nbsp;values&nbsp;0&nbsp;and&nbsp;1&nbsp;are&nbsp;used&nbsp;for&nbsp;the&nbsp;pixels.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;You&nbsp;could&nbsp;even&nbsp;use&nbsp;other&nbsp;values:&nbsp;in&nbsp;this&nbsp;type&nbsp;of&nbsp;image,&nbsp;even&nbsp;values&nbsp;are&nbsp;black&nbsp;and&nbsp;odd  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;values&nbsp;are&nbsp;white.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(((h/50)+(w/50))&nbsp;%&nbsp;2&nbsp;==&nbsp;0)&nbsp;raster.setSample(w,h,0,0);&nbsp;<span class="comment">//&nbsp;checkerboard&nbsp;pattern.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;raster.setSample(w,h,0,1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;image&nbsp;using&nbsp;the&nbsp;PNG&nbsp;format.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(im,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"checkboard.png"</span>));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>

<a name="imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjaipatterncreatedbythettcreatebwimagenojaittclass">&nbsp;</a><a href="Resources/Data/checkboard.png"><img class="figure" src="Resources/Data/checkboard_icon.jpg" border=0 alt="Pattern created by the <tt>CreateBWImageNoJAI</tt> class."></a>
<p class="caption">Pattern created by the <tt>CreateBWImageNoJAI</tt> class.<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>


<p>
We can also set regions of the image with a single call to the method <tt>setSamples</tt> of the class <tt>WritableRaster</tt>,
which may be more efficient than setting pixel by pixel. The class <tt>CreateBWImageNoJAI2</tt> below shows how to do it.
The resulting image is the same as the one created by the class <tt>CreateBWImageNoJAI</tt>.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjaicreatebwimagenojai2java">&nbsp;</a><a href="/web/20150303112650/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateBWImageNoJAI2.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateBWImageNoJAI2.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
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
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;pure&nbsp;black-and-white&nbsp;image.&nbsp;In&nbsp;this&nbsp;image&nbsp;all&nbsp;pixels&nbsp;values&nbsp;are&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;either&nbsp;zero&nbsp;(black)&nbsp;or&nbsp;one&nbsp;(white).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;The&nbsp;JAI&nbsp;API&nbsp;is&nbsp;not&nbsp;used&nbsp;in&nbsp;this&nbsp;example.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateBWImageNoJAI2  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;400;&nbsp;<span class="comment">//&nbsp;Dimensions&nbsp;of&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;400;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;create&nbsp;a&nbsp;BufferedImage&nbsp;for&nbsp;a&nbsp;binary&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;im&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedImage(width,height,BufferedImage.TYPE_BYTE_BINARY);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;its&nbsp;raster&nbsp;to&nbsp;set&nbsp;the&nbsp;pixels'&nbsp;values.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=&nbsp;im.getRaster();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Put&nbsp;the&nbsp;pixels&nbsp;on&nbsp;the&nbsp;raster.&nbsp;We&nbsp;will&nbsp;set&nbsp;whole&nbsp;regions&nbsp;of&nbsp;the&nbsp;image&nbsp;at&nbsp;a&nbsp;time.&nbsp;We&nbsp;need&nbsp;to  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;set&nbsp;only&nbsp;the&nbsp;white&nbsp;regions&nbsp;since&nbsp;the&nbsp;image&nbsp;is&nbsp;black&nbsp;by&nbsp;default.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;whiteRegion&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[50*50];&nbsp;<span class="comment">//&nbsp;Each&nbsp;square&nbsp;on&nbsp;the&nbsp;checkerboard&nbsp;is&nbsp;50x50&nbsp;pixels.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(whiteRegion,1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;8;h++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;8;w++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;only&nbsp;the&nbsp;"even"&nbsp;squares.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;((h+w)&nbsp;%&nbsp;2&nbsp;==&nbsp;1)&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raster.setSamples(w*50,h*50,50,50,0,whiteRegion);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;image&nbsp;using&nbsp;the&nbsp;PNG&nbsp;format.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(im,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"checkboard2.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>
Yet another way to create a black-and-white image is by using a LUT (look-up-table or colormap), a data structure which
represents a finite set of colors with positive integer indexes. We can create colormapped images using instances of
<tt>BufferedImage</tt> created with type <tt>BufferedImage.TYPE_BYTE_INDEXED</tt>. Instead of setting the pixel value with methods of
the class <tt>WritableRaster</tt> we set the indexes of the desired color.</p>
<p>To create a colormapped image we can follow these steps:</p>
<ol>
<li>Create a colormap by creating three byte arrays, one for each color band (red, green and blue). These arrays must have
the same number of elements. We must also fill the arrays with the values for the colors we want to store.<br>
As an example, for a pure black-and-white image, we must create three byte arrays with two elements each, with the first 
element being zero and the second 255.</li>
<li>Create an instance of <tt>IndexColorModel</tt> with the number of bits per pixel, the number of entries on the colormap and 
the three byte arrays.</li>
<li>Create an instance of <tt>BufferedImage</tt> with the image's width and height in pixels, with an image type of
<tt>BufferedImage.TYPE_BYTE_INDEXED</tt> and with the instance of <tt>IndexColorMap</tt> passed as parameters.</li>
<li>Get this image's <tt>Raster</tt> as a <tt>WritableRaster</tt> so we can modify its pixels.</li>
<li>Change the pixels through the instance of <tt>WritableRaster</tt>, but using the color indexes instead of the
pixel values.</ol>

<p>An example is given in the code for the class <tt>CreateBWImageNoJAIWithLUT</tt>, shown below. This
class creates the same checkerboard pattern as other examples, but using a colormap. The resulting image is shown
after the code.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjaicreatebwimagenojaiwithlutjava">&nbsp;</a><a href="/web/20150303112650/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateBWImageNoJAIWithLUT.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateBWImageNoJAIWithLUT.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
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
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;black-and-white&nbsp;image&nbsp;using&nbsp;a&nbsp;LUT&nbsp;or&nbsp;colormap.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;The&nbsp;JAI&nbsp;API&nbsp;is&nbsp;not&nbsp;used&nbsp;in&nbsp;this&nbsp;example.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateBWImageNoJAIWithLUT  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;color&nbsp;table.&nbsp;Only&nbsp;black&nbsp;and&nbsp;white&nbsp;are&nbsp;represented,&nbsp;but&nbsp;the&nbsp;general&nbsp;idea&nbsp;is&nbsp;to&nbsp;have&nbsp;a&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;colormap&nbsp;(or&nbsp;LUT&nbsp;or&nbsp;color&nbsp;table)&nbsp;and&nbsp;use&nbsp;indexes&nbsp;to&nbsp;this&nbsp;table&nbsp;as&nbsp;the&nbsp;pixels'&nbsp;values.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;nColors&nbsp;=&nbsp;2;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[]&nbsp;reds&nbsp;&nbsp;&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[]{0,(<span class="datatype">byte</span>)255};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[]&nbsp;greens&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[]{0,(<span class="datatype">byte</span>)255};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">byte</span>[]&nbsp;blues&nbsp;&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">byte</span>[]{0,(<span class="datatype">byte</span>)255};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;400;&nbsp;<span class="comment">//&nbsp;Dimensions&nbsp;of&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;400;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;create&nbsp;the&nbsp;IndexColorModel&nbsp;for&nbsp;this&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;IndexColorModel&nbsp;colorModel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;IndexColorModel(2,nColors,reds,greens,blues);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;create&nbsp;a&nbsp;BufferedImage&nbsp;for&nbsp;an&nbsp;indexed&nbsp;color&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;im&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedImage(width,height,BufferedImage.TYPE_BYTE_INDEXED,colorModel);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;its&nbsp;raster&nbsp;to&nbsp;set&nbsp;the&nbsp;pixels'&nbsp;values.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=&nbsp;im.getRaster();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Put&nbsp;the&nbsp;pixels&nbsp;on&nbsp;the&nbsp;raster.&nbsp;Note&nbsp;that&nbsp;only&nbsp;values&nbsp;0&nbsp;and&nbsp;1&nbsp;are&nbsp;used&nbsp;for&nbsp;the&nbsp;pixels.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(((h/50)+(w/50))&nbsp;%&nbsp;2&nbsp;==&nbsp;0)&nbsp;raster.setSample(w,h,0,0);&nbsp;<span class="comment">//&nbsp;checkerboard&nbsp;pattern.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;raster.setSample(w,h,0,1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;image.&nbsp;Use&nbsp;PNG&nbsp;format,&nbsp;it&nbsp;is&nbsp;more&nbsp;flexible&nbsp;for&nbsp;color&nbsp;indexed&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(im,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"checkboardLUTX.png"</span>));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>

<a name="imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjaipatterncreatedbythettcreatebwimagenojaiwithlutttclass">&nbsp;</a><a href="Resources/Data/checkboardLUT.png"><img class="figure" src="Resources/Data/checkboardLUT_icon.jpg" border=0 alt="Pattern created by the <tt>CreateBWImageNoJAIWithLUT</tt> class."></a>
<p class="caption">Pattern created by the <tt>CreateBWImageNoJAIWithLUT</tt> class.<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>


<p>Instead of setting the pixels in the image's <tt>Raster</tt>, we can draw directly on the image.
To do so, we need to create an image, get its <tt>Graphics2D</tt> context and use this context to draw over the image.
We can even render an image on another image's <tt>Graphics2D</tt> context, as shown in the example below,
where one image is converted in a black-and-white version by rendering it on a image with type
<tt>BufferedImage.TYPE_BYTE_BINARY</tt>.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjaicreatebwimagenojairenderjava">&nbsp;</a><a href="/web/20150303112650/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateBWImageNoJAIRender.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateBWImageNoJAIRender.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Graphics2D;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;renders&nbsp;a&nbsp;color&nbsp;image&nbsp;on&nbsp;a&nbsp;pure&nbsp;black-and-white&nbsp;image&nbsp;created&nbsp;from&nbsp;scratch.&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;The&nbsp;JAI&nbsp;API&nbsp;is&nbsp;not&nbsp;used&nbsp;in&nbsp;this&nbsp;example.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateBWImageNoJAIRender&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Read&nbsp;an&nbsp;image.&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;input&nbsp;=&nbsp;ImageIO.read(<span class="specialword">new</span>&nbsp;File(<span class="string">"/home/rafael/Java/JAI/JIPCookbook/lena.png"</span>));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;black-and-white&nbsp;image&nbsp;of&nbsp;the&nbsp;same&nbsp;size.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;im&nbsp;=  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;BufferedImage(input.getWidth(),input.getHeight(),BufferedImage.TYPE_BYTE_BINARY);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;graphics&nbsp;context&nbsp;for&nbsp;the&nbsp;black-and-white&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Graphics2D&nbsp;g2d&nbsp;=&nbsp;im.createGraphics();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Render&nbsp;the&nbsp;input&nbsp;image&nbsp;on&nbsp;it.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;g2d.drawImage(input,0,0,<span class="specialword">null</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;resulting&nbsp;image&nbsp;using&nbsp;the&nbsp;PNG&nbsp;format.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(im,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"rendered_lena.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The figures below show the original image on the left and a binarized version of it on the right. The image on the
right was created with the class <tt>CreateBWImageNoJAIWithLUT</tt>.</p>

<table class="simpletable">
  <tr>
    <td class="simpletable legend twocolumns">
    <a name="imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjailenaimage">&nbsp;</a><a href="Resources/Data/lena.png"><img class="figure" src="Resources/Data/lena_icon.jpg" border=0 alt="Lena image."></a>
<p class="caption">Lena image.<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend twocolumns">
    <a name="imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjailenaimagerenderedinapureblackandwhiteimage">&nbsp;</a><a href="Resources/Data/rendered_lena.png"><img class="figure" src="Resources/Data/rendered_lena_icon.jpg" border=0 alt="Lena image, rendered in a pure black-and-white image."></a>
<p class="caption">Lena image, rendered in a pure black-and-white image.<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>

    </td>
  </tr>
</table>




<p class="section"><a name="imageanddatamanipulationcreatingblackandwhiteimagesusingjai"></a>Using JAI</p>


<p>One of the most flexible classes of the Java Advanced Imaging API is <tt>TiledImage</tt>. Its instances can be used
to represent writable images with multiple <i>tiles</i>, which are rectangular segments or chunks of an image. Tiled images
can be processed tile by tile, allowing the efficient processing of large images.
</p>

<p>To create a tiled image using Java and JAI we can follow these steps:</p>
<ol>
<li>Create a sample model for the image by creating an instance of <tt>SampleModel</tt> or a derived class. In this
case we will create an instance of <tt>MultiPixelPackedSampleModel</tt> since the pixels of a pure black-and-white image
will be packed, eight at a time, into one byte. To create the instance of <tt>MultiPixelPackedSampleModel</tt>
we must provide the data type for the image, its dimensions and the number of bits per pixel.</li>
<li>Create an instance of <tt>TiledImage</tt> with the image dimensions (including origin, which may be different from 0,0), 
the file offsets, a sample model and a color model. The sample model is the one created in the previous step,
and for colormodel we can use <tt>null</tt>.<br></li>
<li>From the instance of <tt>TiledImage</tt> we can get an instance of <tt>WritableRaster</tt> and use it to set the image pixels
or samples in the same way shown in other examples in this chapter. 
<br>Since the image is tiled, we must retrieve tiles' rasters to manipulate them, one at a time. In the example shown 
below, we will get a single raster since our image have a single tile.</li>
</ol>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingblackandwhiteimagesusingjaicreatebwimagejaijava">&nbsp;</a><a href="/web/20150303112650/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateBWImageJAI.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateBWImageJAI.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.DataBuffer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.MultiPixelPackedSampleModel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.Arrays;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.TiledImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;pure&nbsp;black-and-white&nbsp;image&nbsp;using&nbsp;the&nbsp;Java&nbsp;Advanced&nbsp;Imaging&nbsp;API.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateBWImageJAI  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;image&nbsp;dimensions.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;640;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;640;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;a&nbsp;sample&nbsp;model&nbsp;where&nbsp;the&nbsp;pixels&nbsp;are&nbsp;packed&nbsp;into&nbsp;one&nbsp;data&nbsp;type.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;MultiPixelPackedSampleModel&nbsp;sampleModel&nbsp;=&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;MultiPixelPackedSampleModel(DataBuffer.TYPE_BYTE,width,height,1);&nbsp;<span class="comment">//&nbsp;one&nbsp;bit&nbsp;per&nbsp;pixel  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;TiledImage&nbsp;using&nbsp;the&nbsp;SampleModel.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TiledImage&nbsp;tiledImage&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TiledImage(0,0,width,height,0,0,sampleModel,<span class="specialword">null</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;a&nbsp;raster&nbsp;for&nbsp;the&nbsp;single&nbsp;tile.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;wr&nbsp;=&nbsp;tiledImage.getWritableTile(0,0);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Paint&nbsp;it&nbsp;white.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;white&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[width*height];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(white,1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;wr.setSamples(0,0,width,height,0,white);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Paint&nbsp;a&nbsp;black&nbsp;box&nbsp;in&nbsp;the&nbsp;middle.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;black&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[320*320];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;wr.setSamples(160,160,320,320,0,black);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Draw&nbsp;an&nbsp;edge.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wr.setSample(0,h,0,0);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wr.setSample(width-1,h,0,0);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wr.setSample(w,0,0,0);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wr.setSample(w,height-1,0,0);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Save&nbsp;the&nbsp;image&nbsp;on&nbsp;a&nbsp;file.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JAI.create(<span class="string">"filestore"</span>,tiledImage,<span class="string">"jaibw.png"</span>,<span class="string">"PNG"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The class <tt>CreateBWImageJAI</tt> creates and store the image shown in the figure below.</p>
<a name="imageanddatamanipulationcreatingblackandwhiteimagesusingjaipatterncreatedbythettcreatebwimagejaittclass">&nbsp;</a><a href="Resources/Data/jaibw.png"><img class="figure" src="Resources/Data/jaibw_icon.jpg" border=0 alt="Pattern created by the <tt>CreateBWImageJAI</tt> class."></a>
<p class="caption">Pattern created by the <tt>CreateBWImageJAI</tt> class.<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>


<p>It is interesting to notice that although we used the class
<tt>TiledImage</tt> to create and manipulate the image in class <tt>CreateBWImageJAI</tt>, the image had only one tile
during its processing and was stored untiled. In order to created a tiled image (with more than one single tile with all the
image contents) and to store it we must create it differently (with the tile dimensions as part of the sample model)
and store it with a format that supports tiling. </p>

<p>The following class demonstrates how to create and store a tiled black-and-white image. 
The image will have 10x10 tiles of 64x64 pixels. We use a loop to process all tiles on the image,
modifying the pixels on the tiles (by calling <tt>setSample</tt> or <tt>setSamples</tt>)
using the <b>absolute</b> coordinates for the pixels instead of relative ones. </p>
<p>The image is stored using the TIFF format. To ensure that the stored image will be tiled, we must
set some parameters on an instance of <tt>TIFFEncodeParam</tt> and use it as a parameter for the
<tt>filestore</tt> operation. The resulting image is shown after the code.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imageanddatamanipulationcreatingblackandwhiteimagesusingjaicreatetiledbwimagejaijava">&nbsp;</a><a href="/web/20150303112650/http://150.163.105.39:8080/JIPCookbook//Code/data/creation/CreateTiledBWImageJAI.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateTiledBWImageJAI.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;data.creation;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.DataBuffer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.MultiPixelPackedSampleModel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.Arrays;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.TiledImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.codec.TIFFEncodeParam;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;a&nbsp;pure&nbsp;black-and-white&nbsp;image&nbsp;using&nbsp;the&nbsp;Java&nbsp;Advanced&nbsp;Imaging&nbsp;API.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;CreateTiledBWImageJAI  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;image&nbsp;dimensions.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;width&nbsp;=&nbsp;640;&nbsp;<span class="datatype">int</span>&nbsp;height&nbsp;=&nbsp;640;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;tile&nbsp;dimensions.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;tWidth&nbsp;=&nbsp;64;&nbsp;<span class="datatype">int</span>&nbsp;tHeight&nbsp;=&nbsp;64;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;a&nbsp;sample&nbsp;model&nbsp;where&nbsp;the&nbsp;pixels&nbsp;are&nbsp;packed&nbsp;into&nbsp;one&nbsp;data&nbsp;type.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;MultiPixelPackedSampleModel&nbsp;sampleModel&nbsp;=&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;MultiPixelPackedSampleModel(DataBuffer.TYPE_BYTE,tWidth,tHeight,1);&nbsp;<span class="comment">//&nbsp;one&nbsp;bit&nbsp;per&nbsp;pixel  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;TiledImage&nbsp;using&nbsp;the&nbsp;SampleModel.&nbsp;Note&nbsp;that&nbsp;the&nbsp;size&nbsp;of&nbsp;the&nbsp;image&nbsp;is&nbsp;not&nbsp;the&nbsp;same  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;as&nbsp;the&nbsp;size&nbsp;of&nbsp;the&nbsp;tiles,&nbsp;specified&nbsp;on&nbsp;the&nbsp;instance&nbsp;SampleModel.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TiledImage&nbsp;tiledImage&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TiledImage(0,0,width,height,0,0,sampleModel,<span class="specialword">null</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;must&nbsp;process&nbsp;all&nbsp;tiles.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;th=tiledImage.getMinTileY();th&lt;=tiledImage.getMaxTileY();th++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;tw=tiledImage.getMinTileX();tw&lt;=tiledImage.getMaxTileX();tw++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;a&nbsp;raster&nbsp;for&nbsp;that&nbsp;tile.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;wr&nbsp;=&nbsp;tiledImage.getWritableTile(tw,th);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Paint&nbsp;it&nbsp;white.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;white&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[tWidth*tHeight];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arrays.fill(white,1);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wr.setSamples(wr.getMinX(),wr.getMinY(),tWidth,tHeight,0,white);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Paint&nbsp;a&nbsp;black&nbsp;box&nbsp;in&nbsp;the&nbsp;middle.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;black&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[32*32];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wr.setSamples(wr.getMinX()+16,wr.getMinY()+16,32,32,0,black);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Draw&nbsp;an&nbsp;edge.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;tHeight;h++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wr.setSample(wr.getMinX(),wr.getMinY()+h,0,0);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wr.setSample(wr.getMinX()+tWidth-1,wr.getMinY()+h,0,0);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;tWidth;w++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wr.setSample(wr.getMinX()+w,wr.getMinY(),0,0);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wr.setSample(wr.getMinX()+w,wr.getMinY()+tHeight-1,0,0);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Save&nbsp;the&nbsp;image&nbsp;on&nbsp;a&nbsp;file.&nbsp;We&nbsp;cannot&nbsp;just&nbsp;store&nbsp;it,&nbsp;we&nbsp;must&nbsp;set&nbsp;the&nbsp;image&nbsp;encoding&nbsp;parameters  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;to&nbsp;ensure&nbsp;that&nbsp;it&nbsp;will&nbsp;be&nbsp;stored&nbsp;as&nbsp;a&nbsp;tiled&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TIFFEncodeParam&nbsp;tep&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TIFFEncodeParam();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;tep.setWriteTiled(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;tep.setTileSize(tWidth,tHeight);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JAI.create(<span class="string">"filestore"</span>,tiledImage,<span class="string">"jaitiled.tiff"</span>,<span class="string">"TIFF"</span>,tep);&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<a name="imageanddatamanipulationcreatingblackandwhiteimagesusingjaipatterncreatedbythettcreatetiledbwimagejaittclass">&nbsp;</a><a href="Resources/Data/jaibwtiled.tiff"><img class="figure" src="Resources/Data/jaibwtiled_icon.jpg" border=0 alt="Pattern created by the <tt>CreateTiledBWImageJAI</tt> class."></a>
<p class="caption">Pattern created by the <tt>CreateTiledBWImageJAI</tt> class.<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>






<div class="navigation"><table class="navigation"><tr><td class="navigation2">&nbsp;</td><td class="navigation1"><a href="0000-intro.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="0000-intro.jsp">About this e-book</a></td><td class="navigation0"><a href="1100-create-bw.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="1100-create-bw.jsp">Creating Black-and-White Images</a></td><td class="navigation1"><a href="1200-create-gl.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="1200-create-gl.jsp">Creating Gray-Level Images</a></td><td class="navigation2"><a href="1300-create-rgb.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="1300-create-rgb.jsp">Creating RGB Images</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150303112650/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150303112650/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150303112650/https://ssl." : "/web/20150303112650/http://www.");
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
     FILE ARCHIVED ON 11:26:50 Mar 3, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 0:47:41 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
