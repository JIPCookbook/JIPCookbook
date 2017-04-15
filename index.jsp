


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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/index.jsp";

var firstYear = 1996;
var displayDay = "31";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/index.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150331095040" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20150222072359/http://www.lac.inpe.br/JIPCookbook/index.jsp" title="22 Feb 2015">FEB</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 9:50:40 Mar 31, 2015">MAR</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20150502110139/http://www.lac.inpe.br/JIPCookbook/index.jsp" title="2 May 2015"><strong>MAY</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20150228162040/http://www.lac.inpe.br/JIPCookbook/index.jsp" title="16:20:40 Feb 28, 2015"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 9:50:40 Mar 31, 2015">31</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20150502110139/http://www.lac.inpe.br/JIPCookbook/index.jsp" title="11:01:39 May 2, 2015"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131006191550/http://www.lac.inpe.br/JIPCookbook/index.jsp" title="6 Oct 2013"><strong>2013</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 9:50:40 Mar 31, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
                   2016
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150331095040*/http://www.lac.inpe.br/JIPCookbook/index.jsp" title="See a list of every capture for this URL">30 captures</a>
           <div class="r" title="Timespan for captures of this URL">27 Jan 10 - 2 May 15</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:101010121011_2011:-1:010111111021_2012:-1:000101001100_2013:-1:101000000100_2014:-1:000000000000_2015:2:021010000000_2016:-1:000000000000_2017:-1:000000000000" />
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
<a href="/web/20150331095040/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150331095040/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">
<center>
<img src="Images/inpeslim.jpg" alt="INPE"> 
</center>

<div class="toc1">Introduction</div>
<div class="toc2"><a href="0000-intro.jsp#introductionaboutthisebook">About this e-book</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookabout">About</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookdisclaimers">Disclaimers</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebooklicense">License</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookfaq">FAQ</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookotherresources">Other resources</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookacknowledgementsandthanks">Acknowledgements and Thanks</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookgettinghelp">Getting Help</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookstatistics">Statistics</a>
</div>
<div class="toc1">Image and Data Manipulation</div>
<div class="toc2"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimages">Creating Black-and-White Images</a>
</div>
<div class="toc3"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjai">Without using JAI</a>
</div>
<div class="toc3"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimagesusingjai">Using JAI</a>
</div>
<div class="toc2"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimages">Creating Gray-Level Images</a>
</div>
<div class="toc3"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimageswithoutusingjai">Without using JAI</a>
</div>
<div class="toc3"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimagesusingjai">Using JAI</a>
</div>
<div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimagesusingjaicreatingnonbyteimagesusingjai">Creating non-byte images using JAI</a>
</div>
<div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimagesusingjaicreatingvolumeimagesusingjai">Creating volume images using JAI</a>
</div>
<div class="toc2"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimages">Creating RGB Images</a>
</div>
<div class="toc3"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimagesintroduction">Introduction</a>
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
<div class="toc1">Image Display</div>
<div class="toc2"><a href="2050-display-displayjai.jsp#imagedisplaydisplayingimageswiththettdisplayjaittclass">Displaying Images with the <tt>DisplayJAI</tt> class</a>
</div>
<div class="toc3"><a href="2050-display-displayjai.jsp#imagedisplaydisplayingimageswiththettdisplayjaittclassintroduction">Introduction</a>
</div>
<div class="toc3"><a href="2050-display-displayjai.jsp#imagedisplaydisplayingimageswiththettdisplayjaittclassdisplayingimageswiththettdisplayjaittclass">Displaying Images with the <tt>DisplayJAI</tt> class</a>
</div>
<div class="toc2"><a href="2060-display-extendingdisplayjai.jsp#imagedisplayextendingthettdisplayjaittclass">Extending the <tt>DisplayJAI</tt> class</a>
</div>
<div class="toc3"><a href="2060-display-extendingdisplayjai.jsp#imagedisplayextendingthettdisplayjaittclassintroduction">Introduction</a>
</div>
<div class="toc3"><a href="2060-display-extendingdisplayjai.jsp#imagedisplayextendingthettdisplayjaittclassdisplayinginformationaboutpixelsunderthecursor">Displaying information about pixels under the cursor</a>
</div>
<div class="toc2"><a href="2100-display-multipleimages.jsp#imagedisplaydisplayingmultipleimages">Displaying Multiple Images</a>
</div>
<div class="toc3"><a href="2100-display-multipleimages.jsp#imagedisplaydisplayingmultipleimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="2100-display-multipleimages.jsp#imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimages">Displaying Synchronized Images</a>
</div>
<div class="toc2"><a href="2120-display-thumbnail.jsp#imagedisplaydisplayinginteractivethumbnails">Displaying Interactive Thumbnails</a>
</div>
<div class="toc3"><a href="2120-display-thumbnail.jsp#imagedisplaydisplayinginteractivethumbnailsintroduction">Introduction</a>
</div>
<div class="toc3"><a href="2120-display-thumbnail.jsp#imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnails">Displaying Interactive Thumbnails</a>
</div>
<div class="toc2"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimages">Using Surrogate Images</a>
</div>
<div class="toc3"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagesbasicsurrogateimagecomponent">Basic Surrogate Image Component</a>
</div>
<div class="toc3"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagessurrogateimagecomponentwithlookuptablesluts">Surrogate Image Component with Look-Up Tables (LUTs)</a>
</div>
<div class="toc2"><a href="2280-display-volume.jsp#imagedisplaydisplayingvolumemultibandimages">Displaying Volume (Multiband) Images</a>
</div>
<div class="toc3"><a href="2280-display-volume.jsp#imagedisplaydisplayingvolumemultibandimagesintroduction">Introduction</a>
</div>
<div class="toc2"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimages">Drawing Over Images</a>
</div>
<div class="toc3"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesdrawingpolygonsandshapesoverimages">Drawing polygons and shapes over images</a>
</div>
<div class="toc3"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesaverysimpleframeworkfordrawingoverimages">A very simple framework for drawing over images</a>
</div>
<div class="toc2"><a href="2320-display-sampling.jsp#imagedisplaysamplingdataondisplayedimages">Sampling Data on Displayed Images</a>
</div>
<div class="toc3"><a href="2320-display-sampling.jsp#imagedisplaysamplingdataondisplayedimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="2320-display-sampling.jsp#imagedisplaysamplingdataondisplayedimagesacomponenttosamplelinesondisplayedimages">A Component to Sample Lines on Displayed Images</a>
</div>
<div class="toc1">How To...</div>
<div class="toc2"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingquality">How can I reduce an image file size without losing quality?</a>
</div>
<div class="toc3"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityintroduction">Introduction</a>
</div>
<div class="toc3"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityexamples">Examples</a>
</div>
<div class="toc3"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityrelatedquestions">Related Questions</a>
</div>
<div class="toc3"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityreferences">References</a>
</div>
<div class="toc2"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequal">How do I compare two images to see if they are equal?</a>
</div>
<div class="toc3"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalintroduction">Introduction</a>
</div>
<div class="toc3"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalcomparingimagesinregardtotheircontents">Comparing images in regard to their contents</a>
</div>
<div class="toc3"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontents">A very simple algorithm to compare images for <i>possible</i> similarity without considering the high-level contents</a>
</div>
<div class="toc3"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalreferences">References</a>
</div>
<div class="toc2"><a href="6320-howto-pansharpening.jsp#howtohowcaniimplementapansharpeningalgorithm">How can I implement a pan sharpening algorithm?</a>
</div>
<div class="toc3"><a href="6320-howto-pansharpening.jsp#howtohowcaniimplementapansharpeningalgorithmintroduction">Introduction</a>
</div>
<div class="toc3"><a href="6320-howto-pansharpening.jsp#howtohowcaniimplementapansharpeningalgorithmimplementation">Implementation</a>
</div>
<div class="toc3"><a href="6320-howto-pansharpening.jsp#howtohowcaniimplementapansharpeningalgorithmreferences">References</a>
</div>
<div class="toc2"><a href="6330-howto-ndvi.jsp#howtohowcanicalculateanddisplayandviimage">How can I calculate and display a NDVI image?</a>
</div>
<div class="toc3"><a href="6330-howto-ndvi.jsp#howtohowcanicalculateanddisplayandviimageintroduction">Introduction</a>
</div>
<div class="toc3"><a href="6330-howto-ndvi.jsp#howtohowcanicalculateanddisplayandviimageimplementation">Implementation</a>
</div>
<div class="toc3"><a href="6330-howto-ndvi.jsp#howtohowcanicalculateanddisplayandviimagereferences">References</a>
</div>
<div class="toc2"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimages">How can I implement a chroma key composition on images?</a>
</div>
<div class="toc3"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestransparency">Transparency</a>
</div>
<div class="toc3"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestranslucency">Translucency</a>
</div>
<div class="toc3"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestipsandtricks">Tips and tricks</a>
</div>
<div class="toc3"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagesreferences">References</a>
</div>
<div class="toc1">Tutorials</div>
<div class="toc2"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassification">A Brief Tutorial on Supervised Image Classification</a>
</div>
<div class="toc3"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationintroduction">Introduction</a>
</div>
<div class="toc3"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationconcepts">Concepts</a>
</div>
<div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationconceptspixelbasedimageclassification">Pixel-based image classification</a>
</div>
<div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationconceptsdistanceinfeaturespace">Distance in feature space</a>
</div>
<div class="toc3"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassification">Sample extraction for pixel-based classification</a>
</div>
<div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsamplesfortheexamplesinthistutorial">Samples for the examples in this tutorial</a>
</div>
<div class="toc3"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheparallelepipedclassifier">The Parallelepiped Classifier</a>
</div>
<div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheparallelepipedclassifiersignaturecreationtraining">Signature Creation (training)</a>
</div>
<div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheparallelepipedclassifierclassification">Classification</a>
</div>
<div class="toc3"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifier">The Minimum Distance Classifier</a>
</div>
<div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifiersignaturecreationtraining">Signature Creation (training)</a>
</div>
<div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifierclassification">Classification</a>
</div>
<div class="toc3"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationfinalcomments">Final Comments</a>
</div>
<div class="toc3"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationreferences">References</a>
</div>
<div class="toc1">Legacy Code</div>
<div class="toc2"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffproject">Old code from the JAIStuff Project</a>
</div>
<div class="toc3"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectabout">About</a>
</div>
<div class="toc3"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimageanddatainformation">Image and Data Information</a>
</div>
<div class="toc3"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimagedisplay">Image Display</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimagedisplayhistograms">Histograms</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimagedisplaymiscdisplaycode">Misc Display Code</a>
</div>
<div class="toc3"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithms">Algorithms</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmscommonclassesusedbyotheralgorithms39implementations">Common classes (used by other algorithms&#39; implementations)</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmssimpleregiongrowing">Simple Region Growing</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmskmeansclustering">K-Means Clustering</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmsfuzzycmeansclustering">Fuzzy C-Means Clustering</a>
</div>
<div class="toc3"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperators">JAI Operators</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorspointoperators">Point Operators</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorspointoperatorsuserdefined">Point Operators (User-Defined)</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsareaoperators">Area Operators</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsgeometricoperators">Geometric Operators</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsstatisticsoperators">Statistics Operators</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsstatisticsoperatorsuserdefined">Statistics Operators (User-Defined)</a>
</div>
<div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorssourcelessoperatorsuserdefined">Sourceless Operators (User-Defined)</a>
</div>
<div class="toc1">Datasets</div>
<div class="toc2"><a href="9100-datasets-colorimages.jsp#datasetscolorimages">Color Images</a>
</div>
<div class="toc3"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesmapschartsetc">Maps, charts, etc.</a>
</div>
<div class="toc3"><a href="9100-datasets-colorimages.jsp#datasetscolorimagessceneswithobjects">Scenes (with objects)</a>
</div>
<div class="toc3"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesremotesensingaerialimages">Remote sensing/aerial images</a>
</div>
<div class="toc3"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesastronomicalimages">Astronomical images</a>
</div>
<div class="toc3"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesdocuments">Documents</a>
</div>
<div class="toc2"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimages">Gray Level Images</a>
</div>
<div class="toc3"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimagesmapschartsetc">Maps, charts, etc.</a>
</div>
<div class="toc3"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimagesscanneddocuments">Scanned Documents</a>
</div>
<div class="toc2"><a href="9130-datasets-nonbyteimages.jsp#datasetsnonbyteimages">Non-byte Images</a>
</div>
<div class="toc3"><a href="9130-datasets-nonbyteimages.jsp#datasetsnonbyteimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="9130-datasets-nonbyteimages.jsp#datasetsnonbyteimagesdigitalelevationmodelimages">Digital Elevation Model Images</a>
</div>
<div class="toc3"><a href="9130-datasets-nonbyteimages.jsp#datasetsnonbyteimagesmedicalimages">Medical Images</a>
</div>
<div class="toc2"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimages">Multispectral and Hyperspectral Images</a>
</div>
<div class="toc3"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimageslandsat7images">Landsat 7 Images</a>
</div>
<div class="toc3"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesikonosimages">Ikonos Images</a>
</div>
<div class="toc3"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesbearandfruithyperspectralimages">Bear and Fruit Hyperspectral Images</a>
</div>
<div class="toc2"><a href="9180-datasets-colorimages-synthetic.jsp#datasetsartificialgeneratedimages">Artificial (generated) images</a>
</div>
<div class="toc3"><a href="9180-datasets-colorimages-synthetic.jsp#datasetsartificialgeneratedimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="9180-datasets-colorimages-synthetic.jsp#datasetsartificialgeneratedimages24bitcolorimages">24-bit color images</a>
</div>
<div class="spacer"></div> 


</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150331095040/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150331095040/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150331095040/https://ssl." : "/web/20150331095040/http://www.");
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
     FILE ARCHIVED ON 9:50:40 Mar 31, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 1:33:40 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
