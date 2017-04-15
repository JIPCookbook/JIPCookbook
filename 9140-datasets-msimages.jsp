


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app0.us.archive.org";archive_analytics.values.server_ms=344;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/9140-datasets-msimages.jsp";

var firstYear = 1996;
var displayDay = "22";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/9140-datasets-msimages.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150322034217" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20120624051403/http://www.lac.inpe.br/JIPCookbook/9140-datasets-msimages.jsp" title="24 Jun 2012">JUN</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 3:42:17 Mar 22, 2015">MAR</td>
		<td class="f" nowrap="nowrap">
		
		    Apr
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20120624051403/http://www.lac.inpe.br/JIPCookbook/9140-datasets-msimages.jsp" title="5:14:03 Jun 24, 2012"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 3:42:17 Mar 22, 2015">22</td>
	       <td class="f" nowrap="nowrap">
               
                   <img src="/static/images/toolbar/wm_tb_nxt_off.png" alt="Next capture" width="14" height="16" border="0"/>
               
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20120624051403/http://www.lac.inpe.br/JIPCookbook/9140-datasets-msimages.jsp" title="24 Jun 2012"><strong>2012</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 3:42:17 Mar 22, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
                   2016
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150322034217*/http://www.lac.inpe.br/JIPCookbook/9140-datasets-msimages.jsp" title="See a list of every capture for this URL">11 captures</a>
           <div class="r" title="Timespan for captures of this URL">16 Jul 10 - 22 Mar 15</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000100000_2011:-1:001100110010_2012:-1:200011000000_2013:-1:000000000000_2014:-1:000000000000_2015:2:001000000000_2016:-1:000000000000_2017:-1:000000000000" />
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
<a href="/web/20150322034217/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150322034217/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">
 
<p class="chapter">Multispectral and Hyperspectral Images</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimageslandsat7images">Landsat 7 Images</a>
</div>
<div class="toc3"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesikonosimages">Ikonos Images</a>
</div>
<div class="toc3"><a href="9140-datasets-msimages.jsp#datasetsmultispectralandhyperspectralimagesbearandfruithyperspectralimages">Bear and Fruit Hyperspectral Images</a>
</div>
</div>

<p class="section"><a name="datasetsmultispectralandhyperspectralimagesintroduction"></a>Introduction</p>

<p>This chapter contains some downloadable datasets (mostly bands of multispectral images or data sets). Some of those datasets were used in examples
throughout this book. Click on the image icons to download the datasets/images. Please note that some of those image and data files are <b>quite</b> large.</p>



<p class="section"><a name="datasetsmultispectralandhyperspectralimageslandsat7images"></a>Landsat 7 Images</p>

<p>These images were obtained from the <a href="/web/20150322034217/http://glcf.umiacs.umd.edu/index.shtml">Global Land Cover Facility</a>, cropped to represent a small area of interest.<br>
Some bands' resolution is 30x30 meters, Band 8 is 15x15 meters. The color image is a color composition with bands 7,4,2 as R,G,B.</p>
<p>Some of those images were used in the chapter <a href="6320-howto-pansharpening.jsp">How can I implement a pan sharpening algorithm?</a>. 
</p>
<table class="simpletable">
<tr>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band1">&nbsp;</a><a href="Resources/Datasets/Landsat7_218076_B1.png"><img class="figure" src="Resources/Datasets/Landsat7_218076_B1_icon.jpg" border=0 alt="Lansdat Image, Path 218, Row 076, Band 1"></a>
<p class="caption">Lansdat Image, Path 218, Row 076, Band 1<br>Click on the icon for a larger image.<br>(PNG, 800x800, 292.8K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band2">&nbsp;</a><a href="Resources/Datasets/Landsat7_218076_B2.png"><img class="figure" src="Resources/Datasets/Landsat7_218076_B2_icon.jpg" border=0 alt="Lansdat Image, Path 218, Row 076, Band 2"></a>
<p class="caption">Lansdat Image, Path 218, Row 076, Band 2<br>Click on the icon for a larger image.<br>(PNG, 800x800, 312.7K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band3">&nbsp;</a><a href="Resources/Datasets/Landsat7_218076_B3.png"><img class="figure" src="Resources/Datasets/Landsat7_218076_B3_icon.jpg" border=0 alt="Lansdat Image, Path 218, Row 076, Band 3"></a>
<p class="caption">Lansdat Image, Path 218, Row 076, Band 3<br>Click on the icon for a larger image.<br>(PNG, 800x800, 396.0K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band4">&nbsp;</a><a href="Resources/Datasets/Landsat7_218076_B4.png"><img class="figure" src="Resources/Datasets/Landsat7_218076_B4_icon.jpg" border=0 alt="Lansdat Image, Path 218, Row 076, Band 4"></a>
<p class="caption">Lansdat Image, Path 218, Row 076, Band 4<br>Click on the icon for a larger image.<br>(PNG, 800x800, 420.8K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band5">&nbsp;</a><a href="Resources/Datasets/Landsat7_218076_B5.png"><img class="figure" src="Resources/Datasets/Landsat7_218076_B5_icon.jpg" border=0 alt="Lansdat Image, Path 218, Row 076, Band 5"></a>
<p class="caption">Lansdat Image, Path 218, Row 076, Band 5<br>Click on the icon for a larger image.<br>(PNG, 800x800, 514.6K)</p>
<div class="spacer">&nbsp;</div>

  </td>
</tr>
<tr>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band7">&nbsp;</a><a href="Resources/Datasets/Landsat7_218076_B7.png"><img class="figure" src="Resources/Datasets/Landsat7_218076_B7_icon.jpg" border=0 alt="Lansdat Image, Path 218, Row 076, Band 7"></a>
<p class="caption">Lansdat Image, Path 218, Row 076, Band 7<br>Click on the icon for a larger image.<br>(PNG, 800x800, 481.3K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimageslandsat7imageslansdatimagepath218row076band8">&nbsp;</a><a href="Resources/Datasets/Landsat7_218076_B8.png"><img class="figure" src="Resources/Datasets/Landsat7_218076_B8_icon.jpg" border=0 alt="Lansdat Image, Path 218, Row 076, Band 8"></a>
<p class="caption">Lansdat Image, Path 218, Row 076, Band 8<br>Click on the icon for a larger image.<br>(PNG, 1600x1600, 1.3M)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimageslandsat7imagescompositionofbands74and2oftheimagesinthissection">&nbsp;</a><a href="Resources/Datasets/Landsat7_218076_742.png"><img class="figure" src="Resources/Datasets/Landsat7_218076_742_icon.jpg" border=0 alt="Composition of bands 7,4 and 2 of the images in this section"></a>
<p class="caption">Composition of bands 7,4 and 2 of the images in this section<br>Click on the icon for a larger image.<br>(PNG, 800x800, 971.0K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    &nbsp;
  </td>
  <td class="simpletable fivecolumns">
    &nbsp;
  </td>
</tr>
</table>



<p class="section"><a name="datasetsmultispectralandhyperspectralimagesikonosimages"></a>Ikonos Images</p>

<p>Images from the <a href="/web/20150322034217/http://www.geoeye.com/CorpSite/products/imagery-sources/Default.aspx#ikonos">Ikonos</a> remote sensing satellite. The red, blue, green and near infrared bands resolution is 4 meters, the panchromatic band resolution is 1 meter.</p>
<p>Some of those images were used in the chapter <a href="6320-howto-pansharpening.jsp">How can I implement a pan sharpening algorithm?</a>.
</p>
<table class="simpletable">
<tr>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimagesikonosimagesikonosimageredband">&nbsp;</a><a href="Resources/Datasets/sjc_cut_red.png"><img class="figure" src="Resources/Datasets/sjc_cut_red_icon.jpg" border=0 alt="Ikonos Image, Red Band"></a>
<p class="caption">Ikonos Image, Red Band<br>Click on the icon for a larger image.<br>(PNG, 512x512, 180.7K)</p>
<div class="spacer">&nbsp;</div>

  </td> 
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimagesikonosimagesikonosimagegreenband">&nbsp;</a><a href="Resources/Datasets/sjc_cut_grn.png"><img class="figure" src="Resources/Datasets/sjc_cut_grn_icon.jpg" border=0 alt="Ikonos Image, Green Band"></a>
<p class="caption">Ikonos Image, Green Band<br>Click on the icon for a larger image.<br>(PNG, 512x512, 169.4K)</p>
<div class="spacer">&nbsp;</div>

  </td> 
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimagesikonosimagesikonosimageblueband">&nbsp;</a><a href="Resources/Datasets/sjc_cut_blu.png"><img class="figure" src="Resources/Datasets/sjc_cut_blu_icon.jpg" border=0 alt="Ikonos Image, Blue Band"></a>
<p class="caption">Ikonos Image, Blue Band<br>Click on the icon for a larger image.<br>(PNG, 512x512, 141.2K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimagesikonosimagesikonosimagenearinfraredband">&nbsp;</a><a href="Resources/Datasets/sjc_cut_nir.png"><img class="figure" src="Resources/Datasets/sjc_cut_nir_icon.jpg" border=0 alt="Ikonos Image, Near Infrared Band"></a>
<p class="caption">Ikonos Image, Near Infrared Band<br>Click on the icon for a larger image.<br>(PNG, 512x512, 192.8K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimagesikonosimagesikonosimagepanchromaticband">&nbsp;</a><a href="Resources/Datasets/sjc_cut_pan.png"><img class="figure" src="Resources/Datasets/sjc_cut_pan_icon.jpg" border=0 alt="Ikonos Image, Panchromatic Band"></a>
<p class="caption">Ikonos Image, Panchromatic Band<br>Click on the icon for a larger image.<br>(PNG, 2048x2048, 2.8M)</p>
<div class="spacer">&nbsp;</div>

  </td>
</tr>
</table>



<p class="section"><a name="datasetsmultispectralandhyperspectralimagesbearandfruithyperspectralimages"></a>Bear and Fruit Hyperspectral Images</p>


<p>Two hyperspectral images based on the  
<a href="/web/20150322034217/http://color.psych.upenn.edu/hyperspectral/bearfruitgray/bearfruitgray.html">Bear and Fruit Gray images</a>, 
from <a href="/web/20150322034217/http://color.psych.upenn.edu/brainard/">David Brainard</a> of 
<a href="/web/20150322034217/http://www.upenn.edu/">University of Pennsylvania</a>. Both images have 31 bands and are stored in the
TIFF format.</p>

<p>Some of those images were used in the chapter <a href="3050-io-raw.jsp">null</a>.
The images' icons were created from RGB composition of the hyperspectral images (see application on chapter
<a href="2250-display-composited.jsp">null</a>).</p>
<table class="simpletable">
<tr>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimagesbearandfruithyperspectralimagesregionofthebearandfruitgrayhyperspectralimage">&nbsp;</a><a href="Resources/Datasets/bearfruitregion.tif"><img class="figure" src="Resources/Datasets/bearfruitregion_icon.jpg" border=0 alt="Region of the Bear and Fruit Gray hyperspectral image"></a>
<p class="caption">Region of the Bear and Fruit Gray hyperspectral image<br>Click on the icon for a larger image.<br>(TIFF, 600x600, <span class="alert">21.3M</span>)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetsmultispectralandhyperspectralimagesbearandfruithyperspectralimagesbearandfruitgrayhyperspectralimagerescaled">&nbsp;</a><a href="Resources/Datasets/bearfruitscaled.tif"><img class="figure" src="Resources/Datasets/bearfruitscaled_icon.jpg" border=0 alt=" Bear and Fruit Gray hyperspectral image, rescaled"></a>
<p class="caption"> Bear and Fruit Gray hyperspectral image, rescaled<br>Click on the icon for a larger image.<br>(TIFF, 404x404, <span class="alert">9.7M</span>)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">&nbsp;</td>
  <td class="simpletable fivecolumns">&nbsp;</td>
  <td class="simpletable fivecolumns">&nbsp;</td>
</tr>
</table>





<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="9120-datasets-glimages.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="9120-datasets-glimages.jsp">Gray Level Images</a></td><td class="navigation1"><a href="9130-datasets-nonbyteimages.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="9130-datasets-nonbyteimages.jsp">Non-byte Images</a></td><td class="navigation0"><a href="9140-datasets-msimages.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="9140-datasets-msimages.jsp">Multispectral and Hyperspectral Images</a></td><td class="navigation1"><a href="9180-datasets-colorimages-synthetic.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="9180-datasets-colorimages-synthetic.jsp">Artificial (generated) images</a></td><td class="navigation2">&nbsp;</td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150322034217/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150322034217/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150322034217/https://ssl." : "/web/20150322034217/http://www.");
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
     FILE ARCHIVED ON 3:42:17 Mar 22, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 1:33:03 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
