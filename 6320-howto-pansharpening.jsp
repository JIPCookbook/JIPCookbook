


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app4.us.archive.org";archive_analytics.values.server_ms=361;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/6320-howto-pansharpening.jsp";

var firstYear = 1996;
var displayDay = "21";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/6320-howto-pansharpening.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20151121093319" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20150429181647/http://www.lac.inpe.br/JIPCookbook/6320-howto-pansharpening.jsp" title="29 Apr 2015">APR</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 9:33:19 Nov 21, 2015">NOV</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20151225231749/http://www.lac.inpe.br/JIPCookbook/6320-howto-pansharpening.jsp" title="25 Dec 2015"><strong>DEC</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20150429181647/http://www.lac.inpe.br/JIPCookbook/6320-howto-pansharpening.jsp" title="18:16:47 Apr 29, 2015"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 9:33:19 Nov 21, 2015">21</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20151225231749/http://www.lac.inpe.br/JIPCookbook/6320-howto-pansharpening.jsp" title="23:17:49 Dec 25, 2015"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20140620203542/http://www.lac.inpe.br/JIPCookbook/6320-howto-pansharpening.jsp" title="20 Jun 2014"><strong>2014</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 9:33:19 Nov 21, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
                   2016
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20151121093319*/http://www.lac.inpe.br/JIPCookbook/6320-howto-pansharpening.jsp" title="See a list of every capture for this URL">16 captures</a>
           <div class="r" title="Timespan for captures of this URL">22 Aug 10 - 25 Dec 15</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000010000_2011:-1:010111001010_2012:-1:100001000001_2013:-1:000000000000_2014:-1:000001000000_2015:10:011100000011_2016:-1:000000000000_2017:-1:000000000000" />
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
<a href="/web/20151121093319/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20151121093319/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">How can I implement a pan sharpening algorithm?</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="6320-howto-pansharpening.jsp#howtohowcaniimplementapansharpeningalgorithmintroduction">Introduction</a>
</div>
<div class="toc3"><a href="6320-howto-pansharpening.jsp#howtohowcaniimplementapansharpeningalgorithmimplementation">Implementation</a>
</div>
<div class="toc3"><a href="6320-howto-pansharpening.jsp#howtohowcaniimplementapansharpeningalgorithmreferences">References</a>
</div>
</div>

<p class="section"><a name="howtohowcaniimplementapansharpeningalgorithmintroduction"></a>Introduction</p>

<p>Pan sharpening is an image fusion technique that enhances the spatial resolution of a composite image
by combining lower-resolution color images with a higher-resolution panchromatic image. Most remote sensing satellites have several 
spectral bands which can be used to generate false- or true-color images, and a panchromatic image of higher resolution. In this chapter we will
see how to combine them to generate a higher-resolution color image.</p> 
<p>The most used pan sharpening algorithms follow these steps:</p>
<ol>
<li>Select the image bands that will be used to create a RGB composed image.</li>
<li>Rescale the RGB image so its dimensions will be the same as the panchromatic image.</li>
<li>Convert the RGB image to a hue-based color coordinate system. We will use IHS as a reference, but other color systems can also be used (HSV, HLS, etc.)</li>
<li>Split the IHS image into its three components.</li>
<li>Substitute the I band in the image by the panchromatic image.</li>
<li>Merge the three bands into a single IHS image.</li> 
<li>Convert the IHS to the RGB color space.</li>
</ol>
<p>These steps assumes that the images are registered (i.e. mapped to the same coordinate system), and cover the same region.</p>
<p>As an example, let's see how to create a pan-sharpened image from Ikonos satellite images. The figure below shows the input images and the expected result.
The original images are listed in chapter <a href="9140-datasets-msimages.jsp">Multispectral and Hyperspectral Images</a> with some brightness and contrast enhancement. </p>

<table class="simpletable">
  <tr>
    <td class="simpletable legend threecolumns">
      <a name="howtohowcaniimplementapansharpeningalgorithmintroductionrgbimagecompositionoftheredgreenandblueikonosbands">&nbsp;</a><img class="figure" src="Resources/PanSharpening/rgb.jpg" border=0 alt="RGB Image (composition of the red, green and blue Ikonos bands)."><p class="caption">RGB Image (composition of the red, green and blue Ikonos bands).</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend threecolumns">
      <a name="howtohowcaniimplementapansharpeningalgorithmintroductionikonospanchromaticband">&nbsp;</a><img class="figure" src="Resources/PanSharpening/pan.jpg" border=0 alt="Ikonos panchromatic band."><p class="caption">Ikonos panchromatic band.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend threecolumns">
      <a name="howtohowcaniimplementapansharpeningalgorithmintroductionpansharpenedimage">&nbsp;</a><img class="figure" src="Resources/PanSharpening/sharp.jpg" border=0 alt="Pan-sharpened image."><p class="caption">Pan-sharpened image.</p>
<div class="spacer">&nbsp;</div>

    </td>
  </tr>
</table>




<p class="section"><a name="howtohowcaniimplementapansharpeningalgorithmimplementation"></a>Implementation</p>

<p>Implementation of the IHS-based pan sharpening algorithm in Java/JAI is straightforward. The steps outlined above are implemented
in the code below.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="howtohowcaniimplementapansharpeningalgorithmimplementationihspansharpeningjava">&nbsp;</a><a href="/web/20151121093319/http://150.163.105.39:8080/JIPCookbook//Code/howto/pansharp/IHSPanSharpening.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>IHSPanSharpening.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;howto.pansharp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.RenderingHints;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Transparency;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.ColorModel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.ComponentColorModel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.DataBuffer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.RenderedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.renderable.ParameterBlock;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.IHSColorSpace;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.ImageLayout;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.codec.TIFFEncodeParam;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;display.multiple.DisplayTwoSynchronizedImages;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;implements&nbsp;the&nbsp;IHS-based&nbsp;pan-sharpening&nbsp;algorithm.&nbsp;More&nbsp;information&nbsp;about&nbsp;it&nbsp;can  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;be&nbsp;found&nbsp;on&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;this&nbsp;code&nbsp;is&nbsp;based&nbsp;on&nbsp;a&nbsp;message&nbsp;from&nbsp;Madhu&nbsp;V&nbsp;Reddy&nbsp;on&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Java&nbsp;Advanced&nbsp;Imaging&nbsp;API&nbsp;discussion&nbsp;group:  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://archives.java.sun.com/cgi-bin/wa?A2=ind0308&amp;L=jai-interest&amp;F=&amp;S=&amp;P=623  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;IHSPanSharpening  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point.&nbsp;We&nbsp;need&nbsp;to&nbsp;provide&nbsp;four&nbsp;input&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;First&nbsp;we&nbsp;open&nbsp;the&nbsp;input&nbsp;images.&nbsp;We&nbsp;assume&nbsp;that&nbsp;each&nbsp;band&nbsp;is&nbsp;in&nbsp;a&nbsp;separate&nbsp;file.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;iRed&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,args[0]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;iGreen&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,args[1]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;iBlue&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,args[2]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;also&nbsp;load&nbsp;the&nbsp;pan&nbsp;image&nbsp;to&nbsp;use&nbsp;it&nbsp;as&nbsp;the&nbsp;new&nbsp;I&nbsp;band.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;panImage&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,args[3]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;to&nbsp;combine&nbsp;those&nbsp;bands&nbsp;into&nbsp;a&nbsp;single&nbsp;RGB&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(iRed);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(iGreen);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(iBlue);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;rgbImage&nbsp;=&nbsp;JAI.create(<span class="string">"bandmerge"</span>,&nbsp;pb);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;scale&nbsp;it&nbsp;since&nbsp;the&nbsp;pan&nbsp;image&nbsp;has&nbsp;the&nbsp;double&nbsp;of&nbsp;the&nbsp;resolution.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(rgbImage);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;scale&nbsp;from&nbsp;the&nbsp;images'&nbsp;dimensions.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;scaleX&nbsp;=&nbsp;(1f*panImage.getWidth()/iRed.getWidth());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;scaleY&nbsp;=&nbsp;(1f*panImage.getHeight()/iRed.getHeight());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(scaleX);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(scaleY);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;rgbImage&nbsp;=&nbsp;JAI.create(<span class="string">"scale"</span>,pb);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Now&nbsp;we&nbsp;can&nbsp;convert&nbsp;it&nbsp;to&nbsp;the&nbsp;IHS&nbsp;color&nbsp;space.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;IHSColorSpace&nbsp;ihs&nbsp;=&nbsp;IHSColorSpace.getInstance();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ColorModel&nbsp;IHSColorModel&nbsp;=  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;ComponentColorModel(ihs,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>&nbsp;[]{8,8,8},  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">false</span>,<span class="specialword">false</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Transparency.OPAQUE,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DataBuffer.TYPE_BYTE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(rgbImage);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(IHSColorModel);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;RenderedImage&nbsp;imageIHS&nbsp;&nbsp;=&nbsp;JAI.create(<span class="string">"colorconvert"</span>,&nbsp;pb);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;image&nbsp;is&nbsp;in&nbsp;the&nbsp;IHS&nbsp;color&nbsp;space.&nbsp;Let's&nbsp;separate&nbsp;the&nbsp;I,&nbsp;H&nbsp;and&nbsp;S&nbsp;band.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage[]&nbsp;IHSBands&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;PlanarImage[3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;band=0;band&lt;3;band++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(imageIHS);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pb.add(<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{band});  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IHSBands[band]&nbsp;=&nbsp;JAI.create(<span class="string">"bandselect"</span>,pb);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Now&nbsp;we&nbsp;can&nbsp;compose&nbsp;the&nbsp;new&nbsp;IHS&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;must&nbsp;pass&nbsp;an&nbsp;instance&nbsp;of&nbsp;RenderingHint&nbsp;with&nbsp;the&nbsp;IHS&nbsp;color&nbsp;model.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageLayout&nbsp;imageLayout&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ImageLayout();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;imageLayout.setColorModel(IHSColorModel);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;imageLayout.setSampleModel(imageIHS.getSampleModel());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;RenderingHints&nbsp;rendHints&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;RenderingHints(JAI.KEY_IMAGE_LAYOUT,imageLayout);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(panImage);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(IHSBands[1]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(IHSBands[2]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;RenderedImage&nbsp;panSharpenedIHSImage&nbsp;=&nbsp;JAI.create(<span class="string">"bandmerge"</span>,&nbsp;pb,&nbsp;rendHints);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Now&nbsp;we&nbsp;convert&nbsp;this&nbsp;image&nbsp;back&nbsp;to&nbsp;the&nbsp;RGB&nbsp;color&nbsp;space.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(panSharpenedIHSImage);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(rgbImage.getColorModel());&nbsp;<span class="comment">//&nbsp;RGB&nbsp;color&nbsp;model  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;finalImage&nbsp;=&nbsp;JAI.create(<span class="string">"colorconvert"</span>,&nbsp;pb);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JFrame&nbsp;frame&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JFrame(<span class="string">"IHS&nbsp;Pan&nbsp;Sharpening"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.add(<span class="specialword">new</span>&nbsp;DisplayTwoSynchronizedImages(rgbImage,finalImage));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.pack();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setVisible(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;resulting&nbsp;image,&nbsp;with&nbsp;tiling.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TIFFEncodeParam&nbsp;tep&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TIFFEncodeParam();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;tep.setWriteTiled(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;tep.setTileSize(128,128);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JAI.create(<span class="string">"filestore"</span>,finalImage,<span class="string">"result.tiff"</span>,<span class="string">"TIFF"</span>,tep);&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>
 
<p>The class shown in the code above will display the RGB and the pan-sharpened image side by side. A screenshot is shown below.</p>

<a name="howtohowcaniimplementapansharpeningalgorithmimplementationttihspansharpeningttapplicationscreenshot">&nbsp;</a><a href="Resources/Screenshots/IHSPanSharpening.png"><img class="figure" src="Resources/Screenshots/IHSPanSharpening_icon.jpg" border=0 alt="<tt>IHSPanSharpening</tt> application screenshot"></a>
<p class="caption"><tt>IHSPanSharpening</tt> application screenshot<br>Click on the icon for a larger image.<br>
</p>
<div class="spacer">&nbsp;</div>







<p class="section"><a name="howtohowcaniimplementapansharpeningalgorithmreferences"></a>References</p>

<p>Some links with more information:</p>
<ul>
<li>Geosage's <a href="/web/20151121093319/http://www.geosage.com/highview/imagefusion.html">Image fusion and pan-sharpening: the big picture</a> contains a very good introduction on the subject.</li>
<li><a href="/web/20151121093319/http://freegeographytools.com/2007/goofing-around-with-pan-sharpening">Goofing Around With Pan-sharpening</a> shows how to do it with another software.</li>
</ul>




<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="6040-howto-compressimages.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="6040-howto-compressimages.jsp">How can I reduce an image file size without losing quality?</a></td><td class="navigation1"><a href="6050-howto-compareimages.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="6050-howto-compareimages.jsp">How do I compare two images to see if they are equal?</a></td><td class="navigation0"><a href="6320-howto-pansharpening.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="6320-howto-pansharpening.jsp">How can I implement a pan sharpening algorithm?</a></td><td class="navigation1"><a href="6330-howto-ndvi.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="6330-howto-ndvi.jsp">How can I calculate and display a NDVI image?</a></td><td class="navigation2"><a href="6520-howto-chromakey.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="6520-howto-chromakey.jsp">How can I implement a chroma key composition on images?</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20151121093319/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20151121093319/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20151121093319/https://ssl." : "/web/20151121093319/http://www.");
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
     FILE ARCHIVED ON 9:33:19 Nov 21, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 1:15:09 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
