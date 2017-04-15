


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app13.us.archive.org";archive_analytics.values.server_ms=234;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/lof.jsp";

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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/lof.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150224052148" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20131019005951/http://www.lac.inpe.br/JIPCookbook/lof.jsp" title="19 Oct 2013">OCT</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 5:21:48 Feb 24, 2015">FEB</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20150428053014/http://www.lac.inpe.br/JIPCookbook/lof.jsp" title="28 Apr 2015"><strong>APR</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131019005951/http://www.lac.inpe.br/JIPCookbook/lof.jsp" title="0:59:51 Oct 19, 2013"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 5:21:48 Feb 24, 2015">24</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20150428053014/http://www.lac.inpe.br/JIPCookbook/lof.jsp" title="5:30:14 Apr 28, 2015"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131019005951/http://www.lac.inpe.br/JIPCookbook/lof.jsp" title="19 Oct 2013"><strong>2013</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 5:21:48 Feb 24, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
	           <a href="/web/20160419020320/http://www.lac.inpe.br/JIPCookbook/lof.jsp" title="19 Apr 2016"><strong>2016</strong></a>
	       
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150224052148*/http://www.lac.inpe.br/JIPCookbook/lof.jsp" title="See a list of every capture for this URL">23 captures</a>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:100100110010_2011:-1:101011001010_2012:-1:100101000100_2013:-1:000000010100_2014:-1:000000000000_2015:1:010100000001_2016:-1:010100100000_2017:-1:000000000000" />
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
<a href="/web/20150224052148/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150224052148/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
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

<div class="toc0">List of Figures</div><div class="toc1">Image and Data Manipulation</div><div class="toc2">Creating Black-and-White Images</div><div class="toc3">Without using JAI</div><div class="toc4"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjaipatterncreatedbythettcreatebwimagenojaittclass">Pattern created by the <tt>CreateBWImageNoJAI</tt> class.</a></div><div class="toc4"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjaipatterncreatedbythettcreatebwimagenojaiwithlutttclass">Pattern created by the <tt>CreateBWImageNoJAIWithLUT</tt> class.</a></div><div class="toc4"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjailenaimage">Lena image.</a></div><div class="toc4"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimageswithoutusingjailenaimagerenderedinapureblackandwhiteimage">Lena image, rendered in a pure black-and-white image.</a></div><div class="toc3">Using JAI</div><div class="toc4"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimagesusingjaipatterncreatedbythettcreatebwimagejaittclass">Pattern created by the <tt>CreateBWImageJAI</tt> class.</a></div><div class="toc4"><a href="1100-create-bw.jsp#imageanddatamanipulationcreatingblackandwhiteimagesusingjaipatterncreatedbythettcreatetiledbwimagejaittclass">Pattern created by the <tt>CreateTiledBWImageJAI</tt> class.</a></div><div class="toc2">Creating Gray-Level Images</div><div class="toc3">Without using JAI</div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimageswithoutusingjaipatterncreatedbythettcreateglimagenojaittclass">Pattern created by the <tt>CreateGLImageNoJAI</tt> class.</a></div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimageswithoutusingjaipatterncreatedbythettcreateglimagenojaiwithlutttclass">Pattern created by the <tt>CreateGLImageNoJAIWithLUT</tt> class.</a></div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimageswithoutusingjaipatterncreatedbythettcreateglimagenojairenderttclass">Pattern created by the <tt>CreateGLImageNoJAIRender</tt> class.</a></div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimageswithoutusingjailenaimage">Lena image.</a></div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimageswithoutusingjailenaimagerenderedinagraylevelimage">Lena image, rendered in a gray level image.</a></div><div class="toc3">Using JAI</div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimagesusingjaipatterncreatedbythettcreateglimagejaittclass">Pattern created by the <tt>CreateGLImageJAI</tt> class.</a></div><div class="toc4"><a href="1200-create-gl.jsp#imageanddatamanipulationcreatinggraylevelimagesusingjaipatterncreatedbythettcreateglimagejaittclass">Pattern created by the <tt>CreateGLImageJAI</tt> class.</a></div><div class="toc2">Creating RGB Images</div><div class="toc3">Without using JAI</div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaipatterncreatedbythettcreatergbimagenojaittclass">Pattern created by the <tt>CreateRGBImageNoJAI</tt> class.</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaipatterncreatedbythettcreatergbimagenojaiwithlutttclass">Pattern created by the <tt>CreateRGBImageNoJAIWithLUT</tt> class.</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaipatterncreatedbythettcreateimagefromcomponentttclass">Pattern created by the <tt>CreateImageFromComponent</tt> class.</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaipatterncreatedbythettcreateargbimagenojaittclass">Pattern created by the <tt>CreateARGBImageNoJAI</tt> class.</a></div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimageswithoutusingjaipatterncreatedbythettcreateargbimagenojai2ttclass">Pattern created by the <tt>CreateARGBImageNoJAI2</tt> class.</a></div><div class="toc3">Using JAI</div><div class="toc4"><a href="1300-create-rgb.jsp#imageanddatamanipulationcreatingrgbimagesusingjaipatterncreatedbythettcreatergbimagejaittclass">Pattern created by the <tt>CreateRGBImageJAI</tt> class.</a></div><div class="toc1">Image Display</div><div class="toc2">Displaying Images with the <tt>DisplayJAI</tt> class</div><div class="toc3">Displaying Images with the <tt>DisplayJAI</tt> class</div><div class="toc4"><a href="2050-display-displayjai.jsp#imagedisplaydisplayingimageswiththettdisplayjaittclassdisplayingimageswiththettdisplayjaittclassscreenshotofthettdisplayjaiexamplettapplication">Screenshot of the <tt>DisplayJAIExample</tt> application.</a></div><div class="toc2">Extending the <tt>DisplayJAI</tt> class</div><div class="toc3">Displaying information about pixels under the cursor</div><div class="toc4"><a href="2060-display-extendingdisplayjai.jsp#imagedisplayextendingthettdisplayjaittclassdisplayinginformationaboutpixelsunderthecursorscreenshotofthettdisplayjaiwithpixelinfoappttapplication">Screenshot of the <tt>DisplayJAIWithPixelInfoApp</tt> application.</a></div><div class="toc2">Displaying Multiple Images</div><div class="toc3">Displaying Synchronized Images</div><div class="toc4"><a href="2100-display-multipleimages.jsp#imagedisplaydisplayingmultipleimagesdisplayingsynchronizedimagesscreenshotofthettdemodisplaytwosynchronizedimagesttapplication">Screenshot of the <tt>DemoDisplayTwoSynchronizedImages</tt> application.</a></div><div class="toc2">Displaying Interactive Thumbnails</div><div class="toc3">Displaying Interactive Thumbnails</div><div class="toc4"><a href="2120-display-thumbnail.jsp#imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnailsscreenshotofthettdisplaythumbnailappttapplicationfirstexamplethumbnail">Screenshot of the <tt>DisplayThumbnailApp</tt> application (first example, thumbnail).</a></div><div class="toc4"><a href="2120-display-thumbnail.jsp#imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnailsscreenshotofthettdisplaythumbnailappttapplicationfirstexampleimageregioncorrespondingtotheselectedregiononthethumbnail">Screenshot of the <tt>DisplayThumbnailApp</tt> application (first example, image region corresponding to the selected region on the thumbnail).</a></div><div class="toc4"><a href="2120-display-thumbnail.jsp#imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnailsscreenshotofthettdisplaythumbnailappttapplicationsecondexamplethumbnail">Screenshot of the <tt>DisplayThumbnailApp</tt> application (second example, thumbnail).</a></div><div class="toc4"><a href="2120-display-thumbnail.jsp#imagedisplaydisplayinginteractivethumbnailsdisplayinginteractivethumbnailsscreenshotofthettdisplaythumbnailappttapplicationsecondexampleimageregioncorrespondingtotheselectedregiononthethumbnail">Screenshot of the <tt>DisplayThumbnailApp</tt> application (second example, image region corresponding to the selected region on the thumbnail).</a></div><div class="toc2">Using Surrogate Images</div><div class="toc3">Basic Surrogate Image Component</div><div class="toc4"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagesbasicsurrogateimagecomponentscreenshotofthettdisplaynbimagettapplication">Screenshot of the <tt>DisplayNBImage</tt> application.</a></div><div class="toc3">Surrogate Image Component with Look-Up Tables (LUTs)</div><div class="toc4"><a href="2200-display-surrogate.jsp#imagedisplayusingsurrogateimagessurrogateimagecomponentwithlookuptableslutsscreenshotofthettdisplaynbimagewithlutsappttapplication">Screenshot of the <tt>DisplayNBImageWithLUTsApp</tt> application.</a></div><div class="toc2">Displaying Volume (Multiband) Images</div><div class="toc3">Introduction</div><div class="toc4"><a href="2280-display-volume.jsp#imagedisplaydisplayingvolumemultibandimagesintroductionscreenshotofthettdisplayvolumesliceappttapplication">Screenshot of the <tt>DisplayVolumeSliceApp</tt> application.</a></div><div class="toc2">Drawing Over Images</div><div class="toc3">Drawing polygons and shapes over images</div><div class="toc4"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesdrawingpolygonsandshapesoverimagesscreenshotofthetthighlightpolygonttapplication">Screenshot of the <tt>HighlightPolygon</tt> application.</a></div><div class="toc4"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesdrawingpolygonsandshapesoverimagesscreenshotofthetthighlightpolygon2ttapplication">Screenshot of the <tt>HighlightPolygon2</tt> application.</a></div><div class="toc3">A very simple framework for drawing over images</div><div class="toc4"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesaverysimpleframeworkfordrawingoverimagesscreenshotofthettdemodisplayjaiwithannotationsttapplication">Screenshot of the <tt>DemoDisplayJAIWithAnnotations</tt> application.</a></div><div class="toc4"><a href="2300-display-annotation.jsp#imagedisplaydrawingoverimagesaverysimpleframeworkfordrawingoverimagesscreenshotofthettdemodisplayjaiwithannotations2ttapplication">Screenshot of the <tt>DemoDisplayJAIWithAnnotations2</tt> application.</a></div><div class="toc2">Sampling Data on Displayed Images</div><div class="toc3">A Component to Sample Lines on Displayed Images</div><div class="toc4"><a href="2320-display-sampling.jsp#imagedisplaysamplingdataondisplayedimagesacomponenttosamplelinesondisplayedimagesscreenshotofthettdemolinesampleabledisplayttapplicationselectionofthefirstpoint">Screenshot of the <tt>DemoLineSampleableDisplay</tt> application -- selection of the first point.</a></div><div class="toc4"><a href="2320-display-sampling.jsp#imagedisplaysamplingdataondisplayedimagesacomponenttosamplelinesondisplayedimagesscreenshotofthettdemolinesampleabledisplayttapplicationselectionofthesecondpoint">Screenshot of the <tt>DemoLineSampleableDisplay</tt> application -- selection of the second point.</a></div><div class="toc4"><a href="2320-display-sampling.jsp#imagedisplaysamplingdataondisplayedimagesacomponenttosamplelinesondisplayedimagesscreenshotofthettdemolinesampleabledisplayttapplicationttdisplayrgblinescomponentttcomponentwindow">Screenshot of the <tt>DemoLineSampleableDisplay</tt> application -- <tt>DisplayRGBLinesComponent</tt> component window.</a></div><div class="toc1">How To...</div><div class="toc2">How can I reduce an image file size without losing quality?</div><div class="toc3">Examples</div><div class="toc4"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesoriginaluncompressedimage">Original uncompressed image.</a></div><div class="toc4"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesjpegformat10compression">JPEG format, 1.0 compression.</a></div><div class="toc4"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesjpegformat09compression">JPEG format, 0.9 compression.</a></div><div class="toc4"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesjpegformat06compression">JPEG format, 0.6 compression.</a></div><div class="toc4"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesjpegformat03compression">JPEG format, 0.3 compression.</a></div><div class="toc4"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesjpegformat01compression">JPEG format, 0.1 compression.</a></div><div class="toc2">How do I compare two images to see if they are equal?</div><div class="toc3">Introduction</div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalintroductionsquirrelsavedusinggimpasajpgwith85quality">Squirrel, saved (using Gimp) as a jpg with 85% quality.</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalintroductionsquirrelsavedusinggimpasagifthecolorsarequantized">Squirrel, saved (using Gimp) as a gif. The colors are quantized.</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalintroductionsquirrelcroppedandscaledusinggimpandsavedasajpg">Squirrel, cropped and scaled (using Gimp) and saved as a jpg.</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalintroductionsquirrelsavedusinggimpasajpgwith5quality">Squirrel, saved (using Gimp) as a jpg with 5% quality.</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalintroductionthesamesquirrelotherposition">The same squirrel, other position.</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalintroductionadifferentanimalbehindagreenfence">A different animal behind a green fence.</a></div><div class="toc3">A very simple algorithm to compare images for <i>possible</i> similarity without considering the high-level contents</div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsregionsforsimilaritycalculation">Regions for similarity calculation.</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults1">Naive similarity comparison results (1).</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults2">Naive similarity comparison results (2).</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults3">Naive similarity comparison results (3).</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults4">Naive similarity comparison results (4).</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults5">Naive similarity comparison results (5).</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults6">Naive similarity comparison results (6).</a></div><div class="toc4"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults7">Naive similarity comparison results (7).</a></div><div class="toc2">How can I implement a pan sharpening algorithm?</div><div class="toc3">Introduction</div><div class="toc4"><a href="6320-howto-pansharpening.jsp#howtohowcaniimplementapansharpeningalgorithmintroductionrgbimagecompositionoftheredgreenandblueikonosbands">RGB Image (composition of the red, green and blue Ikonos bands).</a></div><div class="toc4"><a href="6320-howto-pansharpening.jsp#howtohowcaniimplementapansharpeningalgorithmintroductionikonospanchromaticband">Ikonos panchromatic band.</a></div><div class="toc4"><a href="6320-howto-pansharpening.jsp#howtohowcaniimplementapansharpeningalgorithmintroductionpansharpenedimage">Pan-sharpened image.</a></div><div class="toc3">Implementation</div><div class="toc4"><a href="6320-howto-pansharpening.jsp#howtohowcaniimplementapansharpeningalgorithmimplementationttihspansharpeningttapplicationscreenshot"><tt>IHSPanSharpening</tt> application screenshot</a></div><div class="toc2">How can I calculate and display a NDVI image?</div><div class="toc3">Implementation</div><div class="toc4"><a href="6330-howto-ndvi.jsp#howtohowcanicalculateanddisplayandviimageimplementationttviewndvittapplicationscreenshot"><tt>ViewNDVI</tt> application screenshot</a></div><div class="toc4"><a href="6330-howto-ndvi.jsp#howtohowcanicalculateanddisplayandviimageimplementationttviewndvittapplicationscreenshot"><tt>ViewNDVI</tt> application screenshot</a></div><div class="toc2">How can I implement a chroma key composition on images?</div><div class="toc3">Introduction</div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagesintroductionbackgroundimagejohnshopkinsuniversity39supperquad">Background image -- Johns Hopkins University&#39;s Upper Quad</a></div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagesintroductionoverlayimagegreenpixelswillnotberendered">Overlay image (green pixels will not be rendered)</a></div><div class="toc3">Transparency</div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestransparencyoverlaidimageusingtransparency">Overlaid image (using transparency)</a></div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestransparencydetailoftheoverlaidimageusingtransparency">Detail of the overlaid image (using transparency)</a></div><div class="toc3">Translucency</div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestranslucencyoverlaidimageusingtranslucency">Overlaid image (using translucency)</a></div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestranslucencydetailoftheoverlaidimageusingtranslucency">Detail of the overlaid image (using translucency)</a></div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestranslucencyoverlaidimageusingtranslucencycalculatedinthehsbcolorspace">Overlaid image (using translucency calculated in the HSB color space)</a></div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestranslucencydetailofoverlaidimageusingtranslucencycalculatedinthehsbcolorspace">Detail of overlaid image (using translucency calculated in the HSB color space)</a></div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestranslucencycompositionusingtolerancevalue001">Composition using tolerance value 0.01</a></div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestranslucencycompositionusingtolerancevalue01">Composition using tolerance value 0.1</a></div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestranslucencycompositionusingtolerancevalue04">Composition using tolerance value 0.4</a></div><div class="toc3">Tips and tricks</div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestipsandtricksoverlaidimagewithacompressedoverlayimage">Overlaid image (with a compressed overlay image)</a></div><div class="toc4"><a href="6520-howto-chromakey.jsp#howtohowcaniimplementachromakeycompositiononimagestipsandtricksdetailofoverlaidimagewithacompressedoverlayimage">Detail of overlaid image (with a compressed overlay image)</a></div><div class="toc1">Tutorials</div><div class="toc2">A Brief Tutorial on Supervised Image Classification</div><div class="toc3">Sample extraction for pixel-based classification</div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationlandsatetmimageofparabrazil">Landsat ETM image of Para, Brazil.</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsampleareaforclassescloudandshadow">Sample area for classes Cloud and Shadow.</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsampleareaforclassshadow">Sample area for class Shadow.</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsampleareaforclasswater">Sample area for class Water.</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsampleareaforclassforest">Sample area for class Forest.</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsampleareaforclasspasture">Sample area for class Pasture.</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsampleareaforclassurban">Sample area for class Urban.</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationplotforrgplane">Plot for R/G plane.</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationplotforrbplane">Plot for R/B plane.</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationplotforgbplane">Plot for G/B plane.</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationinteractivergbplot">Interactive RGB Plot.</a></div><div class="toc3">The Parallelepiped Classifier</div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheparallelepipedclassifierimageclassifiedwiththeparallelepipedmethod">Image classified with the parallelepiped method.</a></div><div class="toc3">The Minimum Distance Classifier</div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifierimageclassifiedwiththeminimumdistancemethod">Image classified with the minimum distance method.</a></div><div class="toc4"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifierimageclassifiedwiththeminimumdistancemethodwitharejectionthreshold">Image classified with the minimum distance method (with a rejection threshold).</a></div><div class="toc1">Datasets</div><div class="toc2">Color Images</div><div class="toc3">Maps, charts, etc.</div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesmapschartsetcalandusetopographicmapofmorijapan">A land use/topographic map of Mori, Japan.</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesmapschartsetcalandusetopographicmapoftakamorijapan">A land use/topographic map of Takamori, Japan.</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesmapschartsetcalandusetopographicmapofyahogatakejapan">A land use/topographic map of Yahogatake, Japan.</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesmapschartsetcanurbanlandusemapofkashiijapan">An urban/land use map of Kashii, Japan.</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesmapschartsetcanoldtopographicmapofs&atilde;ojos&eacute;doscamposbrazil">An old topographic map of São José dos Campos, Brazil.</a></div><div class="toc3">Scenes (with objects)</div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagessceneswithobjectstoy1">Toy 1.</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagessceneswithobjectstoy2">Toy 2.</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagessceneswithobjectstoy3">Toy 3.</a></div><div class="toc3">Remote sensing/aerial images</div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesremotesensingaerialimagess&atilde;ojos&eacute;doscamposikonosimage1">São José dos Campos Ikonos image (1).</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesremotesensingaerialimagess&atilde;ojos&eacute;doscamposikonosimage2">São José dos Campos Ikonos image (2).</a></div><div class="toc3">Astronomical images</div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesastronomicalimageshubbleultradeepfielda">Hubble Ultra Deep Field (A).</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesastronomicalimageshubbleultradeepfieldb">Hubble Ultra Deep Field (B).</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesastronomicalimageshubbleultradeepfieldc">Hubble Ultra Deep Field (C).</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesastronomicalimageshubbleultradeepfieldd">Hubble Ultra Deep Field (D).</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesastronomicalimageshubbleultradeepfielde">Hubble Ultra Deep Field (E).</a></div><div class="toc3">Documents</div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesdocumentsbookcoverversion1">Book cover (version 1).</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesdocumentsbookcoverversion2">Book cover (version 2).</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesdocumentsbookcoverversion4">Book cover (version 4).</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesdocumentsbookcoverversion6">Book cover (version 6).</a></div><div class="toc4"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesdocumentsbookcoverversion8">Book cover (version 8).</a></div><div class="toc2">Gray Level Images</div><div class="toc3">Maps, charts, etc.</div><div class="toc4"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimagesmapschartsetcalargetopographicmapofiizukajapan">A large topographic map of Iizuka, Japan.</a></div><div class="toc4"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimagesmapschartsetctopographicmapmarkerfactory">Topographic Map Marker: Factory.</a></div><div class="toc4"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimagesmapschartsetctopographicmapmarkerlighthouse">Topographic Map Marker: Lighthouse.</a></div><div class="toc4"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimagesmapschartsetctopographicmapmarkerpostoffice">Topographic Map Marker: Post Office.</a></div><div class="toc4"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimagesmapschartsetctopographicmapmarkershrine">Topographic Map Marker: Shrine.</a></div><div class="toc3">Scanned Documents</div><div class="toc4"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimagesscanneddocumentsabadlydigitizedpageofthekenkyusha39snewjapaneseenglishdictionary">A badly digitized page of the Kenkyusha&#39;s New Japanese-English Dictionary.</a></div><div class="toc4"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimagesscanneddocumentsapageofmykakikatajitendictionarywhichshowsthestrokeorderforjapanesekanji">A page of my Kakikata Jiten (dictionary which shows the stroke order for Japanese Kanji).</a></div><div class="toc4"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimagesscanneddocumentsabadlyscannedpageofthenihongojournalwithamixofcharactersandstyles">A badly scanned page of the Nihongo Journal with a mix of characters and styles.</a></div><div class="toc4"><a href="9120-datasets-glimages.jsp#datasetsgraylevelimagesscanneddocumentsasectionofageologicalprofile">A section of a geological profile.</a></div><div class="toc2">Non-byte Images</div><div class="toc3">Digital Elevation Model Images</div><div class="toc4"><a href="9130-datasets-nonbyteimages.jsp#datasetsnonbyteimagesdigitalelevationmodelimagesasmalldemimageconvertedfromagtopo30file">A small DEM image (converted from a GTOPO30 file).</a></div><div class="toc3">Medical Images</div><div class="toc4"><a href="9130-datasets-nonbyteimages.jsp#datasetsnonbyteimagesmedicalimagesadigitalxrayimageconvertedfromadicomimage">A digital X-Ray image, converted from a DICOM image.</a></div><div class="toc2">Multispectral and Hyperspectral Images</div><div class="toc3">Landsat 7 Images</div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band1">Lansdat Image, Path 218, Row 076, Band 1</a></div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band2">Lansdat Image, Path 218, Row 076, Band 2</a></div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band3">Lansdat Image, Path 218, Row 076, Band 3</a></div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band4">Lansdat Image, Path 218, Row 076, Band 4</a></div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band5">Lansdat Image, Path 218, Row 076, Band 5</a></div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band7">Lansdat Image, Path 218, Row 076, Band 7</a></div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band8">Lansdat Image, Path 218, Row 076, Band 8</a></div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimageslandsat7imagescompositionofbands74and2oftheimagesinthissection">Composition of bands 7,4 and 2 of the images in this section</a></div><div class="toc3">Ikonos Images</div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesikonosimagesikonosimageredband">Ikonos Image, Red Band</a></div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesikonosimagesikonosimagegreenband">Ikonos Image, Green Band</a></div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesikonosimagesikonosimageblueband">Ikonos Image, Blue Band</a></div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesikonosimagesikonosimagenearinfraredband">Ikonos Image, Near Infrared Band</a></div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesikonosimagesikonosimagepanchromaticband">Ikonos Image, Panchromatic Band</a></div><div class="toc3">Bear and Fruit Hyperspectral Images</div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesbearandfruithyperspectralimagesregionofthebearandfruitgrayhyperspectralimage">Region of the Bear and Fruit Gray hyperspectral image</a></div><div class="toc4"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesbearandfruithyperspectralimagesbearandfruitgrayhyperspectralimagerescaled"> Bear and Fruit Gray hyperspectral image, rescaled</a></div><div class="toc2">Artificial (generated) images</div><div class="toc3">24-bit color images</div><div class="toc4"><a href="9180-datasets-colorimages-synthetic.jsp#datasetsartificialgeneratedimages24bitcolorimagesfourcolorpattern">Four-color pattern</a></div><div class="toc4"><a href="9180-datasets-colorimages-synthetic.jsp#datasetsartificialgeneratedimages24bitcolorimagesfourcolorpatternblurredwith5x5kernel">Four-color pattern, blurred with 5x5 kernel</a></div><div class="toc4"><a href="9180-datasets-colorimages-synthetic.jsp#datasetsartificialgeneratedimages24bitcolorimagesfourcolorpatternblurredwith15x15kernel">Four-color pattern, blurred with 15x15 kernel</a></div><div class="spacer"></div> 


</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150224052148/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150224052148/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150224052148/https://ssl." : "/web/20150224052148/http://www.");
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
     FILE ARCHIVED ON 5:21:48 Feb 24, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 1:33:46 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
