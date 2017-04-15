


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app14.us.archive.org";archive_analytics.values.server_ms=224;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/lol.jsp";

var firstYear = 1996;
var displayDay = "24";
var displayMonth = "Feb";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/lol.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150224052217" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20131207082119/http://www.lac.inpe.br/JIPCookbook/lol.jsp" title="7 Dec 2013">DEC</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 5:22:17 Feb 24, 2015">FEB</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20150428050307/http://www.lac.inpe.br/JIPCookbook/lol.jsp" title="28 Apr 2015"><strong>APR</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131207082119/http://www.lac.inpe.br/JIPCookbook/lol.jsp" title="8:21:19 Dec 7, 2013"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 5:22:17 Feb 24, 2015">24</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20150428050307/http://www.lac.inpe.br/JIPCookbook/lol.jsp" title="5:03:07 Apr 28, 2015"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131207082119/http://www.lac.inpe.br/JIPCookbook/lol.jsp" title="7 Dec 2013"><strong>2013</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 5:22:17 Feb 24, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
	           <a href="/web/20160419020151/http://www.lac.inpe.br/JIPCookbook/lol.jsp" title="19 Apr 2016"><strong>2016</strong></a>
	       
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150224052217*/http://www.lac.inpe.br/JIPCookbook/lol.jsp" title="See a list of every capture for this URL">21 captures</a>
           <div class="r" title="Timespan for captures of this URL">30 Jan 10 - 13 Jul 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:100200110011_2011:-1:000000001010_2012:-1:100101000100_2013:-1:000000010001_2014:-1:000000000000_2015:1:010100000001_2016:-1:010100100000_2017:-1:000000000000" />
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
<a href="/web/20150224052217/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150224052217/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">
<center>
<img src="Images/inpeslim.jpg" alt="Inpe"> 
</center>

<div class="toc0">List of Listings</div><div class="toc1">Image and Data Manipulation</div><div class="toc2">Creating Black-and-White Images</div><div class="toc3">Without using JAI</div><div class="toc4"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjaicreatebwimagenojaijava">CreateBWImageNoJAI.java</a></div><div class="toc4"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjaicreatebwimagenojai2java">CreateBWImageNoJAI2.java</a></div><div class="toc4"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjaicreatebwimagenojaiwithlutjava">CreateBWImageNoJAIWithLUT.java</a></div><div class="toc4"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjaicreatebwimagenojairenderjava">CreateBWImageNoJAIRender.java</a></div><div class="toc3">Using JAI</div><div class="toc4"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimagesusingjaicreatebwimagejaijava">CreateBWImageJAI.java</a></div><div class="toc4"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimagesusingjaicreatetiledbwimagejaijava">CreateTiledBWImageJAI.java</a></div><div class="toc2">Creating Gray-Level Images</div><div class="toc3">Without using JAI</div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimageswithoutusingjaicreateglimagenojaijava">CreateGLImageNoJAI.java</a></div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimageswithoutusingjaicreateglimagenojaiwithlutjava">CreateGLImageNoJAIWithLUT.java</a></div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimageswithoutusingjaicreateglimagenojairenderjava">CreateGLImageNoJAIRender.java</a></div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimageswithoutusingjaicreateglimagenojairender2java">CreateGLImageNoJAIRender2.java</a></div><div class="toc3">Using JAI</div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimagesusingjaicreateglimagejaijava">CreateGLImageJAI.java</a></div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimagesusingjaicreateglfpimagejaijava">CreateGLFPImageJAI.java</a></div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimagesusingjaicreateglvolumejava">CreateGLVolume.java</a></div><div class="toc2">Creating RGB Images</div><div class="toc3">Without using JAI</div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaicreatergbimagenojaijava">CreateRGBImageNoJAI.java</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaicreatergbimagenojai2java">CreateRGBImageNoJAI2.java</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaicreatergbimagenojai3java">CreateRGBImageNoJAI3.java</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaicreatergbimagenojaiwithlutjava">CreateRGBImageNoJAIWithLUT.java</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaimycomponentjava">MyComponent.java</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaicreateimagefromcomponentjava">CreateImageFromComponent.java</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaicreateargbimagenojaijava">CreateARGBImageNoJAI.java</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaicreateargbimagenojai2java">CreateARGBImageNoJAI2.java</a></div><div class="toc3">Using JAI</div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimagesusingjaicreatergbimagejaijava">CreateRGBImageJAI.java</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimagesusingjaicreatetiledrgbimagejaijava">CreateTiledRGBImageJAI.java</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimagesusingjaicreatergbimagejaiwithlutjava">CreateRGBImageJAIWithLUT.java</a></div><div class="toc1">Image Display</div><div class="toc2">Displaying Images with the <tt>DisplayJAI</tt> class</div><div class="toc3">Displaying Images with the <tt>DisplayJAI</tt> class</div><div class="toc4"><a href="2050-display-displayjai.jsp#imagedisplaydisplayingimageswiththettdisplayjaittclassdisplayingimageswiththettdisplayjaittclassdisplayjaiexamplejava">DisplayJAIExample.java</a></div><div class="toc2">Extending the <tt>DisplayJAI</tt> class</div><div class="toc3">Displaying information about pixels under the cursor</div><div class="toc4"><a href="2060-display-extendingdisplayjai.jsp#imagedisplayextendingthettdisplayjaittclassdisplayinginformationaboutpixelsunderthecursordisplayjaiwithpixelinfojava">DisplayJAIWithPixelInfo.java</a></div><div class="toc4"><a href="2060-display-extendingdisplayjai.jsp#imagedisplayextendingthettdisplayjaittclassdisplayinginformationaboutpixelsunderthecursordisplayjaiwithpixelinfoappjava">DisplayJAIWithPixelInfoApp.java</a></div><div class="toc2">Displaying Multiple Images</div><div class="toc3">Displaying Synchronized Images</div><div class="toc4"><a href="2100-display-multipleimages.jsp#imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimagesdisplaytwosynchronizedimagesjava">DisplayTwoSynchronizedImages.java</a></div><div class="toc4"><a href="2100-display-multipleimages.jsp#imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimagesdemodisplaytwosynchronizedimagesjava">DemoDisplayTwoSynchronizedImages.java</a></div><div class="toc4"><a href="2100-display-multipleimages.jsp#imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimagesdisplaythreesynchronizedimagesjava">DisplayThreeSynchronizedImages.java</a></div><div class="toc4"><a href="2100-display-multipleimages.jsp#imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimagesdisplayfoursynchronizedimagesjava">DisplayFourSynchronizedImages.java</a></div><div class="toc2">Displaying Interactive Thumbnails</div><div class="toc3">Displaying Interactive Thumbnails</div><div class="toc4"><a href="2120-display-thumbnail.jsp#imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnailsdisplaythumbnailjava">DisplayThumbnail.java</a></div><div class="toc4"><a href="2120-display-thumbnail.jsp#imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnailsdisplaythumbnailappjava">DisplayThumbnailApp.java</a></div><div class="toc2">Using Surrogate Images</div><div class="toc3">Basic Surrogate Image Component</div><div class="toc4"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagesbasicsurrogateimagecomponentdisplaynbimagejava">DisplayNBImage.java</a></div><div class="toc4"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagesbasicsurrogateimagecomponentdisplaynbimageappjava">DisplayNBImageApp.java</a></div><div class="toc3">Surrogate Image Component with Look-Up Tables (LUTs)</div><div class="toc4"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagessurrogateimagecomponentwithlookuptableslutsdisplaynbimagewithlutsjava">DisplayNBImageWithLUTs.java</a></div><div class="toc4"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagessurrogateimagecomponentwithlookuptableslutsdisplaynbimagewithlutsappjava">DisplayNBImageWithLUTsApp.java</a></div><div class="toc4"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagessurrogateimagecomponentwithlookuptableslutslutfunctionsjava">LUTFunctions.java</a></div><div class="toc2">Displaying Volume (Multiband) Images</div><div class="toc3">Introduction</div><div class="toc4"><a href="2280-display-volume.jsp#imagedisplaydisplayingvolumemultibandimagesintroductiondisplayvolumeslicejava">DisplayVolumeSlice.java</a></div><div class="toc4"><a href="2280-display-volume.jsp#imagedisplaydisplayingvolumemultibandimagesintroductiondisplayvolumesliceappjava">DisplayVolumeSliceApp.java</a></div><div class="toc2">Drawing Over Images</div><div class="toc3">Drawing polygons and shapes over images</div><div class="toc4"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesdrawingpolygonsandshapesoverimageshighlightpolygonjava">HighlightPolygon.java</a></div><div class="toc4"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesdrawingpolygonsandshapesoverimageshighlightpolygon2java">HighlightPolygon2.java</a></div><div class="toc3">A very simple framework for drawing over images</div><div class="toc4"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesaverysimpleframeworkfordrawingoverimagesdrawableannotationjava">DrawableAnnotation.java</a></div><div class="toc4"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesaverysimpleframeworkfordrawingoverimagescircleannotationjava">CircleAnnotation.java</a></div><div class="toc4"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesaverysimpleframeworkfordrawingoverimagesrectangleannotationjava">RectangleAnnotation.java</a></div><div class="toc4"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesaverysimpleframeworkfordrawingoverimagesdisplayjaiwithannotationsjava">DisplayJAIWithAnnotations.java</a></div><div class="toc4"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesaverysimpleframeworkfordrawingoverimagesdemodisplayjaiwithannotationsjava">DemoDisplayJAIWithAnnotations.java</a></div><div class="toc4"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesaverysimpleframeworkfordrawingoverimagesdemodisplayjaiwithannotations2java">DemoDisplayJAIWithAnnotations2.java</a></div><div class="toc2">Sampling Data on Displayed Images</div><div class="toc3">A Component to Sample Lines on Displayed Images</div><div class="toc4"><a href="2320-display-sampling.jsp#imagedisplaysamplingdataondisplayedimagesacomponenttosamplelinesondisplayedimageslinesampleabledisplayjava">LineSampleableDisplay.java</a></div><div class="toc4"><a href="2320-display-sampling.jsp#imagedisplaysamplingdataondisplayedimagesacomponenttosamplelinesondisplayedimagesdisplayrgblinescomponentjava">DisplayRGBLinesComponent.java</a></div><div class="toc4"><a href="2320-display-sampling.jsp#imagedisplaysamplingdataondisplayedimagesacomponenttosamplelinesondisplayedimagesdemolinesampleabledisplayjava">DemoLineSampleableDisplay.java</a></div><div class="toc1">How To...</div><div class="toc2">How can I reduce an image file size without losing quality?</div><div class="toc3">Examples</div><div class="toc4"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesdemojpegcompressionjava">DemoJPEGCompression.java</a></div><div class="toc2">How do I compare two images to see if they are equal?</div><div class="toc3">A very simple algorithm to compare images for <i>possible</i> similarity without considering the high-level contents</div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilarityfinderjava">NaiveSimilarityFinder.java</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsjpegimagefilefilterjava">JPEGImageFileFilter.java</a></div><div class="toc2">How can I implement a pan sharpening algorithm?</div><div class="toc3">Implementation</div><div class="toc4"><a href="6320-howto-pansharpening.jsp#howtohowcaniimplementapansharpeningalgorithmimplementationihspansharpeningjava">IHSPanSharpening.java</a></div><div class="toc2">How can I calculate and display a NDVI image?</div><div class="toc3">Implementation</div><div class="toc4"><a href="6330-howto-ndvi.jsp#howtohowcanicalculateanddisplayandviimageimplementationviewndvijava">ViewNDVI.java</a></div><div class="toc4"><a href="6330-howto-ndvi.jsp#howtohowcanicalculateanddisplayandviimageimplementationviewndvilutjava">ViewNDVILUT.java</a></div><div class="toc2">How can I implement a chroma key composition on images?</div><div class="toc3">Transparency</div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestransparencytransparencybycolorsjava">TransparencyByColors.java</a></div><div class="toc3">Translucency</div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestranslucencytranslucencybycolorsjava">TranslucencyByColors.java</a></div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestranslucencytranslucencybycolorshsbjava">TranslucencyByColorsHSB.java</a></div><div class="toc1">Tutorials</div><div class="toc2">A Brief Tutorial on Supervised Image Classification</div><div class="toc3">The Parallelepiped Classifier</div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheparallelepipedclassifiercreateparallelepipedsignaturesjava">CreateParallelepipedSignatures.java</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheparallelepipedclassifierclassifywithparallelepipedalgorithmjava">ClassifyWithParallelepipedAlgorithm.java</a></div><div class="toc3">The Minimum Distance Classifier</div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifiercreateminimumdistancesignaturesjava">CreateMinimumDistanceSignatures.java</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifierclassifywithminimumdistancealgorithmjava">ClassifyWithMinimumDistanceAlgorithm.java</a></div><div class="toc1">Legacy Code</div><div class="toc2">Old code from the JAIStuff Project</div><div class="toc3">Image and Data Information</div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimageanddatainformationshowimageinfojava">ShowImageInfo.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimageanddatainformationprocesspixelsusingrectiteratorjava">ProcessPixelsUsingRectIterator.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimageanddatainformationprocesspixelsusingrandomiteratorjava">ProcessPixelsUsingRandomIterator.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimageanddatainformationprocesspixelsusingrasterjava">ProcessPixelsUsingRaster.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimageanddatainformationprocesspixelsusingbufferjava">ProcessPixelsUsingBuffer.java</a></div><div class="toc3">Image Display</div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimagedisplaydisplayhistogramcomponentjava">DisplayHistogramComponent.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimagedisplaydisplayhistogramappjava">DisplayHistogramApp.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimagedisplaydisplayrgbhistogramappjava">DisplayRGBHistogramApp.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectimagedisplayplotregionsinrgbspacejava">PlotRegionsInRGBSpace.java</a></div><div class="toc3">Algorithms</div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmsimageprocessingtaskjava">ImageProcessingTask.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmssimpleregiongrowingjava">SimpleRegionGrowing.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmsdemosimpleregiongrowingjava">DemoSimpleRegionGrowing.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmskmeansimageclusteringjava">KMeansImageClustering.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmsdemokmeansimageclusteringjava">DemoKMeansImageClustering.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmsfuzzycmeansimageclusteringjava">FuzzyCMeansImageClustering.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmssimplefuzzycmeansimageclusteringappjava">SimpleFuzzyCMeansImageClusteringApp.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmsfuzzycmeansimageclusteringappjava">FuzzyCMeansImageClusteringApp.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectalgorithmsautofuzzycmeansimageclusteringappjava">AutoFuzzyCMeansImageClusteringApp.java</a></div><div class="toc3">JAI Operators</div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsbandselectjava">BandSelect.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsbandcombinejava">BandCombine.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsbandmergejava">BandMerge.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsbinarizejava">Binarize.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsinvertjava">Invert.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorscolorquantizerjava">ColorQuantizer.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsborderjava">Border.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorscropjava">Crop.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorssubtractjava">Subtract.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsarithmeticopsjava">ArithmeticOps.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorslogicalopsjava">LogicalOps.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsthreevaluessegmentationrifjava">ThreeValuesSegmentationRIF.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsthreevaluessegmentationdescriptorjava">ThreeValuesSegmentationDescriptor.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsthreevaluessegmentationopimagejava">ThreeValuesSegmentationOpImage.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsdemothreevaluessegmentationoperatorjava">DemoThreeValuesSegmentationOperator.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorssmoothjava">Smooth.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsedgejava">Edge.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsopenjava">Open.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsclosejava">Close.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsmmorphjava">MMorph.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsscalejava">Scale.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsrotatejava">Rotate.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsshearjava">Shear.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsextremajava">Extrema.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorshistogramappjava">HistogramApp.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsrgbcolorjava">RGBColor.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorscountrgbpixelsrifjava">CountRGBPixelsRIF.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorscountrgbpixelsdescriptorjava">CountRGBPixelsDescriptor.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorscountrgbpixelsopimagejava">CountRGBPixelsOpImage.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsdemocountrgbpixelsoperatorjava">DemoCountRGBPixelsOperator.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorscreatecheckboardpatternrifjava">CreateCheckboardPatternRIF.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorscreatecheckboardpatterndescriptorjava">CreateCheckboardPatternDescriptor.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorscreatecheckboardpatternopimagejava">CreateCheckboardPatternOpImage.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsdemocreatecheckboardpatternoperatorjava">DemoCreateCheckboardPatternOperator.java</a></div><div class="toc4"><a href="8000-jaistuff.jsp#legacycodeoldcodefromthejaistuffprojectjaioperatorsdemocreatecheckboardpatternoperatorclijava">DemoCreateCheckboardPatternOperatorCLI.java</a></div><div class="spacer"></div> 


</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150224052217/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150224052217/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150224052217/https://ssl." : "/web/20150224052217/http://www.");
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
     FILE ARCHIVED ON 5:22:17 Feb 24, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 1:33:49 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
