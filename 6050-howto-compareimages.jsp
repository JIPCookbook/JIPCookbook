


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app8.us.archive.org";archive_analytics.values.server_ms=511;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/6050-howto-compareimages.jsp";

var firstYear = 1996;
var displayDay = "30";
var displayMonth = "Apr";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/6050-howto-compareimages.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150430132735" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20150325055305/http://www.lac.inpe.br/JIPCookbook/6050-howto-compareimages.jsp" title="25 Mar 2015">MAR</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 13:27:35 Apr 30, 2015">APR</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20150801201132/http://www.lac.inpe.br/JIPCookbook/6050-howto-compareimages.jsp" title="1 Aug 2015"><strong>AUG</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20150325055305/http://www.lac.inpe.br/JIPCookbook/6050-howto-compareimages.jsp" title="5:53:05 Mar 25, 2015"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 13:27:35 Apr 30, 2015">30</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20150801201132/http://www.lac.inpe.br/JIPCookbook/6050-howto-compareimages.jsp" title="20:11:32 Aug 1, 2015"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20140424185641/http://www.lac.inpe.br/JIPCookbook/6050-howto-compareimages.jsp" title="24 Apr 2014"><strong>2014</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 13:27:35 Apr 30, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
	           <a href="/web/20160507201024/http://www.lac.inpe.br/JIPCookbook/6050-howto-compareimages.jsp" title="7 May 2016"><strong>2016</strong></a>
	       
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150430132735*/http://www.lac.inpe.br/JIPCookbook/6050-howto-compareimages.jsp" title="See a list of every capture for this URL">43 captures</a>
           <div class="r" title="Timespan for captures of this URL">16 Jul 10 - 6 Oct 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000111011_2011:-1:000110001111_2012:-1:000101011010_2013:-1:100000110100_2014:-1:011100000100_2015:3:111100011111_2016:-1:011121111100_2017:-1:000000000000" />
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
<a href="/web/20150430132735/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150430132735/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">How do I compare two images to see if they are equal?</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalintroduction">Introduction</a>
</div>
<div class="toc3"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalcomparingimagesinregardtotheircontents">Comparing images in regard to their contents</a>
</div>
<div class="toc3"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontents">A very simple algorithm to compare images for <i>possible</i> similarity without considering the high-level contents</a>
</div>
<div class="toc3"><a href="6050-howto-compareimages.jsp#howtohowdoicomparetwoimagestoseeiftheyareequalreferences">References</a>
</div>
</div>

<p class="section"><a name="howtohowdoicomparetwoimagestoseeiftheyareequalintroduction"></a>Introduction</p>

<p>Often people ask how can they compare images (probably meaning the <i>contents</i> of images) to see whether they are equal, hoping for a simple
 function or operator that returns <tt>true</tt> or a value between 0 and 1 where 0 means different, 1 means equal and intermediate values can be
 considered different degrees of similarity.  
 Many applications would benefit of this kind of high-level comparison, for example, for detection of image copyright violations, 
 face identification in crowds for security purposes, semantic image searching, visual navigation for robots, etc. 
 </p>
 <p>Unfortunately 
 comparison of images contents is not a simple task, and in most cases, a ill-defined one.
</p>

<p>For example, consider the images below. Most of those depict the same animal, 
 so those could            
 be considered <u>equal</u> for some purposes (e.g. while searching the web for mammals behind fences), 
 or <u>completely different</u> for other purposes (e.g. looking for squirrels facing up or <i>large</i> mammals behind fences).
 </p>

<table class="simpletable">
  <tr>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalintroductionsquirrelsavedusinggimpasajpgwith85quality">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/esq4.jpg" border=0 alt="Squirrel, saved (using Gimp) as a jpg with 85% quality."><p class="caption">Squirrel, saved (using Gimp) as a jpg with 85% quality.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalintroductionsquirrelsavedusinggimpasagifthecolorsarequantized">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/esq4.gif" border=0 alt="Squirrel, saved (using Gimp) as a gif. The colors are quantized."><p class="caption">Squirrel, saved (using Gimp) as a gif. The colors are quantized.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalintroductionsquirrelcroppedandscaledusinggimpandsavedasajpg">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/esq4-zoom.jpg" border=0 alt="Squirrel, cropped and scaled (using Gimp) and saved as a jpg."><p class="caption">Squirrel, cropped and scaled (using Gimp) and saved as a jpg.</p>
<div class="spacer">&nbsp;</div>

    </td>
  </tr>
  <tr>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalintroductionsquirrelsavedusinggimpasajpgwith5quality">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/esq4-05.jpg" border=0 alt="Squirrel, saved (using Gimp) as a jpg with 5% quality."><p class="caption">Squirrel, saved (using Gimp) as a jpg with 5% quality.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalintroductionthesamesquirrelotherposition">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/esq3.jpg" border=0 alt="The same squirrel, other position."><p class="caption">The same squirrel, other position.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalintroductionadifferentanimalbehindagreenfence">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/elefante.jpg" border=0 alt="A different animal behind a green fence."><p class="caption">A different animal behind a green fence.</p>
<div class="spacer">&nbsp;</div>

    </td>
  </tr>
</table>

<p>Most people think about the <i>contents</i> of the image without realizing how complex its processing by the human visual system and brain is. 
 Do an experiment, show the first image to different people and ask "what's in this image?" -- probably most will describe the animal in the image
 (since it can be perceived as the <i>subject</i> in it), but the description 
 itself will probably vary in 
 completeness (number of relevant objects perceived in the image) and
 detail (amount of relevant information about each object). 
 If not even humans can come up with a simple, concise description of what's in an image (so we 
 could compare the <i>descriptions</i> of the contents), how can we expect 
 a computer to do that with a simple algorithm?</p> 

<p>The problem is that <b>computers cannot "see" an image and "compare" it to other to determine if they are equal</b>, where "equal" refers 
 to the images' contents. Granted, advances in image processing and computer vision may one day make this task feasible under controlled
 conditions, but not now, and definitely not with simple algorithms. Consider how many variables we have to deal with: each object on the images have a 
 shape, size, orientation, color (maybe more than one!), texture, etc.; the same object may appear different in images, e.g. it can appear in a different 
 position, scale, orientation or illumination conditions or combinations of those; it can be partially ocluded; should we consider these variations as
 irrelevant for the comparison or are they important? Should we assign different "weights" for the objects for similarity comparison
 so similarity measures in some are more important than in others? 
 Small objects can be missing in one of the images; should we ignore them? 
 Is "background" an object and should it be considered in the comparison, and what, <i>exactly</i>, is the background? </p>




<p class="section"><a name="howtohowdoicomparetwoimagestoseeiftheyareequalcomparingimagesinregardtotheircontents"></a>Comparing images in regard to their contents</p>

<p>If you want to compare images semantically, so some images on the example above will be considered equal (or very similar), 
 you will face a hard task that cannot be solved with simple algorithms.
 You will possibly have to process the image to extract a set of features that can be mapped 
 to semantic objects even if those features are different in regard to some aspects (e.g. position, scale) and compare 
 the objects' features instead of the pixel or image features.</p> 

<p>You can see that image contents comparison is <b>not</b> a simple task, but it can be made simpler if we decide to 
 reduce the problem to a simpler one -- instead of asking <i>"are the object in these images equal?"</i> we could ask
 <i>"are some of the regions in this image similar, in some aspect, to regions in the other image?"</i>. 
 Now we can deal with the problem with some image processing (and artificial intelligence) techniques. 
 </p>
<p>Some steps that <i>could</i> solve the problem are:</p>
<ol>
<li>If needed, pre-process the image (e.g. to enhance contrast, filter noise, etc.).</li>
<li>Do an <i>image segmentation</i>, process in which the image is converted to regions which contains pixels that are similar to pixels in the same region and 
  different from pixels to other regions. This can be done using region-growing, mathematical morphology, clustering or classification algorithms.
  There are many algorithms to do that, just google for "image segmentation" and other keywords to get more information.</li>
<li>With the regions, create descriptors for them. Descriptors are calculated from the region and can include shape, area, perimeter, number of holes, general 
  color of the region, texture, orientation, position, etc. </li> 
<li>If needed, do a <i>re-segmentation</i> of the image, process in which regions are merged if they can be considered as belonging to the same
  object. Note that this step may require some high-level knowledge of the objects and the task in general, seldom being
  fully automatic and often being task-dependent.</li>
<li>If needed, filter the regions that seem relevant to the task in hand, eliminating small regions or regions which are deemed unrelated to the
 task (again this may require some knowledge
 about the task).</li>    
<li>Store the image's regions' descriptor for further processing. Repeat those steps for other images.</li>
<li>Use the descriptors for comparison of the contents of the images, using some of many algorithms for pattern matching, classification, clustering, 
  artificial intelligence and data mining in general.</li>
</ol> 
<p>Note that the steps above are as generic as possible, and does not ensure success for a particular task. Note also that there are many
  possible algorithms that can be used in some steps, and each of those have many variations and parameters, therefore blind application of a
  off-the-shelf algorithm will probably lead to failure -- it is <b>very important</b> to understand what you are doing and why so you can
  expect useful, consistent results. 
  </p>
<p>Note also that the process used to extract semantic objects in the human brain is very, very complex and flexible, being able to
 map not only the semantic objects, but their generic behaviour on the scenes and even their categories as well. 
 It is very easy for us to point to the images that have a "squirrel facing up" or "small rodent hanging in a fence", but those
 tasks cannot be done with only image processing algorithms. 
</p>



<p class="section"><a name="howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontents"></a>A very simple algorithm to compare images for <i>possible</i> similarity without considering the high-level contents</p>


<p>In some applications a very superficial similarity measure between images can be useful.
 For example, consider the task of locating images approximately similar in content to one you have, but without
 any guarantee whatsoever that they represent or contain the same object -- something similar to a rough, passing similarity. 
 An obvious application would be locate all images in a 
 disk that can be similar to a chosen one.</p>  
<p>There are several possible ways to do that, but all of them require the extraction of some feature from the image to comparison with
 the features from other images <b>and</b> the calculation of a similarity measure. Both the feature extraction and similarity calculation
 algorithms can be as simple or complex as we want. </p>

<p>As an example, let's choose a simple feature extraction method and similarity 
 measure, both shown below:</p>

<table class="simpletable">
  <tr>
    <td class="simpletable">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsregionsforsimilaritycalculation">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/desenhosim.jpg" border=0 alt="Regions for similarity calculation."><p class="caption">Regions for similarity calculation.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable left">
      <p>The features for our test will be 25 RGB triples,
      corresponding to the average of the RGB values on the 25 regions marked in the figure on the left.
      The image will be normalized to 300x300 pixels. No texture or variance feature will be stored, only the color averages.
      Each region has 30x30 pixels.</p>
      <p>Each image will be represented, then, a 25x3 feature vector. 
      To calculate the similarity measure between two images <b>A</b> and <b>B</b> 
      we will take each of the 25 regions, calculate the Euclidean distance between the regions
      and accumulate.</p>
      <p>The distance from <b>A</b> to <b>A</b> will be, by definition, zero. The upper bound (maximum possible distance between
      two images, using this similarity measure method) is
      calculated as 25*(Math.sqrt( (255-0)*(255-0)+ (255-0)*(255-0)+ (255-0)*(255-0) )) 
      or a little bit over 11041.</p>
      </td>
  </tr>
</table>

<p>This method was chosen because it is simple to understand and implement and can be easily modified by the reader.
 It combines color (spectral) information with spatial (position/distribution) information, and is expected to be more
 robust (i.e. tolerant to differences) than comparing pixel by pixel or the average of the whole image, but, again,
 it is very simple and cannot be expected for perform well in any circumstances, being shown <b>only
 as an example</b>. </p> 

<p>To test the feature extraction and similarity measure we will use a set of
 24 test images, shown below. Some of those images have similar objects on
 them (wall, trees, sky) but we are <b>not</b> considering meaning on the images,
 just patches of similar colors. Images are in different sizes, click on the icons to get the
 full images.</p>
<p>
 The 16 images on the first two rows are photos of
 objects, while the last row is of images from the first two rows distorted in scale, color, position, etc.
 </p>
 
<table class="simpletable">
  <tr>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s01.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s01.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s02.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s02.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s03.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s03.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s04.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s04.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s05.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s05.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s06.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s06.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s07.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s07.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s08.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s08.jpg" alt="Similarity pattern test"></a>
    </td>
  </tr>
  <tr>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s09.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s09.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s10.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s10.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s11.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s11.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s12.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s12.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s13.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s13.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s14.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s14.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s15.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s15.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/s16.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_s16.jpg" alt="Similarity pattern test"></a>
    </td>
  </tr>
  <tr>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/d01.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_d01.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/d02.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_d02.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/d03.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_d03.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/d04.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_d04.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/d05.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_d05.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/d06.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_d06.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/d07.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_d07.jpg" alt="Similarity pattern test"></a>
    </td>
    <td class="simpletable legend">
      <a href="Resources/ImageSimilarity/d08.jpg"><img border=0 src="Resources/ImageSimilarity/icons/icon_d08.jpg" alt="Similarity pattern test"></a>
    </td>
  </tr>
</table>

<p>The application 
<b>NaiveSimilarityFinder</b>, show below,  
 has a GUI which allows the user to select a reference image <b>A</b> and then get all images in the same directory,
 normalize them to the same size (300x300), extract the features, calculate the distance from the features of <b>A</b> 
 and show them in order of less distant to most distant.</p> 
 
<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilarityfinderjava">&nbsp;</a><a href="/web/20150430132735/http://150.163.105.39:8080/JIPCookbook//Code/howto/compare/NaiveSimilarityFinder.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>NaiveSimilarityFinder.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;howto.compare;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.BorderLayout;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Color;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Container;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Font;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.GridLayout;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.RenderedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.renderable.ParameterBlock;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.InterpolationNearest;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.iterator.RandomIter;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.iterator.RandomIterFactory;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFileChooser;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JLabel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JOptionPane;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JPanel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JScrollPane;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;uses&nbsp;a&nbsp;very&nbsp;simple,&nbsp;naive&nbsp;similarity&nbsp;algorithm&nbsp;to&nbsp;compare&nbsp;an&nbsp;image  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;with&nbsp;all&nbsp;others&nbsp;in&nbsp;the&nbsp;same&nbsp;directory.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;NaiveSimilarityFinder&nbsp;<span class="classword">extends</span>&nbsp;JFrame  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;reference&nbsp;image&nbsp;"signature"&nbsp;(25&nbsp;representative&nbsp;pixels,&nbsp;each&nbsp;in&nbsp;R,G,B).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;use&nbsp;instances&nbsp;of&nbsp;Color&nbsp;to&nbsp;make&nbsp;things&nbsp;simpler.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;Color[][]&nbsp;signature;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;base&nbsp;size&nbsp;of&nbsp;the&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="datatype">int</span>&nbsp;baseSize&nbsp;=&nbsp;300;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;Where&nbsp;are&nbsp;all&nbsp;the&nbsp;files?  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="modifierword">final</span>&nbsp;String&nbsp;basePath&nbsp;=&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"/home/rafael/Pesquisa/ImageSimilarity"</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor,&nbsp;which&nbsp;creates&nbsp;the&nbsp;GUI&nbsp;and&nbsp;start&nbsp;the&nbsp;image&nbsp;processing&nbsp;task.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;NaiveSimilarityFinder(File&nbsp;reference)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;GUI  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">super</span>(<span class="string">"Naive&nbsp;Similarity&nbsp;Finder"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Container&nbsp;cp&nbsp;=&nbsp;getContentPane();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;cp.setLayout(<span class="specialword">new</span>&nbsp;BorderLayout());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Put&nbsp;the&nbsp;reference,&nbsp;scaled,&nbsp;in&nbsp;the&nbsp;left&nbsp;part&nbsp;of&nbsp;the&nbsp;UI.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;RenderedImage&nbsp;ref&nbsp;=&nbsp;rescale(ImageIO.read(reference));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;cp.add(<span class="specialword">new</span>&nbsp;DisplayJAI(ref),&nbsp;BorderLayout.WEST);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;signature&nbsp;vector&nbsp;for&nbsp;the&nbsp;reference.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;signature&nbsp;=&nbsp;calcSignature(ref);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Now&nbsp;we&nbsp;need&nbsp;a&nbsp;component&nbsp;to&nbsp;store&nbsp;X&nbsp;images&nbsp;in&nbsp;a&nbsp;stack,&nbsp;where&nbsp;X&nbsp;is&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;number&nbsp;of&nbsp;images&nbsp;in&nbsp;the&nbsp;same&nbsp;directory&nbsp;as&nbsp;the&nbsp;original&nbsp;one.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;File[]&nbsp;others&nbsp;=&nbsp;getOtherImageFiles(reference);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JPanel&nbsp;otherPanel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JPanel(<span class="specialword">new</span>&nbsp;GridLayout(others.length,&nbsp;2));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;cp.add(<span class="specialword">new</span>&nbsp;JScrollPane(otherPanel),&nbsp;BorderLayout.CENTER);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;each&nbsp;image,&nbsp;calculate&nbsp;its&nbsp;signature&nbsp;and&nbsp;its&nbsp;distance&nbsp;from&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;reference&nbsp;signature.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;RenderedImage[]&nbsp;rothers&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;RenderedImage[others.length];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>[]&nbsp;distances&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">double</span>[others.length];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">int</span>&nbsp;o&nbsp;=&nbsp;0;&nbsp;o&nbsp;&lt;&nbsp;others.length;&nbsp;o++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rothers[o]&nbsp;=&nbsp;rescale(ImageIO.read(others[o]));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;distances[o]&nbsp;=&nbsp;calcDistance(rothers[o]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Sort&nbsp;those&nbsp;vectors&nbsp;*together*.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">int</span>&nbsp;p1&nbsp;=&nbsp;0;&nbsp;p1&nbsp;&lt;&nbsp;others.length&nbsp;-&nbsp;1;&nbsp;p1++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">int</span>&nbsp;p2&nbsp;=&nbsp;p1&nbsp;+&nbsp;1;&nbsp;p2&nbsp;&lt;&nbsp;others.length;&nbsp;p2++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(distances[p1]&nbsp;&gt;&nbsp;distances[p2])  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;tempDist&nbsp;=&nbsp;distances[p1];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;distances[p1]&nbsp;=&nbsp;distances[p2];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;distances[p2]&nbsp;=&nbsp;tempDist;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RenderedImage&nbsp;tempR&nbsp;=&nbsp;rothers[p1];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rothers[p1]&nbsp;=&nbsp;rothers[p2];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rothers[p2]&nbsp;=&nbsp;tempR;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File&nbsp;tempF&nbsp;=&nbsp;others[p1];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;others[p1]&nbsp;=&nbsp;others[p2];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;others[p2]&nbsp;=&nbsp;tempF;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;them&nbsp;to&nbsp;the&nbsp;UI.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">int</span>&nbsp;o&nbsp;=&nbsp;0;&nbsp;o&nbsp;&lt;&nbsp;others.length;&nbsp;o++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;otherPanel.add(<span class="specialword">new</span>&nbsp;DisplayJAI(rothers[o]));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JLabel&nbsp;ldist&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JLabel(<span class="string">"&lt;html&gt;"</span>&nbsp;+&nbsp;others[o].getName()&nbsp;+&nbsp;<span class="string">"&lt;br&gt;"</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+&nbsp;String.format(<span class="string">"%&nbsp;13.3f"</span>,&nbsp;distances[o])&nbsp;+&nbsp;<span class="string">"&lt;/html&gt;"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ldist.setFont(<span class="specialword">new</span>&nbsp;Font(Font.MONOSPACED,&nbsp;Font.PLAIN,&nbsp;36));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.printf(<span class="string">"&lt;td&nbsp;class=\"simpletable&nbsp;legend\"&gt;&nbsp;"</span>+  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"&lt;img&nbsp;src=\"MiscResources/ImageSimilarity/icons/miniicon_%s\"&nbsp;"</span>+  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"alt=\"Similarity&nbsp;result\"&gt;&lt;br&gt;%&nbsp;13.3f&lt;/td&gt;\n"</span>,&nbsp;others[o].getName(),distances[o]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;otherPanel.add(ldist);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;More&nbsp;GUI&nbsp;details.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pack();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setVisible(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/*  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;rescales&nbsp;an&nbsp;image&nbsp;to&nbsp;300,300&nbsp;pixels&nbsp;using&nbsp;the&nbsp;JAI&nbsp;scale  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;operator.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;RenderedImage&nbsp;rescale(RenderedImage&nbsp;i)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;scaleW&nbsp;=&nbsp;((<span class="datatype">float</span>)&nbsp;baseSize)&nbsp;/&nbsp;i.getWidth();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;scaleH&nbsp;=&nbsp;((<span class="datatype">float</span>)&nbsp;baseSize)&nbsp;/&nbsp;i.getHeight();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Scales&nbsp;the&nbsp;original&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pb&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.addSource(i);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(scaleW);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(scaleH);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(0.0F);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(0.0F);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pb.add(<span class="specialword">new</span>&nbsp;InterpolationNearest());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Creates&nbsp;a&nbsp;new,&nbsp;scaled&nbsp;image&nbsp;and&nbsp;uses&nbsp;it&nbsp;on&nbsp;the&nbsp;DisplayJAI&nbsp;component  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;JAI.create(<span class="string">"scale"</span>,&nbsp;pb);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/*  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;calculates&nbsp;and&nbsp;returns&nbsp;signature&nbsp;vectors&nbsp;for&nbsp;the&nbsp;input&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;Color[][]&nbsp;calcSignature(RenderedImage&nbsp;i)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;memory&nbsp;for&nbsp;the&nbsp;signature.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Color[][]&nbsp;sig&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Color[5][5];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;each&nbsp;of&nbsp;the&nbsp;25&nbsp;signature&nbsp;values&nbsp;average&nbsp;the&nbsp;pixels&nbsp;around&nbsp;it.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;138&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Note&nbsp;that&nbsp;the&nbsp;coordinate&nbsp;of&nbsp;the&nbsp;central&nbsp;pixel&nbsp;is&nbsp;in&nbsp;proportions.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;139&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>[]&nbsp;prop&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">float</span>[]  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;140&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{1f&nbsp;/&nbsp;10f,&nbsp;3f&nbsp;/&nbsp;10f,&nbsp;5f&nbsp;/&nbsp;10f,&nbsp;7f&nbsp;/&nbsp;10f,&nbsp;9f&nbsp;/&nbsp;10f};  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;141&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">int</span>&nbsp;x&nbsp;=&nbsp;0;&nbsp;x&nbsp;&lt;&nbsp;5;&nbsp;x++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;142&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">int</span>&nbsp;y&nbsp;=&nbsp;0;&nbsp;y&nbsp;&lt;&nbsp;5;&nbsp;y++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;143&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sig[x][y]&nbsp;=&nbsp;averageAround(i,&nbsp;prop[x],&nbsp;prop[y]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;144&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;sig;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;145&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;146&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;147&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;148&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;averages&nbsp;the&nbsp;pixel&nbsp;values&nbsp;around&nbsp;a&nbsp;central&nbsp;point&nbsp;and&nbsp;return&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;149&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;average&nbsp;as&nbsp;an&nbsp;instance&nbsp;of&nbsp;Color.&nbsp;The&nbsp;point&nbsp;coordinates&nbsp;are&nbsp;proportional&nbsp;to  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;150&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;the&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;151&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;152&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;Color&nbsp;averageAround(RenderedImage&nbsp;i,&nbsp;<span class="datatype">double</span>&nbsp;px,&nbsp;<span class="datatype">double</span>&nbsp;py)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;153&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;154&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;an&nbsp;iterator&nbsp;for&nbsp;the&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;155&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;RandomIter&nbsp;iterator&nbsp;=&nbsp;RandomIterFactory.create(i,&nbsp;<span class="specialword">null</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;156&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;memory&nbsp;for&nbsp;a&nbsp;pixel&nbsp;and&nbsp;for&nbsp;the&nbsp;accumulator.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;157&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>[]&nbsp;pixel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">double</span>[3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;158&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>[]&nbsp;accum&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">double</span>[3];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;159&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;size&nbsp;of&nbsp;the&nbsp;sampling&nbsp;area.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;160&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;sampleSize&nbsp;=&nbsp;15;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;161&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;numPixels&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;162&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Sample&nbsp;the&nbsp;pixels.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;163&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">double</span>&nbsp;x&nbsp;=&nbsp;px&nbsp;*&nbsp;baseSize&nbsp;-&nbsp;sampleSize;&nbsp;x&nbsp;&lt;&nbsp;px&nbsp;*&nbsp;baseSize&nbsp;+&nbsp;sampleSize;&nbsp;x++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;164&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;165&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">double</span>&nbsp;y&nbsp;=&nbsp;py&nbsp;*&nbsp;baseSize&nbsp;-&nbsp;sampleSize;&nbsp;y&nbsp;&lt;&nbsp;py&nbsp;*&nbsp;baseSize&nbsp;+&nbsp;sampleSize;&nbsp;y++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;166&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;167&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;iterator.getPixel((<span class="datatype">int</span>)&nbsp;x,&nbsp;(<span class="datatype">int</span>)&nbsp;y,&nbsp;pixel);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;168&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;accum[0]&nbsp;+=&nbsp;pixel[0];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;169&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;accum[1]&nbsp;+=&nbsp;pixel[1];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;170&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;accum[2]&nbsp;+=&nbsp;pixel[2];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;171&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;numPixels++;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;172&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;173&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;174&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Average&nbsp;the&nbsp;accumulated&nbsp;values.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;175&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;accum[0]&nbsp;/=&nbsp;numPixels;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;176&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;accum[1]&nbsp;/=&nbsp;numPixels;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;177&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;accum[2]&nbsp;/=&nbsp;numPixels;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;178&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;<span class="specialword">new</span>&nbsp;Color((<span class="datatype">int</span>)&nbsp;accum[0],&nbsp;(<span class="datatype">int</span>)&nbsp;accum[1],&nbsp;(<span class="datatype">int</span>)&nbsp;accum[2]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;179&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;180&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;181&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;182&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;calculates&nbsp;the&nbsp;distance&nbsp;between&nbsp;the&nbsp;signatures&nbsp;of&nbsp;an&nbsp;image&nbsp;and  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;183&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;the&nbsp;reference&nbsp;one.&nbsp;The&nbsp;signatures&nbsp;for&nbsp;the&nbsp;image&nbsp;passed&nbsp;as&nbsp;the&nbsp;parameter&nbsp;are  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;184&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;calculated&nbsp;inside&nbsp;the&nbsp;method.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;185&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;186&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">double</span>&nbsp;calcDistance(RenderedImage&nbsp;other)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;187&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;188&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;signature&nbsp;for&nbsp;that&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;189&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Color[][]&nbsp;sigOther&nbsp;=&nbsp;calcSignature(other);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;190&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;There&nbsp;are&nbsp;several&nbsp;ways&nbsp;to&nbsp;calculate&nbsp;distances&nbsp;between&nbsp;two&nbsp;vectors,  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;191&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;we&nbsp;will&nbsp;calculate&nbsp;the&nbsp;sum&nbsp;of&nbsp;the&nbsp;distances&nbsp;between&nbsp;the&nbsp;RGB&nbsp;values&nbsp;of  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;192&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;pixels&nbsp;in&nbsp;the&nbsp;same&nbsp;positions.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;193&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;dist&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;194&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">int</span>&nbsp;x&nbsp;=&nbsp;0;&nbsp;x&nbsp;&lt;&nbsp;5;&nbsp;x++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;195&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>&nbsp;(<span class="datatype">int</span>&nbsp;y&nbsp;=&nbsp;0;&nbsp;y&nbsp;&lt;&nbsp;5;&nbsp;y++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;196&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;197&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;r1&nbsp;=&nbsp;signature[x][y].getRed();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;198&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;g1&nbsp;=&nbsp;signature[x][y].getGreen();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;199&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;b1&nbsp;=&nbsp;signature[x][y].getBlue();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;200&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;r2&nbsp;=&nbsp;sigOther[x][y].getRed();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;201&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;g2&nbsp;=&nbsp;sigOther[x][y].getGreen();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;202&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;b2&nbsp;=&nbsp;sigOther[x][y].getBlue();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;203&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;tempDist&nbsp;=&nbsp;Math.sqrt((r1&nbsp;-&nbsp;r2)&nbsp;*&nbsp;(r1&nbsp;-&nbsp;r2)&nbsp;+&nbsp;(g1&nbsp;-&nbsp;g2)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;204&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;(g1&nbsp;-&nbsp;g2)&nbsp;+&nbsp;(b1&nbsp;-&nbsp;b2)&nbsp;*&nbsp;(b1&nbsp;-&nbsp;b2));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;205&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dist&nbsp;+=&nbsp;tempDist;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;206&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;207&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;dist;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;208&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;209&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;210&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/*  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;211&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;get&nbsp;all&nbsp;image&nbsp;files&nbsp;in&nbsp;the&nbsp;same&nbsp;directory&nbsp;as&nbsp;the&nbsp;reference.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;212&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Just&nbsp;for&nbsp;kicks&nbsp;include&nbsp;also&nbsp;the&nbsp;reference&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;213&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;214&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;File[]&nbsp;getOtherImageFiles(File&nbsp;reference)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;215&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;216&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;File&nbsp;dir&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;File(reference.getParent());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;217&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;List&nbsp;all&nbsp;the&nbsp;image&nbsp;files&nbsp;in&nbsp;that&nbsp;directory.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;218&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;File[]&nbsp;others&nbsp;=&nbsp;dir.listFiles(<span class="specialword">new</span>&nbsp;JPEGImageFileFilter());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;219&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;others;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;220&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;221&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;222&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/*  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;223&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;entry&nbsp;point&nbsp;for&nbsp;the&nbsp;application,&nbsp;which&nbsp;opens&nbsp;a&nbsp;file&nbsp;with&nbsp;an&nbsp;image&nbsp;that  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;224&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;will&nbsp;be&nbsp;used&nbsp;as&nbsp;reference&nbsp;and&nbsp;starts&nbsp;the&nbsp;application.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;225&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;226&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;227&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;228&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JFileChooser&nbsp;fc&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JFileChooser(basePath);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;229&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;fc.setFileFilter(<span class="specialword">new</span>&nbsp;JPEGImageFileFilter());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;230&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;res&nbsp;=&nbsp;fc.showOpenDialog(<span class="specialword">null</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;231&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;have&nbsp;an&nbsp;image!  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;232&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(res&nbsp;==&nbsp;JFileChooser.APPROVE_OPTION)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;233&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;234&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File&nbsp;file&nbsp;=&nbsp;fc.getSelectedFile();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;235&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;NaiveSimilarityFinder(file);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;236&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;237&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Oops!  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;238&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;239&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;240&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JOptionPane.showMessageDialog(<span class="specialword">null</span>,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;241&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"You&nbsp;must&nbsp;select&nbsp;one&nbsp;image&nbsp;to&nbsp;be&nbsp;the&nbsp;reference."</span>,&nbsp;<span class="string">"Aborting..."</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;242&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JOptionPane.WARNING_MESSAGE);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;243&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;244&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;245&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;246&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>
 
 
<p>The application <b>NaiveSimilarityFinder</b> needs an auxiliary class, <b>JPEGImageFileFilter</b>, shown below.</p>
<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsjpegimagefilefilterjava">&nbsp;</a><a href="/web/20150430132735/http://150.163.105.39:8080/JIPCookbook//Code/howto/compare/JPEGImageFileFilter.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>JPEGImageFileFilter.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;howto.compare;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.filechooser.FileFilter;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;implements&nbsp;a&nbsp;generic&nbsp;file&nbsp;name&nbsp;filter&nbsp;that&nbsp;allows&nbsp;the&nbsp;listing/selection  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;of&nbsp;JPEG&nbsp;files.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;JPEGImageFileFilter&nbsp;<span class="classword">extends</span>&nbsp;FileFilter&nbsp;<span class="classword">implements</span>&nbsp;java.io.FileFilter  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">boolean</span>&nbsp;accept(File&nbsp;f)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(f.getName().toLowerCase().endsWith(<span class="string">".jpeg"</span>))&nbsp;<span class="controlword">return</span>&nbsp;<span class="specialword">true</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(f.getName().toLowerCase().endsWith(<span class="string">".jpg"</span>))&nbsp;<span class="controlword">return</span>&nbsp;<span class="specialword">true</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;<span class="specialword">false</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;String&nbsp;getDescription()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;<span class="string">"JPEG&nbsp;files"</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>
 

<p>Some test runs of the application with that image data set are shown below. The first image is a row is the reference
 image, and the others image in the row are <b>best seven</b> matches are shown (except for the match for the same image), then the <b>worst two</b> matches. 
</p>

<table class="simpletable">
  <tr>
    <td class="simpletable ">Original</td>
    <td class="simpletable " colspan=7>Best 7 matches</td>
    <td class="simpletable " colspan=2>Worst 2 matches</td>
</tr>

  <tr>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults1">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/icons/miniicon_s02.jpg" border=0 alt="Naive similarity comparison results (1)."><p class="caption">Naive similarity comparison results (1).</p>
<div class="spacer">&nbsp;</div>

    </td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s02.jpg" alt="Similarity result"><br>        0.000</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s16.jpg" alt="Similarity result"><br>     1871.073</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d08.jpg" alt="Similarity result"><br>     1886.521</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s04.jpg" alt="Similarity result"><br>     1889.454</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d07.jpg" alt="Similarity result"><br>     1937.989</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s09.jpg" alt="Similarity result"><br>     2118.453</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s03.jpg" alt="Similarity result"><br>     2220.072</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s01.jpg" alt="Similarity result"><br>     4045.627</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s14.jpg" alt="Similarity result"><br>     4747.496</td>
  </tr>
  <tr>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults2">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/icons/miniicon_s12.jpg" border=0 alt="Naive similarity comparison results (2)."><p class="caption">Naive similarity comparison results (2).</p>
<div class="spacer">&nbsp;</div>

    </td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s12.jpg" alt="Similarity result"><br>        0.000</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d05.jpg" alt="Similarity result"><br>      107.113</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s15.jpg" alt="Similarity result"><br>     1727.322</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s11.jpg" alt="Similarity result"><br>     2038.248</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s09.jpg" alt="Similarity result"><br>     2193.063</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s03.jpg" alt="Similarity result"><br>     2298.502</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s10.jpg" alt="Similarity result"><br>     2309.045</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s14.jpg" alt="Similarity result"><br>     3845.437</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d01.jpg" alt="Similarity result"><br>     4613.132</td>
  </tr>
  <tr>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults3">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/icons/miniicon_s11.jpg" border=0 alt="Naive similarity comparison results (3)."><p class="caption">Naive similarity comparison results (3).</p>
<div class="spacer">&nbsp;</div>

    </td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s11.jpg" alt="Similarity result"><br>        0.000</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s10.jpg" alt="Similarity result"><br>     1581.717</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s15.jpg" alt="Similarity result"><br>     1749.935</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d05.jpg" alt="Similarity result"><br>     2002.253</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s12.jpg" alt="Similarity result"><br>     2038.248</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d03.jpg" alt="Similarity result"><br>     2403.926</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s03.jpg" alt="Similarity result"><br>     2475.314</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d07.jpg" alt="Similarity result"><br>     3841.409</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d01.jpg" alt="Similarity result"><br>     5091.601</td>
  </tr>
  <tr>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults4">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/icons/miniicon_s16.jpg" border=0 alt="Naive similarity comparison results (4)."><p class="caption">Naive similarity comparison results (4).</p>
<div class="spacer">&nbsp;</div>

    </td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s16.jpg" alt="Similarity result"><br>        0.000</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d08.jpg" alt="Similarity result"><br>      164.477</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s02.jpg" alt="Similarity result"><br>     1871.073</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s06.jpg" alt="Similarity result"><br>     1871.564</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s04.jpg" alt="Similarity result"><br>     1879.582</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d07.jpg" alt="Similarity result"><br>     2177.755</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d06.jpg" alt="Similarity result"><br>     2415.764</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s10.jpg" alt="Similarity result"><br>     4583.513</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s14.jpg" alt="Similarity result"><br>     5617.889</td>
  </tr>
  <tr>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults5">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/icons/miniicon_s08.jpg" border=0 alt="Naive similarity comparison results (5)."><p class="caption">Naive similarity comparison results (5).</p>
<div class="spacer">&nbsp;</div>

    </td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s08.jpg" alt="Similarity result"><br>        0.000</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d03.jpg" alt="Similarity result"><br>      247.391</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s07.jpg" alt="Similarity result"><br>     1724.108</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s06.jpg" alt="Similarity result"><br>     2084.940</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s11.jpg" alt="Similarity result"><br>     2541.069</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s03.jpg" alt="Similarity result"><br>     2723.918</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s04.jpg" alt="Similarity result"><br>     2780.514</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s14.jpg" alt="Similarity result"><br>     4527.742</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d01.jpg" alt="Similarity result"><br>     4661.249</td>
  </tr>
  <tr>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults6">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/icons/miniicon_s09.jpg" border=0 alt="Naive similarity comparison results (6)."><p class="caption">Naive similarity comparison results (6).</p>
<div class="spacer">&nbsp;</div>

    </td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s09.jpg" alt="Similarity result"><br>        0.000</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d04.jpg" alt="Similarity result"><br>     1041.201</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s15.jpg" alt="Similarity result"><br>     1315.953</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s03.jpg" alt="Similarity result"><br>     2067.587</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d06.jpg" alt="Similarity result"><br>     2070.584</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s13.jpg" alt="Similarity result"><br>     2086.411</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s02.jpg" alt="Similarity result"><br>     2118.453</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d01.jpg" alt="Similarity result"><br>     3765.444</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s14.jpg" alt="Similarity result"><br>     4096.909</td>
  </tr>
  <tr>
    <td class="simpletable legend">
      <a name="howtohowdoicomparetwoimagestoseeiftheyareequalaverysimplealgorithmtocompareimagesforipossibleisimilaritywithoutconsideringthehighlevelcontentsnaivesimilaritycomparisonresults7">&nbsp;</a><img class="figure" src="Resources/ImageSimilarity/icons/miniicon_s13.jpg" border=0 alt="Naive similarity comparison results (7)."><p class="caption">Naive similarity comparison results (7).</p>
<div class="spacer">&nbsp;</div>

    </td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s13.jpg" alt="Similarity result"><br>        0.000</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d06.jpg" alt="Similarity result"><br>      338.169</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s09.jpg" alt="Similarity result"><br>     2086.411</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d02.jpg" alt="Similarity result"><br>     2356.526</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s15.jpg" alt="Similarity result"><br>     2365.054</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_d04.jpg" alt="Similarity result"><br>     2377.610</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s16.jpg" alt="Similarity result"><br>     2459.092</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s01.jpg" alt="Similarity result"><br>     4705.509</td>
<td class="simpletable legend">  <img src="Resources/ImageSimilarity/icons/miniicon_s14.jpg" alt="Similarity result"><br>     5408.958</td>
  </tr>
</table>

<p>We can see that some results are expected (e.g. the dissimilarity measure between two equal imagens being zero). 
 The algorithm performed quite acceptably,
 assigning a relatively low measure to the distorted versions when the originals were used as the references, as long as
 the distortion does not makes the versions very different and the colors are not changed much.</p>
 
<p>This application could 
 successfully help organize a large collection of digital photographies when there are many repeated shots or when the
 photographer took many shots of the same subject with small adjustments on the camera (e.g. photos of groups, to make sure no one has blinked).
 </p>

<p>It should be noted that the application could be modified to calculate the distance from each image to
 all the others, which could be used then to create a <i>dendogram</i> through a 
 hierarchical clustering algorithm. The dendogram could then be used to separate the images in groups of
 images which are similar considering the features and measure used.</p>
 
<p>
 Many improvements could be done in this simple algorithm: filtering of the regions to reduce influence of noise in the average value, 
 different weights for different regions (e.g. central regions could be considered more important than edges),
 distance measure in other color space than RGB, 
 etc. 
</p>




<p class="section"><a name="howtohowdoicomparetwoimagestoseeiftheyareequalreferences"></a>References</p>

<p>This list is far from complete:</p>
<ul class="b">
<li><i>Shape Analysis and Classification: Theory and Practice</i>, by Luciano da Fontoura Costa and Roberto Marcondes Cesar Jr., CRC, ISBN 0849334934, 2000.</li>
<li><i>Toward Category-Level Object Recognition</i>, edited by Jean Ponce, Martial Hebert, Cordelia Schmid and Andrew Zisserman, <a href="/web/20150430132735/http://www.springer.com/lncs">Springer (Lecture Notes in Computer Science 4170)</a>, ISBN 3-540-68794-7, 2006.</li>
<li><i>Feature Extraction and Image Processing</i>, by Mark S. Nixon and Alberto S. Aguado, Newnes, ISBN 0-7506-5078-8, 2002.</li>
<li><i>Image Recognition and Classification: Algorithms, Systems, and Applications</i>, edited by Bahram Javidi, Marcel Dekker, ISBN 0-8247-0783-4, 2002.</li>
<li><i>Practical Algorithms for Image Analysis -- Description, Examples and Code</i>, by Michael Seul, Lawrence O'Gorman and Michael J. Sammon, Cambridge University Press, ISBN 0-521-66065-3, 2000.</li>
<li>Proceedings of the <i>International Conference on Image and Video Retrieval (CIVR)</i> (may be available from <a href="/web/20150430132735/http://www.springer.com/lncs">Springer</a>, free of charge in some university libraries).</li>
<li>Search your local university library or <a href="/web/20150430132735/http://www.google.com/">Google</a> or even better, 
    <a href="/web/20150430132735/http://scholar.google.com/">Google Scholar</a> 
    for references on <i>Content-based image retrieval</i>, <i>Content-based video retrieval</i> or for <i>feature extraction</i>.</li>
</ul>

<p>For related information, see 
 <a href="7020-tutorial-supervisedclassification.jsp">A Brief Tutorial on Supervised Image Classification</a> and
 <a href="6090-howto-findobjects.jsp">null</a>.
</p> 




<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="2320-display-sampling.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="2320-display-sampling.jsp">Sampling Data on Displayed Images</a></td><td class="navigation1"><a href="6040-howto-compressimages.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="6040-howto-compressimages.jsp">How can I reduce an image file size without losing quality?</a></td><td class="navigation0"><a href="6050-howto-compareimages.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="6050-howto-compareimages.jsp">How do I compare two images to see if they are equal?</a></td><td class="navigation1"><a href="6320-howto-pansharpening.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="6320-howto-pansharpening.jsp">How can I implement a pan sharpening algorithm?</a></td><td class="navigation2"><a href="6330-howto-ndvi.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="6330-howto-ndvi.jsp">How can I calculate and display a NDVI image?</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150430132735/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150430132735/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150430132735/https://ssl." : "/web/20150430132735/http://www.");
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
     FILE ARCHIVED ON 13:27:35 Apr 30, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 1:09:51 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
