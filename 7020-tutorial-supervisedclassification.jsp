


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app6.us.archive.org";archive_analytics.values.server_ms=269;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/7020-tutorial-supervisedclassification.jsp";

var firstYear = 1996;
var displayDay = "9";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/7020-tutorial-supervisedclassification.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150409005513" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20140208105519/http://www.lac.inpe.br/JIPCookbook/7020-tutorial-supervisedclassification.jsp" title="8 Feb 2014">FEB</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 0:55:13 Apr 9, 2015">APR</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20150509182931/http://www.lac.inpe.br/JIPCookbook/7020-tutorial-supervisedclassification.jsp" title="9 May 2015"><strong>MAY</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20140208105519/http://www.lac.inpe.br/JIPCookbook/7020-tutorial-supervisedclassification.jsp" title="10:55:19 Feb 8, 2014"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 0:55:13 Apr 9, 2015">9</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20150509182931/http://www.lac.inpe.br/JIPCookbook/7020-tutorial-supervisedclassification.jsp" title="18:29:31 May 9, 2015"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20140208105519/http://www.lac.inpe.br/JIPCookbook/7020-tutorial-supervisedclassification.jsp" title="8 Feb 2014"><strong>2014</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 0:55:13 Apr 9, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
	           <a href="/web/20160416215016/http://www.lac.inpe.br/JIPCookbook/7020-tutorial-supervisedclassification.jsp" title="16 Apr 2016"><strong>2016</strong></a>
	       
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150409005513*/http://www.lac.inpe.br/JIPCookbook/7020-tutorial-supervisedclassification.jsp" title="See a list of every capture for this URL">30 captures</a>
           <div class="r" title="Timespan for captures of this URL">29 Jan 10 - 2 Oct 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:100000010011_2011:-1:010100001021_2012:-1:000101000000_2013:-1:000011000101_2014:-1:010000000000_2015:3:000110001111_2016:-1:001111110100_2017:-1:000000000000" />
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
<a href="/web/20150409005513/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150409005513/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">A Brief Tutorial on Supervised Image Classification</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="7020-tutorial-supervisedclassification.jsp#tutorialsabrieftutorialonsupervisedimageclassificationintroduction">Introduction</a>
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
</div>

<p class="section"><a name="tutorialsabrieftutorialonsupervisedimageclassificationintroduction"></a>Introduction</p>

<p>This tutorial presents basic concepts on image classification. For this tutorial's purposes,
 <i>image classification</i> is interpreted as <i>pixel classification</i>, a process in which every pixel in an image is
 assigned to a class or category on the image. This process can be used to ask questions such as 
 <i>"Which pixels in this image corresponds to forests, asphalt, sand, snow?"</i> but <b>not</b> questions like
 <i>"Does this image contains a Red 1966 Volkswagen Beetle?"</i>. For some comments on this see
 <a href="6050-howto-compareimages.jsp">How do I compare two images to see if they are equal?</a> and  <a href="6090-howto-findobjects.jsp">null</a>.</p>

<p class="note"><b>Disclaimer: </b>The examples in this tutorial (including data,
 classes, samples, methods, parameters and results) were chosen to illustrate
 the classification process; 
 their accuracy and applicability cannot be guaranteed for other purposes. In particular, the code shown here can be used only to
 classify color RGB images.
 <br>The code presented in this section was written to be clear and easy to understand, using only a single
 class with a <tt>main</tt> method whenever possible (even avoiding the creation of classes to hold structures for the classification), 
 and must be adapted for more complex processing and/or modified to work with other types of images.
 </p>



<p class="section"><a name="tutorialsabrieftutorialonsupervisedimageclassificationconcepts"></a>Concepts</p>

<p class="subsection"><a name="tutorialsabrieftutorialonsupervisedimageclassificationconceptspixelbasedimageclassification"></a>Pixel-based image classification</p>

<p>I will use a remote sensing image classification example, but the concepts could be
 easily extended to other domains.</p>

<p>Our task is to identify, for each pixel in one image, which class should be assigned to that
 pixel. Since there are way fewer classes than possible values for pixels we can consider
 classification as a process of simplification. If we assume that the image was classified
 correctly, we can easily do tasks such as area measurement and region extraction.</p>

<p>There are two main methods for image classification: <i>supervised</i> and 
 <i>unsupervised</i>. In <b>supervised classification</b>, we must teach the classification algorithm 
 how it can differentiate one class of other, usually by providing <i>samples</i> of pixels
 we know that should be assigned to a particular class. The algorithm will then use the information
 we provided to classify the other pixels on the image.
</p>
<p>In <b>unsupervised classification</b>
 we provide the algorithm with basic information on how many classes we expect to be present
 on the image, and the algorithm attempts to identify those classes. Some unsupervised algorithms 
 are also known as <i>clustering</i> algorithms. A brief discussion on unsupervised algorithms is
 given in a <a href="7040-tutorial-unsupervisedclassification.jsp">null</a>. 
 </p>
 
<p>Most classification methods (both supervised and unsupervised) rely on some distance measure that is
calculated over the pixels' values (not its coordinates in the image). The 
in the next section.
</p> 



<p class="subsection"><a name="tutorialsabrieftutorialonsupervisedimageclassificationconceptsdistanceinfeaturespace"></a>Distance in feature space</p>

<p> 
  Regardless of the method used for classification, the idea is that if one pixel is assigned to
  class <i>A</i>, pixels similar to those should probably be assigned to the same class. 
</p>
<p>The concept of <i>similarity</i> for pixel classification is very important -- pixels are similar to each other not in regard to their
 position or context, but in regard to their values. In the case of RGB images, each pixel is represented by three coordinates, 
 usually in the range [0-255], which
 represent a point in the three-dimensional <i>feature</i> space.  The same is true for pixels of multispectral or 
 hyperspectral images: a pixel of an image with 100 bands is a point in the 100-dimensional feature space. Although we can only
 visualize a few dimensions the mathematics for calculating pixels' similarity is the same for any number of dimensions.
</p>
 <p>As an example, the pixel which RGB values are <tt>(128,128,128)</tt> can be plotted in
 the exact center of the RGB cube (or feature space), while the pixels <tt>(0,0,255)</tt> and <tt>(255,0,0)</tt> would be located 
 in different vertices of the 
 RGB cube or feature space. Note that this is very different from the <i>position</i> of the pixels in the image.
 Neighboor pixels can be very distant in the feature space, and distant pixels in the image can be very close in the
 feature space. 
 </p>

<p>Two concepts based on distance are relevant for this tutorial: intervals on the feature space and distances in the feature space.
 An interval between two pixels is a region (a <i>hyperrectangle</i>) in feature space bounded by two pixels' values, and is equivalent to a rule
 in a rule-based expert system: for example, the region bounded by <tt>(18,30,50)</tt> and <tt>(23,48,90)</tt> in the RGB feature space 
 contains all pixels for which the rule
 <i>"18&le;R&le;23 and 30&le;G&le;48 and 50&le;B&le;90"</i> evaluates as true.
 A very simple classifier can be constructed to create and apply the rules. This classifier is called the
 <b>parallelepiped classifier</b> and will be shown in this tutorial.</p>

<p>
The distance between two pixels in feature space can be calculated in several different ways.
 For this tutorial we will consider only the Euclidean distance, which is the shortest distance between the pixels in feature space, and 
 is calculated as the square root of the summation of the squared differences between the pixels' values. For example,
 the distance between <tt>(49,37,118)</tt> and <tt>(33,31,200)</tt> is given by the square root of 
 (49-33)*(49-33)+(37-31)*(37-31)+(118-200)*(118-200), or 83.76.
</p> 

<p>The distance between pixels in feature space is used for comparison: for several algorithms we calculate the distance of a pixel to other pixels (always in feature space) 
 and decide on the class based on the smallest distance. For example, consider that we know that the pixels from class Forest have values around
 <tt>(21,71,40)</tt> and pixels from class Urban have pixels with values around <tt>(66,75,70)</tt>. If we are presented with a pixel for which the
 class is unknown and with values
 <tt>(37,77,53)</tt> we can calculate the distances between this pixel and the pixel from the class Forest (21.47)
 and to the pixel from class Urban (33.67) and decide that since the pixel is closer (in feature space) to Forest than Urban it probably
 should be assigned to the class Forest. This classification method is called <b>minimum distance classifier</b> and will also be explored in this tutorial.
</p>






<p class="section"><a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassification"></a>Sample extraction for pixel-based classification</p>


<p>Many supervised classification methods requires, as input, <b>samples</b> of all the classes that will be used for the classification.
 Most algorithms won't use the sample pixels' values directly, instead calculating some <b>signatures</b>  
 from those pixels that will
 be used to represent the corresponding classes. Signatures can be considered as descriptors for the classes, often containing
 statistical information about the pixels used as samples. Signatures are specific to a classification method, each one requiring
 different information about the pixels for the classification step. </p>

<p>To create signatures (or <b>train</b> the supervised classification algorithm) we need to identify regions in a prototypical image
 which contains pixels for a particular class (the samples) and use those pixels to calculate the signatures. This process must be
 repeated for each class, for which we can use one or more sample regions. The identification of samples should be done by an
 expert on the image features (for our examples, someone with remote sensing training).</p>

<p>At this point one may ask, <i>"If I have to search in the image for pixels of the classes I want to find, why not just paint the whole
 image with colors corresponding to the classes?"</i> Well, usually we need far fewer pixels to train the algorithm that are present in the whole 
 image, and pixel-by-pixel painting is not as easy as it seems, it is slow, expensive and error-prone --
  <a href="Resources/SupervisedImageClassification/espinha-de-peixe.jpg" title="Modificado em 22/10/13 15:12">click here (JPG, 149,8K)</a> for a challenge!</p> 

<p>Since the type of signature and how it is calculated depends on the classification algorithm, the methods to calculate the
 signature will be presented separately for each algorithm.</p> 

<p class="subsection"><a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsamplesfortheexamplesinthistutorial"></a>Samples for the examples in this tutorial</p>

<table class="simpletable">
  <tr>
    <td class="simpletable legend">
      <a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationlandsatetmimageofparabrazil">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/742.jpg" border=0 alt="Landsat ETM image of Para, Brazil."><p class="caption">Landsat ETM image of Para, Brazil.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable left">
    <p>This is the image we will use for classification in this tutorial's examples. This image is from
      a region close to the Tucuruí dam in Pará state, north of Brazil. It is a 3-band image from the
      Landsat 7 Enhanced Thematic Mapper (ETM+) sensor. Bands 7 (mid-infrared), 4 (near infrared) and 2 (green) were 
      used to compose the RGB image.</p>
    <p>The image shown in the left was reduced and enhanced for better visualization, click 
     <a href="Resources/SupervisedImageClassification/742.png" title="Modificado em 22/10/13 15:12">here (PNG, 1,1M)</a> to get the
     original, unretouched, 781x671 pixels image that will be used for classification.</p>
    <p>The classes that will be used for classification are <b>clouds</b>, <b>shadows</b>, <b>water</b>,
      <b>forest</b>, <b>pasture</b> and <b>urban</b>, and some sample regions were selected on the image for each class.
      Again, these classes and their samples were chosen
      for demonstration purposes, for real applications one should ask for assistance of an expert in remote sensing.
    </p>
    </td> 
</tr> 
</table>

<p>The applications associated with this tutorial will use two text files to be used by 
 the different classifiers. One of the files is the <b>classes definition file</b>, and contains, in 
 each of its lines, a definition for a class in the classification task. This definition consists of a 
 unique integer identifier, followed by three values which will be used as the reference color for that class,
 followed by the class name. For example, the line that defines the Urban color can be written as
 <tt>6 255  80  80 Urban</tt>. Lines starting with the hash symbol (<tt>#</tt>) are considered comments. 
 See also the 
 <a href="Resources/SupervisedImageClassification/classes.txt" title="Modificado em 22/10/13 15:12">text file with the classes definition (TXT, 0,3K)</a>
 for this tutorial.</p>
 
 <p>We will also need to declare which regions will be used as samples for each class. This is done by writing
 the coordinates (relative to the image) of the regions in a <b>samples definition file</b>. 
 Each line in this file must contain five numbers: the first is the unique identifier of the class, followed by the coordinates of the
 upper-left corner of the rectangle that contains the samples, followed by this rectangles' width and height. For example,
 one of the samples for the class Cloud shown below is defined by the line <tt>1 306 62 6 8</tt>. 
 Lines starting with the hash symbol (<tt>#</tt>) are considered comments. 
 See also the 
 <a href="Resources/SupervisedImageClassification/samples.txt" title="Modificado em 22/10/13 15:12">text file with the samples coordinates (TXT, 0,6K)</a>
 for this tutorial.</p>
 
<p>Those files were used to define the classes and samples used in this tutorial (samples were extracted with a graphics
 editing program, which shown the rectangle coordinates for a selected region). 
 Some of the region sampled for this example are shown below. Click 
 <a href="Resources/SupervisedImageClassification/742-annot.jpg" title="Modificado em 22/10/13 15:12">here (JPG, 133,2K)</a> 
 to see all the sampled areas shown over the image. The color used in the rectangles around the samples is the class reference color. </p>
<table class="simpletable">
  <tr>
    <td class="simpletable legend">
      <a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsampleareaforclassescloudandshadow">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/s1.jpg" border=0 alt="Sample area for classes Cloud and Shadow."><p class="caption">Sample area for classes Cloud and Shadow.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
      <a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsampleareaforclassshadow">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/s2.jpg" border=0 alt="Sample area for class Shadow."><p class="caption">Sample area for class Shadow.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
      <a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsampleareaforclasswater">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/s3.jpg" border=0 alt="Sample area for class Water."><p class="caption">Sample area for class Water.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
      <a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsampleareaforclassforest">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/s4.jpg" border=0 alt="Sample area for class Forest."><p class="caption">Sample area for class Forest.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
      <a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsampleareaforclasspasture">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/s5.jpg" border=0 alt="Sample area for class Pasture."><p class="caption">Sample area for class Pasture.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
      <a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsampleareaforclassurban">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/s6.jpg" border=0 alt="Sample area for class Urban."><p class="caption">Sample area for class Urban.</p>
<div class="spacer">&nbsp;</div>

    </td>
  </tr>
</table>

<p><a name="plots"></a>At this point we have several pixels for which we manually assigned the classes. Although all pixels for a class
 appear to have more or less the same color, their values are quite different. We can see the differences in the
 plots below, which shows each of the pixels on the samples projected on the RG, RB and GB planes, using the colors for
 the classes (so red pixels are for the class Urban, for example).</p> 
<table class="simpletable">
  <tr>
    <td class="simpletable legend">
      <a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationplotforrgplane">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/plotRG.png" border=0 alt="Plot for R/G plane."><p class="caption">Plot for R/G plane.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
      <a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationplotforrbplane">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/plotRB.png" border=0 alt="Plot for R/B plane."><p class="caption">Plot for R/B plane.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
      <a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationplotforgbplane">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/plotGB.png" border=0 alt="Plot for G/B plane."><p class="caption">Plot for G/B plane.</p>
<div class="spacer">&nbsp;</div>

    </td>
  </tr>
</table>

<p>The same data can be visualized in a three-dimensional plot in the interactive applet below. Move the mouse around the plot to see
the data from a different perspective, click any button on the mouse for a quick zoom in the data.</p>

<a name="tutorialsabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationinteractivergbplot">&nbsp;</a>

<center>
<object classid="clsid:8AD9C840-044E-11D1-B3E9-00805F499D93" width="720" height="360" codebase="/web/20150409005513oe_/http://java.sun.com/products/plugin/1.2.2/jinstall-1_2_2-win.cab#Version=1,2,2,0">
<param name="java_code" value="RGBView">
<param name="java_codebase" value="Resources/SupervisedImageClassification">
<param name="java_archive" value="RGBView.jar">
<param name="type" value="application/x-java-applet;version=1.4">
<comment>
<EMBED type="application/x-java-applet;version=1.4" width="720" height="360" pluginspage="http://java.sun.com/products/plugin/" java_code="RGBView" java_codebase="Resources/SupervisedImageClassification" java_archive="RGBView.jar"/>
<noembed>
You can't run Java applets -- why?
</noembed>
</comment>
</object>

</center>
<p class="caption">Interactive RGB Plot.</p>
<div class="spacer">&nbsp;</div>



<p>From the plots above we can see that some of the values of the pixels for the samples 
 are concentrated in a narrow region (water, shadow) while others are spreaded (cloud, urban). More 
 important for our purposes is the fact that some of the classes' samples overlap, i.e. there aren't
 any lines or planes that clearly separates any classes of the others in the plots. We will see how this affects
 the classification algorithms later.
</p>

<p>With some pixels <b>labeled</b> (i.e. identified) for each classe we can calculate the signatures for each class. 
 The signature extraction method will depend on the classifier, and will be presented separately in sections below.
</p>







<p class="section"><a name="tutorialsabrieftutorialonsupervisedimageclassificationtheparallelepipedclassifier"></a>The Parallelepiped Classifier</p>


<p>The parallelepiped classifier is a very simple supervised classifier that uses intervals or bounded regions of pixels' 
 values to determine whether a pixel belongs to a class or not. The intervals' bounding points are obtained 
 from the values of the pixels of samples for the class. Since this classifier is supervised, 
 there are two steps in its use: signature creation (training) and classification.
</p>

<p class="subsection"><a name="tutorialsabrieftutorialonsupervisedimageclassificationtheparallelepipedclassifiersignaturecreationtraining"></a>Signature Creation (training)</p>


<p>
 The signature creation steps uses as input the original image pixels, class description and samples data files to calculate the minimum and
 maximum bounding coordinate for each class. The steps are as follow:
</p>
<ol> 
<li>For each class create a pair of data structures to represent the bounds (a minimum bound <b>minK</b> and a maximum bound <b>maxK</b>, for each
 class <b>K</b>). This data structure must have  
 the same domain and dimensions as
 the pixels in the image that will be classified. In our example, we will create two arrays of three values.</li>
<li>For each class initialize the minimum bound values in <b>minK</b> to a value large enough and the 
 maximum bound values in <b>maxK</b> to a value small enough.
 This is a simple way to ensure that their values will be changed to reflect the bounds of the pixels values.</li>
<li>For each pixel in each sample for that class do:</li>
<li>
<ol>
<li>If any of the pixel values is smaller than the corresponding value in <b>minK</b>, set the corresponding value in <b>minK</b> to the pixel value.</li>
<li>If any of the pixel values is larger than the corresponding value in <b>maxK</b>, set the corresponding value in <b>maxK</b> to the pixel value.</li>
</ol>
</li>
<li>Store the resulting bounding values.</li>
</ol>

<p>This simple procedure will calculate the minimum and maximum bounds for each class, which will be used as signatures for the classes. 
 The procedure is implemented in the <tt>CreateParallelepipedSignatures</tt> application, show below.</p>
  
<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="tutorialsabrieftutorialonsupervisedimageclassificationtheparallelepipedclassifiercreateparallelepipedsignaturesjava">&nbsp;</a><a href="/web/20150409005513/http://150.163.105.39:8080/JIPCookbook//Code/tutorials/simpleclassifier/CreateParallelepipedSignatures.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateParallelepipedSignatures.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;tutorials.simpleclassifier;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Color;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.BufferedReader;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.BufferedWriter;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.FileReader;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.FileWriter;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.StringTokenizer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.TreeMap;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;signatures&nbsp;for&nbsp;each&nbsp;class&nbsp;for&nbsp;a&nbsp;parallelepiped&nbsp;classifier.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Please&nbsp;see&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;more&nbsp;information&nbsp;on&nbsp;the&nbsp;files&nbsp;and&nbsp;formats&nbsp;used&nbsp;in&nbsp;this&nbsp;class.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="classword">class</span>&nbsp;CreateParallelepipedSignatures  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point.&nbsp;We&nbsp;must&nbsp;pass&nbsp;three&nbsp;parameters:&nbsp;the&nbsp;original  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;image&nbsp;file&nbsp;name,&nbsp;the&nbsp;name&nbsp;of&nbsp;the&nbsp;file&nbsp;with&nbsp;the&nbsp;description&nbsp;of&nbsp;the&nbsp;classes,  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;and&nbsp;the&nbsp;name&nbsp;of&nbsp;the&nbsp;file&nbsp;with&nbsp;the&nbsp;coordinates&nbsp;for&nbsp;the&nbsp;samples.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@throws&nbsp;IOException&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Check&nbsp;parameters&nbsp;names.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(args.length&nbsp;!=&nbsp;3)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"Must&nbsp;pass&nbsp;three&nbsp;command-line&nbsp;parameters&nbsp;to&nbsp;this&nbsp;application:"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;The&nbsp;original&nbsp;image&nbsp;(from&nbsp;which&nbsp;samples&nbsp;will&nbsp;be&nbsp;extracted;"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;The&nbsp;file&nbsp;with&nbsp;the&nbsp;classes&nbsp;names&nbsp;and&nbsp;colors"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;The&nbsp;file&nbsp;with&nbsp;the&nbsp;samples&nbsp;coordinates"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.exit(1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Open&nbsp;the&nbsp;original&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;input&nbsp;=&nbsp;ImageIO.read(<span class="specialword">new</span>&nbsp;File(args[0]));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;classes&nbsp;description&nbsp;file.&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedReader&nbsp;br&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedReader(<span class="specialword">new</span>&nbsp;FileReader(args[1]));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;classes&nbsp;color&nbsp;in&nbsp;a&nbsp;map.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TreeMap&lt;Integer,Color&gt;&nbsp;classMap&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TreeMap&lt;Integer,&nbsp;Color&gt;();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">while</span>(<span class="specialword">true</span>)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;line&nbsp;=&nbsp;br.readLine();&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line&nbsp;==&nbsp;<span class="specialword">null</span>)&nbsp;<span class="controlword">break</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line.startsWith(<span class="string">"#"</span>))&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringTokenizer&nbsp;st&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;StringTokenizer(line);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(st.countTokens()&nbsp;&lt;&nbsp;4)&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;classId&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;r&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;g&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;b&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;classMap.put(classId,<span class="specialword">new</span>&nbsp;Color(r,g,b));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;br.close();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;structures&nbsp;to&nbsp;represent&nbsp;the&nbsp;bounds&nbsp;for&nbsp;the&nbsp;parallelepipeds,  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;one&nbsp;for&nbsp;each&nbsp;class.&nbsp;Behold&nbsp;the&nbsp;power&nbsp;of&nbsp;the&nbsp;Collections!  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TreeMap&lt;Integer,<span class="datatype">int</span>[]&gt;&nbsp;minMap&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TreeMap&lt;Integer,&nbsp;<span class="datatype">int</span>[]&gt;();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TreeMap&lt;Integer,<span class="datatype">int</span>[]&gt;&nbsp;maxMap&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TreeMap&lt;Integer,&nbsp;<span class="datatype">int</span>[]&gt;();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(Integer&nbsp;classIndex:classMap.keySet())  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minMap.put(classIndex,<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{1000,1000,1000});&nbsp;<span class="comment">//&nbsp;large&nbsp;enough  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;maxMap.put(classIndex,<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{-1,-1,-1});&nbsp;<span class="comment">//&nbsp;small&nbsp;enough  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Open&nbsp;the&nbsp;file&nbsp;with&nbsp;the&nbsp;coordinates&nbsp;and&nbsp;get&nbsp;the&nbsp;pixels'&nbsp;values&nbsp;for&nbsp;those&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;coordinates.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;br&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedReader(<span class="specialword">new</span>&nbsp;FileReader(args[2]));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">while</span>(<span class="specialword">true</span>)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;line&nbsp;=&nbsp;br.readLine();&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line&nbsp;==&nbsp;<span class="specialword">null</span>)&nbsp;<span class="controlword">break</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line.startsWith(<span class="string">"#"</span>))&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringTokenizer&nbsp;st&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;StringTokenizer(line);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(st.countTokens()&nbsp;&lt;&nbsp;5)&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;classId&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;x&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;y&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;w&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;h&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Color&nbsp;c&nbsp;=&nbsp;classMap.get(classId);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(c&nbsp;!=&nbsp;<span class="specialword">null</span>)&nbsp;<span class="comment">//&nbsp;We&nbsp;have&nbsp;a&nbsp;region!  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;bounds&nbsp;for&nbsp;this&nbsp;region.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;min&nbsp;=&nbsp;minMap.get(classId);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;max&nbsp;=&nbsp;maxMap.get(classId);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;get&nbsp;all&nbsp;pixels&nbsp;values&nbsp;in&nbsp;it.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;row=0;row&lt;=h;row++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;col=0;col&lt;=w;col++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;rgb&nbsp;=&nbsp;input.getRGB(x+col,y+row);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;r&nbsp;=&nbsp;(<span class="datatype">int</span>)((rgb&amp;0x00FF0000)&gt;&gt;&gt;16);&nbsp;<span class="comment">//&nbsp;Red&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;g&nbsp;=&nbsp;(<span class="datatype">int</span>)((rgb&amp;0x0000FF00)&gt;&gt;&gt;8);&nbsp;&nbsp;<span class="comment">//&nbsp;Green&nbsp;level  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;b&nbsp;=&nbsp;(<span class="datatype">int</span>)&nbsp;(rgb&amp;0x000000FF);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Blue&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Use&nbsp;those&nbsp;values&nbsp;to&nbsp;adjust&nbsp;the&nbsp;bounds&nbsp;for&nbsp;the&nbsp;parallelepipeds.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;min[0]&nbsp;=&nbsp;Math.min(min[0],r);&nbsp;&nbsp;max[0]&nbsp;=&nbsp;Math.max(max[0],r);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;min[1]&nbsp;=&nbsp;Math.min(min[1],g);&nbsp;&nbsp;max[1]&nbsp;=&nbsp;Math.max(max[1],g);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;min[2]&nbsp;=&nbsp;Math.min(min[2],b);&nbsp;&nbsp;max[2]&nbsp;=&nbsp;Math.max(max[2],b);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Put&nbsp;the&nbsp;bounds&nbsp;back&nbsp;on&nbsp;the&nbsp;map.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minMap.put(classId,min);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;maxMap.put(classId,max);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;br.close();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;values&nbsp;on&nbsp;the&nbsp;maps&nbsp;are&nbsp;the&nbsp;bounds&nbsp;for&nbsp;each&nbsp;class.&nbsp;Let's&nbsp;save&nbsp;them  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;to&nbsp;a&nbsp;file&nbsp;so&nbsp;we&nbsp;can&nbsp;reuse&nbsp;them&nbsp;in&nbsp;the&nbsp;classifier.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedWriter&nbsp;bw&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedWriter(<span class="specialword">new</span>&nbsp;FileWriter(<span class="string">"parallel_signatures.txt"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;In&nbsp;each&nbsp;line&nbsp;information&nbsp;for&nbsp;a&nbsp;class.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(Integer&nbsp;classId:classMap.keySet())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bw.write(classId+<span class="string">"&nbsp;"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;min&nbsp;=&nbsp;minMap.get(classId);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;max&nbsp;=&nbsp;maxMap.get(classId);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bw.write(min[0]+<span class="string">"&nbsp;"</span>+min[1]+<span class="string">"&nbsp;"</span>+min[2]+<span class="string">"&nbsp;"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bw.write(max[0]+<span class="string">"&nbsp;"</span>+max[1]+<span class="string">"&nbsp;"</span>+max[2]+<span class="string">"&nbsp;"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bw.newLine();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;bw.close();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The <tt>CreateParallelepipedSignatures</tt> application uses as input
the original image, a text file with the classes' description and a text file with the samples' coordinates.
The formats of those text files are described in the section 
<a href="#howtoabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsamplesfortheexamplesinthistutorial">Samples for the examples in this tutorial</a>.</p>

<p>The application was executed using the example image, the class definition file and the samples' coordinates file. 
The resulting signatures are stored in a text file,  
 <a href="Resources/SupervisedImageClassification/parallel_signatures.txt" title="Modificado em 22/10/13 15:12">parallel_signatures.txt (TXT, 0,1K)</a>,
 summarized in the table below.</p> 

<table class="simpletable">
  <tr>
    <td class="simpletable">    </td>
    <td class="simpletable"><b>Clouds</b>    </td>
    <td class="simpletable"><b>Shadows</b>    </td>
    <td class="simpletable"><b>Water</b>    </td>
    <td class="simpletable"><b>Forest</b>    </td>
    <td class="simpletable"><b>Pasture</b>    </td>
    <td class="simpletable"><b>Urban</b>    </td>
  </tr>
  <tr>
    <td class="simpletable "><b>minK</b></td>
    <td class="simpletable ">(76,106,103)</td>
    <td class="simpletable ">(8,17,31)</td>
    <td class="simpletable ">(5,9,33)</td>
    <td class="simpletable ">(15,43,36)</td>
    <td class="simpletable ">(26,62,46)</td>
    <td class="simpletable ">(43,50,51)</td>
  </tr>
  <tr>
    <td class="simpletable "><b>maxK</b></td>
    <td class="simpletable ">(215,166,255)</td>
    <td class="simpletable ">(17,34,38)</td>
    <td class="simpletable ">(21,37,45)</td>
    <td class="simpletable ">(48,98,48)</td>
    <td class="simpletable ">(69,93,63)</td>
    <td class="simpletable ">(160,107,142)</td>
  </tr>
</table>




<p class="subsection"><a name="tutorialsabrieftutorialonsupervisedimageclassificationtheparallelepipedclassifierclassification"></a>Classification</p>


<p>The classification process for the parallelepiped classifier is very simple, all we need is the original image, the classes description (so we can use different colors to
 represent the different classes) and the signatures created by the 
 <tt>CreateParallelepipedSignatures</tt> application. The steps are as follow:</p>
 
<ol> 
<li>Read the original image, class description file and signatures file, storing their information in suitable structures.</li>
<li>Create an image with the same dimensions of the original one, which will be "painted" with the classified pixels' colors.</li>
<li>For each pixel in the original image, get its RGB values.</li>
<li>
<ol>
<li>Initialize a structure to represent the class for this pixel (in our example we will use instances of <tt>Color</tt> and initialize it with the 
  color black since it is different from all colors used in the classes description file.)</li>
<li>For each class, see if its bounds (from the signatures file) contains the RGB values of the pixel being considered. If so, store the
  color for that class as the new class for the pixel.</li>
<li>Paint the pixel in the output image with the stored color.</li>  
</ol>
</li>
<li>Store the resulting image.</li>
</ol>

<p>The classification algorithm allows <b>rejection</b> of the pixel by the algorithm, meaning that that pixel's RGB values were outside the bounds
 for all classes, leaving the pixel as <b>unclassified</b>. There are ways to avoid rejection, one obvious is to get more samples, preferrably 
 extracted from the regions with unclassified pixels. Depending on the application, a certain amount of unclassified pixels is acceptable.</p>

<p>The classification algorithm is implemented by the <tt></tt> application, shown below.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="tutorialsabrieftutorialonsupervisedimageclassificationtheparallelepipedclassifierclassifywithparallelepipedalgorithmjava">&nbsp;</a><a href="/web/20150409005513/http://150.163.105.39:8080/JIPCookbook//Code/tutorials/simpleclassifier/ClassifyWithParallelepipedAlgorithm.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>ClassifyWithParallelepipedAlgorithm.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;tutorials.simpleclassifier;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Color;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.BufferedReader;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.FileReader;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.StringTokenizer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.TreeMap;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;classifies&nbsp;images&nbsp;using&nbsp;the&nbsp;parallelepiped&nbsp;classifier.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Please&nbsp;see&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;more&nbsp;information&nbsp;on&nbsp;the&nbsp;files&nbsp;and&nbsp;formats&nbsp;used&nbsp;in&nbsp;this&nbsp;class.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;ClassifyWithParallelepipedAlgorithm  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point.&nbsp;We&nbsp;must&nbsp;pass&nbsp;three&nbsp;parameters:&nbsp;the&nbsp;original  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;image&nbsp;file&nbsp;name,&nbsp;the&nbsp;name&nbsp;of&nbsp;the&nbsp;file&nbsp;with&nbsp;the&nbsp;description&nbsp;of&nbsp;the&nbsp;classes,  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;and&nbsp;the&nbsp;name&nbsp;of&nbsp;the&nbsp;file&nbsp;with&nbsp;the&nbsp;signatures&nbsp;for&nbsp;the&nbsp;classes.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;@throws&nbsp;IOException&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Check&nbsp;parameters&nbsp;names.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(args.length&nbsp;!=&nbsp;3)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"Must&nbsp;pass&nbsp;three&nbsp;command-line&nbsp;parameters&nbsp;to&nbsp;this&nbsp;application:"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;The&nbsp;original&nbsp;image&nbsp;(from&nbsp;which&nbsp;samples&nbsp;will&nbsp;be&nbsp;extracted;"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;The&nbsp;file&nbsp;with&nbsp;the&nbsp;classes&nbsp;names&nbsp;and&nbsp;colors"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;The&nbsp;file&nbsp;with&nbsp;the&nbsp;signatures&nbsp;for&nbsp;each&nbsp;class"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.exit(1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Open&nbsp;the&nbsp;original&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;input&nbsp;=&nbsp;ImageIO.read(<span class="specialword">new</span>&nbsp;File(args[0]));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;classes&nbsp;description&nbsp;file.&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedReader&nbsp;br&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedReader(<span class="specialword">new</span>&nbsp;FileReader(args[1]));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;classes&nbsp;color&nbsp;in&nbsp;a&nbsp;map.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TreeMap&lt;Integer,Color&gt;&nbsp;classMap&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TreeMap&lt;Integer,&nbsp;Color&gt;();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">while</span>(<span class="specialword">true</span>)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;line&nbsp;=&nbsp;br.readLine();&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line&nbsp;==&nbsp;<span class="specialword">null</span>)&nbsp;<span class="controlword">break</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line.startsWith(<span class="string">"#"</span>))&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringTokenizer&nbsp;st&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;StringTokenizer(line);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(st.countTokens()&nbsp;&lt;&nbsp;4)&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;classId&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;r&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;g&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;b&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;classMap.put(classId,<span class="specialword">new</span>&nbsp;Color(r,g,b));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;br.close();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;signatures&nbsp;from&nbsp;a&nbsp;file.&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TreeMap&lt;Integer,<span class="datatype">int</span>[]&gt;&nbsp;minMap&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TreeMap&lt;Integer,&nbsp;<span class="datatype">int</span>[]&gt;();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TreeMap&lt;Integer,<span class="datatype">int</span>[]&gt;&nbsp;maxMap&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TreeMap&lt;Integer,&nbsp;<span class="datatype">int</span>[]&gt;();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;br&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedReader(<span class="specialword">new</span>&nbsp;FileReader(args[2]));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">while</span>(<span class="specialword">true</span>)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;line&nbsp;=&nbsp;br.readLine();&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line&nbsp;==&nbsp;<span class="specialword">null</span>)&nbsp;<span class="controlword">break</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line.startsWith(<span class="string">"#"</span>))&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringTokenizer&nbsp;st&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;StringTokenizer(line);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(st.countTokens()&nbsp;&lt;&nbsp;7)&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;classId&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;min&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[3];&nbsp;<span class="datatype">int</span>[]&nbsp;max&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;min[0]&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;min[1]&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;min[2]&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;max[0]&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;max[1]&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;max[2]&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minMap.put(classId,min);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;maxMap.put(classId,max);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;br.close();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;color&nbsp;image&nbsp;to&nbsp;hold&nbsp;the&nbsp;results&nbsp;of&nbsp;the&nbsp;classification.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;w&nbsp;=&nbsp;input.getWidth();&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;h&nbsp;=&nbsp;input.getHeight();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;results&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedImage(w,h,BufferedImage.TYPE_INT_RGB);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Do&nbsp;the&nbsp;classification,&nbsp;pixel&nbsp;by&nbsp;pixel,&nbsp;selecting&nbsp;which&nbsp;class&nbsp;they&nbsp;should&nbsp;be&nbsp;assigned&nbsp;to.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;row=0;row&lt;h;row++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;col=0;col&lt;w;col++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;rgb&nbsp;=&nbsp;input.getRGB(col,row);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;r&nbsp;=&nbsp;(<span class="datatype">int</span>)((rgb&amp;0x00FF0000)&gt;&gt;&gt;16);&nbsp;<span class="comment">//&nbsp;Red&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;g&nbsp;=&nbsp;(<span class="datatype">int</span>)((rgb&amp;0x0000FF00)&gt;&gt;&gt;8);&nbsp;&nbsp;<span class="comment">//&nbsp;Green&nbsp;level  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;b&nbsp;=&nbsp;(<span class="datatype">int</span>)&nbsp;(rgb&amp;0x000000FF);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Blue&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;To&nbsp;which&nbsp;class&nbsp;should&nbsp;we&nbsp;assign&nbsp;this&nbsp;pixel?  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Color&nbsp;assignedClass&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Color(0,0,0);&nbsp;<span class="comment">//&nbsp;unassigned.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;key:minMap.keySet())  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(isBetween(r,g,b,minMap.get(key),maxMap.get(key)))&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assignedClass&nbsp;=&nbsp;classMap.get(key);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;With&nbsp;the&nbsp;color,&nbsp;paint&nbsp;the&nbsp;output&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;results.setRGB(col,row,assignedClass.getRGB());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;At&nbsp;the&nbsp;end,&nbsp;store&nbsp;the&nbsp;resulting&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(results,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"classified-with-parallelepiped.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">boolean</span>&nbsp;isBetween(<span class="datatype">int</span>&nbsp;r,<span class="datatype">int</span>&nbsp;g,<span class="datatype">int</span>&nbsp;b,<span class="datatype">int</span>[]&nbsp;min,<span class="datatype">int</span>[]&nbsp;max)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;((min[0]&nbsp;&lt;=&nbsp;r)&nbsp;&amp;&amp;&nbsp;(r&nbsp;&lt;=&nbsp;max[0])&nbsp;&amp;&amp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(min[1]&nbsp;&lt;=&nbsp;g)&nbsp;&amp;&amp;&nbsp;(g&nbsp;&lt;=&nbsp;max[1])&nbsp;&amp;&amp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(min[2]&nbsp;&lt;=&nbsp;b)&nbsp;&amp;&amp;&nbsp;(b&nbsp;&lt;=&nbsp;max[2]));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The application was executed with the image, class description and signature files used as examples. The resulting image is shown below.</p>

<table class="simpletable">
  <tr>
    <td class="simpletable legend">
      <a name="tutorialsabrieftutorialonsupervisedimageclassificationtheparallelepipedclassifierimageclassifiedwiththeparallelepipedmethod">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/classified-with-parallelepiped_icon.png" border=0 alt="Image classified with the parallelepiped method."><p class="caption">Image classified with the parallelepiped method.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable left">
    <p>This is the image obtained as result of the application of the parallelepiped classification algorithm. 
    The colors of the pixels are the same as
    specified in the class description file (red for Urban, blue for Water, etc.), with some pixels in black because they were
    rejected by the classifier.</p>
    <p>The size of the image shown in the left was reduced for better visualization, 
     <a href="Resources/SupervisedImageClassification/classified-with-parallelepiped.png" title="Modificado em 22/10/13 15:12">click here (PNG, 91,9K)</a>    
     to get the original 781x671 pixels classified image.    </p>
      </td> 
</tr> 
</table>

<p>We can see some errors in the classification, with some apparent misclassification errors involving
 the classes Urban and Pasture and (more noticeably) Water and Shadow. We can see in the <a href="#plots">projected plots</a> for the samples'
 distributions that the values of the samples for those classes are, similar, with lots of superposed values -- rectangles that bound the samples
 values for one class would have intersection with the bounding rectangles for other classes.  
</p> 

<p>The approach and implementation shown here have a serious problem: if a pixel belongs to more than one class
 (it could happen when the classes' bounds in feature space are superposed) the pixel will be classified
 as one of the classes, which will be determined depending on the implementation of the algorithm (the one I used will use the class with
 the highest identifier). Since the pixel could belong to more than one class, a tie-breaking procedure should be done, or
 the pixel should be classified in yet another class (e.g. undecided).  
</p>







<p class="section"><a name="tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifier"></a>The Minimum Distance Classifier</p>


<p>The minimum distance classifier is a also very simple supervised classifier method
 that uses a central point (in feature space) to represent a class.
 The central point is calculated as the average of all pixels in all samples for that 
 class.
 Classification is performed by calculating the distance (always in feature space)
 from a pixel with unknown class to the central points of each class and choosing the
 class which yields the smallest distance.  
 Again, since it is a supervised classification algorithm, there are two steps in its use: signature creation and classification.
</p>

<p class="subsection"><a name="tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifiersignaturecreationtraining"></a>Signature Creation (training)</p>

<p>
 The signature creation steps is very similar to the used by the parallelepiped signature creation,
 except that instead of bounds we will create a single data vector corresponding to the average of
 all pixels in all samples for a particular class. The steps are as follow:
</p>
<ol> 
<li>For each class create a data structure to represent the bounds (a vector <b>avgK</b> for each
 class <b>K</b>). This data structure must have  
 the same domain and dimensions as
 the pixels in the image that will be classified. In our example, we will create one single array to hold three values.</li>
<li>For each class initialize the values in <b>avgK</b> to be zero, since they will be first used as accumulators. </li>
<li>Create also a counter of pixels for each class and initialize it with zero.</li> 
<li>For each pixel in each sample for that class do:</li>
<li>
<ol>
<li>Sum to each element of the vector <b>avgK</b> the corresponding pixel value.</li>
<li>Add one to the counter of pixels for that class.</li>
</ol>
</li>
<li>For each class, divide each values in <b>avgK</b> by the counter of pixels for that class. The vector <b>avgK</b> will then contain
 the average of the pixel's values for that class.</li>
<li>Store the resulting <b>avgK</b> vectors for the classification step.</li>
</ol>

<p>This simple procedure will calculate the average vector for each class, which will be used as signatures for the classes in the 
classification step. The procedure is implemented in the <tt>CreateMinimumDistanceSignatures</tt> application, shown below.</p>
  
<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifiercreateminimumdistancesignaturesjava">&nbsp;</a><a href="/web/20150409005513/http://150.163.105.39:8080/JIPCookbook//Code/tutorials/simpleclassifier/CreateMinimumDistanceSignatures.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>CreateMinimumDistanceSignatures.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook/index.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;tutorials.simpleclassifier;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Color;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.BufferedReader;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.BufferedWriter;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.FileReader;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.FileWriter;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.StringTokenizer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.TreeMap;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;creates&nbsp;signatures&nbsp;for&nbsp;each&nbsp;class&nbsp;for&nbsp;a&nbsp;minimum&nbsp;distance&nbsp;classifier.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Please&nbsp;see&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;more&nbsp;information&nbsp;on&nbsp;the&nbsp;files&nbsp;and&nbsp;formats&nbsp;used&nbsp;in&nbsp;this&nbsp;class.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="classword">class</span>&nbsp;CreateMinimumDistanceSignatures  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point.&nbsp;We&nbsp;must&nbsp;pass&nbsp;three&nbsp;parameters:&nbsp;the&nbsp;original  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;image&nbsp;file&nbsp;name,&nbsp;the&nbsp;name&nbsp;of&nbsp;the&nbsp;file&nbsp;with&nbsp;the&nbsp;description&nbsp;of&nbsp;the&nbsp;classes,  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;and&nbsp;the&nbsp;name&nbsp;of&nbsp;the&nbsp;file&nbsp;with&nbsp;the&nbsp;coordinates&nbsp;for&nbsp;the&nbsp;samples.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@throws&nbsp;IOException&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Check&nbsp;parameters&nbsp;names.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(args.length&nbsp;!=&nbsp;3)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"Must&nbsp;pass&nbsp;three&nbsp;command-line&nbsp;parameters&nbsp;to&nbsp;this&nbsp;application:"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;The&nbsp;original&nbsp;image&nbsp;(from&nbsp;which&nbsp;samples&nbsp;will&nbsp;be&nbsp;extracted;"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;The&nbsp;file&nbsp;with&nbsp;the&nbsp;classes&nbsp;names&nbsp;and&nbsp;colors"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;The&nbsp;file&nbsp;with&nbsp;the&nbsp;samples&nbsp;coordinates"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.exit(1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Open&nbsp;the&nbsp;original&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;input&nbsp;=&nbsp;ImageIO.read(<span class="specialword">new</span>&nbsp;File(args[0]));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;classes&nbsp;description&nbsp;file.&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedReader&nbsp;br&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedReader(<span class="specialword">new</span>&nbsp;FileReader(args[1]));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;classes&nbsp;color&nbsp;in&nbsp;a&nbsp;map.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TreeMap&lt;Integer,Color&gt;&nbsp;classMap&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TreeMap&lt;Integer,&nbsp;Color&gt;();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">while</span>(<span class="specialword">true</span>)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;line&nbsp;=&nbsp;br.readLine();&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line&nbsp;==&nbsp;<span class="specialword">null</span>)&nbsp;<span class="controlword">break</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line.startsWith(<span class="string">"#"</span>))&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringTokenizer&nbsp;st&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;StringTokenizer(line);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(st.countTokens()&nbsp;&lt;&nbsp;4)&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;classId&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;r&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;g&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;b&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;classMap.put(classId,<span class="specialword">new</span>&nbsp;Color(r,g,b));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;br.close();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;structures&nbsp;to&nbsp;represent&nbsp;the&nbsp;signature&nbsp;for&nbsp;the&nbsp;minimum&nbsp;distance  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;classifier:&nbsp;the&nbsp;average&nbsp;value&nbsp;of&nbsp;the&nbsp;pixels&nbsp;in&nbsp;the&nbsp;samples&nbsp;for&nbsp;each&nbsp;class.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TreeMap&lt;Integer,<span class="datatype">double</span>[]&gt;&nbsp;avgMap&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TreeMap&lt;Integer,&nbsp;<span class="datatype">double</span>[]&gt;();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;will&nbsp;also&nbsp;need&nbsp;to&nbsp;count&nbsp;the&nbsp;number&nbsp;of&nbsp;pixels&nbsp;in&nbsp;a&nbsp;class'&nbsp;samples.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TreeMap&lt;Integer,Integer&gt;&nbsp;countMap&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TreeMap&lt;Integer,&nbsp;Integer&gt;();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(Integer&nbsp;classIndex:classMap.keySet())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;avgMap.put(classIndex,<span class="specialword">new</span>&nbsp;<span class="datatype">double</span>[]{0,0,0});&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;countMap.put(classIndex,0);&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Open&nbsp;the&nbsp;file&nbsp;with&nbsp;the&nbsp;coordinates&nbsp;and&nbsp;get&nbsp;the&nbsp;pixels'&nbsp;values&nbsp;for&nbsp;those&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;coordinates.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;br&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedReader(<span class="specialword">new</span>&nbsp;FileReader(args[2]));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">while</span>(<span class="specialword">true</span>)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;line&nbsp;=&nbsp;br.readLine();&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line&nbsp;==&nbsp;<span class="specialword">null</span>)&nbsp;<span class="controlword">break</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line.startsWith(<span class="string">"#"</span>))&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringTokenizer&nbsp;st&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;StringTokenizer(line);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(st.countTokens()&nbsp;&lt;&nbsp;5)&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;classId&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;x&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;y&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;w&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;h&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Color&nbsp;c&nbsp;=&nbsp;classMap.get(classId);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(c&nbsp;!=&nbsp;<span class="specialword">null</span>)&nbsp;<span class="comment">//&nbsp;We&nbsp;have&nbsp;a&nbsp;region!  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>[]&nbsp;accum&nbsp;=&nbsp;avgMap.get(classId);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;count&nbsp;=&nbsp;countMap.get(classId);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;get&nbsp;all&nbsp;pixels&nbsp;values&nbsp;in&nbsp;it.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;row=0;row&lt;=h;row++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;col=0;col&lt;=w;col++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;rgb&nbsp;=&nbsp;input.getRGB(x+col,y+row);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;r&nbsp;=&nbsp;(<span class="datatype">int</span>)((rgb&amp;0x00FF0000)&gt;&gt;&gt;16);&nbsp;<span class="comment">//&nbsp;Red&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;g&nbsp;=&nbsp;(<span class="datatype">int</span>)((rgb&amp;0x0000FF00)&gt;&gt;&gt;8);&nbsp;&nbsp;<span class="comment">//&nbsp;Green&nbsp;level  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;b&nbsp;=&nbsp;(<span class="datatype">int</span>)&nbsp;(rgb&amp;0x000000FF);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Blue&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;them&nbsp;to&nbsp;the&nbsp;average&nbsp;value.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;accum[0]&nbsp;+=&nbsp;r;&nbsp;&nbsp;accum[1]&nbsp;+=&nbsp;g;&nbsp;&nbsp;accum[2]&nbsp;+=&nbsp;b;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;count++;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Put&nbsp;the&nbsp;average&nbsp;and&nbsp;count&nbsp;values&nbsp;back&nbsp;on&nbsp;the&nbsp;map.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;avgMap.put(classId,accum);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;countMap.put(classId,count);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;br.close();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Write&nbsp;the&nbsp;average&nbsp;value&nbsp;vector,&nbsp;doing&nbsp;the&nbsp;actual&nbsp;averaging&nbsp;before.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedWriter&nbsp;bw&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedWriter(<span class="specialword">new</span>&nbsp;FileWriter(<span class="string">"mindist_signatures.txt"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;In&nbsp;each&nbsp;line&nbsp;information&nbsp;for&nbsp;a&nbsp;class.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(Integer&nbsp;classId:classMap.keySet())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bw.write(classId+<span class="string">"&nbsp;"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>[]&nbsp;avg&nbsp;=&nbsp;avgMap.get(classId);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;count&nbsp;=&nbsp;countMap.get(classId);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bw.write(avg[0]/count+<span class="string">"&nbsp;"</span>+avg[1]/count+<span class="string">"&nbsp;"</span>+avg[2]/count+<span class="string">"&nbsp;"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bw.newLine();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;bw.close();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>This application uses 
the original image, a text file with the classes' description and a text file with the samples' coordinates.
The formats of those text files are described in the section 
<a href="#howtoabrieftutorialonsupervisedimageclassificationsampleextractionforpixelbasedclassificationsamplesfortheexamplesinthistutorial">Samples for the examples in this tutorial</a>.</p>
<p>
The signatures created with this application were stored in a text file,  
 <a href="Resources/SupervisedImageClassification/mindist_signatures.txt" title="Modificado em 22/10/13 15:12">mindist_signatures.txt (TXT, 0,3K)</a>,
 summarized in the table below.</p> 
 
 <table class="simpletable">
  <tr>
    <td class="simpletable">    </td>
    <td class="simpletable"><b>Clouds</b>    </td>
    <td class="simpletable"><b>Shadows</b>    </td>
    <td class="simpletable"><b>Water</b>    </td>
    <td class="simpletable"><b>Forest</b>    </td>
    <td class="simpletable"><b>Pasture</b>    </td>
    <td class="simpletable"><b>Urban</b>    </td>
  </tr>
  <tr>
    <td class="simpletable "><b>avgK</b></td>
    <td class="simpletable ">(166.45, 143.21, 215.82)</td>
    <td class="simpletable ">(11.67, 21.75, 33.53)</td>
    <td class="simpletable ">(9.35, 11.60, 37.23)</td>
    <td class="simpletable ">(23.90, 71.039, 40.92)</td>
    <td class="simpletable ">(45.39 74.82 55.87)</td>
    <td class="simpletable ">(98.93 69.54 84.20)</td>
  </tr>
</table>




<p class="subsection"><a name="tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifierclassification"></a>Classification</p>


<p>Classification with the minimum distance algorithm is also very simple.
 We will need is the original image, the classes description and the signatures created with the
 <tt>CreateMinimumDistanceSignatures</tt> application. The steps are as follow:</p>

<ol>
<li>Read the original image, class description file and signatures file, storing their information in suitable structures.</li>
<li>Create an image with the same dimensions that will be painted with the classified pixels' colors.</li>
<li>For each pixel in the original image, get its RGB values.</li>
<li><ol>
<li>Calculate the distance (in feature space) between the pixel's RGB values and the
 signatures for each class.</li>
<li>Choose the smaller distance (corresponding to the closest signature in feature space).</li>  
<li>Use the color corresponding to the class with smaller distance to paint a pixel in the output image.</li>
</ol>
</li>
<li>Store the resulting image.</li>
</ol>

<p>This algorithm does not consider rejection of the pixel: a pixel will be classified as the class
 with the closest center on feature space even if "closest" is too far. We can change the algorithm
 to allow rejection if the closest distance is larger than a threshold that must be informed to the
 algorithm. The algorithm (with the distance rejection option) is implemented by the class <tt>ClassifyWithMinimumDistanceAlgorithm</tt>, shown below.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifierclassifywithminimumdistancealgorithmjava">&nbsp;</a><a href="/web/20150409005513/http://150.163.105.39:8080/JIPCookbook//Code/tutorials/simpleclassifier/ClassifyWithMinimumDistanceAlgorithm.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>ClassifyWithMinimumDistanceAlgorithm.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook/index.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;tutorials.simpleclassifier;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Color;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.BufferedReader;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.FileReader;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.StringTokenizer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.TreeMap;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;classifies&nbsp;images&nbsp;using&nbsp;the&nbsp;minimum&nbsp;distance&nbsp;classifier.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Please&nbsp;see&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;more&nbsp;information&nbsp;on&nbsp;the&nbsp;files&nbsp;and&nbsp;formats&nbsp;used&nbsp;in&nbsp;this&nbsp;class.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;ClassifyWithMinimumDistanceAlgorithm  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point.&nbsp;We&nbsp;must&nbsp;pass&nbsp;at&nbsp;least&nbsp;three&nbsp;parameters:&nbsp;the&nbsp;original  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;image&nbsp;file&nbsp;name,&nbsp;the&nbsp;name&nbsp;of&nbsp;the&nbsp;file&nbsp;with&nbsp;the&nbsp;description&nbsp;of&nbsp;the&nbsp;classes,  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;and&nbsp;the&nbsp;name&nbsp;of&nbsp;the&nbsp;file&nbsp;with&nbsp;the&nbsp;signatures&nbsp;for&nbsp;the&nbsp;classes.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;If&nbsp;an&nbsp;additional&nbsp;numeric&nbsp;parameter&nbsp;is&nbsp;passed,&nbsp;it&nbsp;will&nbsp;be&nbsp;used&nbsp;as&nbsp;a&nbsp;threshold  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;for&nbsp;classification&nbsp;(see&nbsp;tutorial&nbsp;for&nbsp;more&nbsp;information).&nbsp;&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;@throws&nbsp;IOException&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Check&nbsp;parameters&nbsp;names.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(args.length&nbsp;&lt;&nbsp;3)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"Must&nbsp;pass&nbsp;at&nbsp;least&nbsp;three&nbsp;command-line&nbsp;parameters&nbsp;to&nbsp;this&nbsp;application:"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;The&nbsp;original&nbsp;image&nbsp;(from&nbsp;which&nbsp;samples&nbsp;will&nbsp;be&nbsp;extracted;"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;The&nbsp;file&nbsp;with&nbsp;the&nbsp;classes&nbsp;names&nbsp;and&nbsp;colors"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;The&nbsp;file&nbsp;with&nbsp;the&nbsp;signatures&nbsp;for&nbsp;each&nbsp;class"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"&nbsp;-&nbsp;(optionally)&nbsp;a&nbsp;threshold&nbsp;for&nbsp;minimum&nbsp;distance&nbsp;for&nbsp;classification"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.exit(1);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Open&nbsp;the&nbsp;original&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;input&nbsp;=&nbsp;ImageIO.read(<span class="specialword">new</span>&nbsp;File(args[0]));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;classes&nbsp;description&nbsp;file.&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedReader&nbsp;br&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedReader(<span class="specialword">new</span>&nbsp;FileReader(args[1]));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Store&nbsp;the&nbsp;classes&nbsp;color&nbsp;in&nbsp;a&nbsp;map.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TreeMap&lt;Integer,Color&gt;&nbsp;classMap&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TreeMap&lt;Integer,&nbsp;Color&gt;();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">while</span>(<span class="specialword">true</span>)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;line&nbsp;=&nbsp;br.readLine();&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line&nbsp;==&nbsp;<span class="specialword">null</span>)&nbsp;<span class="controlword">break</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line.startsWith(<span class="string">"#"</span>))&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringTokenizer&nbsp;st&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;StringTokenizer(line);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(st.countTokens()&nbsp;&lt;&nbsp;4)&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;classId&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;r&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;g&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;b&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;classMap.put(classId,<span class="specialword">new</span>&nbsp;Color(r,g,b));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;br.close();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;signatures&nbsp;from&nbsp;a&nbsp;file.&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TreeMap&lt;Integer,<span class="datatype">double</span>[]&gt;&nbsp;avgMap&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TreeMap&lt;Integer,&nbsp;<span class="datatype">double</span>[]&gt;();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;br&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedReader(<span class="specialword">new</span>&nbsp;FileReader(args[2]));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">while</span>(<span class="specialword">true</span>)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;line&nbsp;=&nbsp;br.readLine();&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line&nbsp;==&nbsp;<span class="specialword">null</span>)&nbsp;<span class="controlword">break</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(line.startsWith(<span class="string">"#"</span>))&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringTokenizer&nbsp;st&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;StringTokenizer(line);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(st.countTokens()&nbsp;&lt;&nbsp;4)&nbsp;<span class="controlword">continue</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;classId&nbsp;=&nbsp;Integer.parseInt(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>[]&nbsp;avg&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">double</span>[3];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;avg[0]&nbsp;=&nbsp;Double.parseDouble(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;avg[1]&nbsp;=&nbsp;Double.parseDouble(st.nextToken());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;avg[2]&nbsp;=&nbsp;Double.parseDouble(st.nextToken());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;avgMap.put(classId,avg);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;br.close();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Use&nbsp;a&nbsp;threshold&nbsp;(if&nbsp;passed&nbsp;in&nbsp;the&nbsp;command-line).&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">boolean</span>&nbsp;useThreshold&nbsp;=&nbsp;(args.length&nbsp;&gt;&nbsp;3);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;threshold&nbsp;=&nbsp;Double.MAX_VALUE;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(useThreshold)&nbsp;threshold&nbsp;=&nbsp;Double.parseDouble(args[3]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;color&nbsp;image&nbsp;to&nbsp;hold&nbsp;the&nbsp;results&nbsp;of&nbsp;the&nbsp;classification.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;w&nbsp;=&nbsp;input.getWidth();&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;h&nbsp;=&nbsp;input.getHeight();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;results&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;BufferedImage(w,h,BufferedImage.TYPE_INT_RGB);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Do&nbsp;the&nbsp;classification,&nbsp;pixel&nbsp;by&nbsp;pixel,&nbsp;selecting&nbsp;which&nbsp;class&nbsp;they&nbsp;should&nbsp;be&nbsp;assigned&nbsp;to.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;row=0;row&lt;h;row++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;col=0;col&lt;w;col++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;rgb&nbsp;=&nbsp;input.getRGB(col,row);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;r&nbsp;=&nbsp;(<span class="datatype">int</span>)((rgb&amp;0x00FF0000)&gt;&gt;&gt;16);&nbsp;<span class="comment">//&nbsp;Red&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;g&nbsp;=&nbsp;(<span class="datatype">int</span>)((rgb&amp;0x0000FF00)&gt;&gt;&gt;8);&nbsp;&nbsp;<span class="comment">//&nbsp;Green&nbsp;level  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;b&nbsp;=&nbsp;(<span class="datatype">int</span>)&nbsp;(rgb&amp;0x000000FF);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Blue&nbsp;level  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;To&nbsp;which&nbsp;class&nbsp;should&nbsp;we&nbsp;assign&nbsp;this&nbsp;pixel?  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;minDist&nbsp;=&nbsp;Double.MAX_VALUE;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Color&nbsp;assignedClass&nbsp;=&nbsp;Color.BLACK;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;key:avgMap.keySet())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;dist&nbsp;=&nbsp;calcDistance(r,g,b,avgMap.get(key));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Do&nbsp;we&nbsp;use&nbsp;a&nbsp;minimum&nbsp;distance&nbsp;threshold?  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(useThreshold)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;((dist&nbsp;&lt;&nbsp;minDist)&nbsp;&amp;&amp;&nbsp;(dist&nbsp;&lt;&nbsp;threshold))  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minDist&nbsp;=&nbsp;dist;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assignedClass&nbsp;=&nbsp;classMap.get(key);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="comment">//&nbsp;any&nbsp;distance&nbsp;will&nbsp;do  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(dist&nbsp;&lt;&nbsp;minDist)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minDist&nbsp;=&nbsp;dist;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assignedClass&nbsp;=&nbsp;classMap.get(key);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;With&nbsp;the&nbsp;color,&nbsp;paint&nbsp;the&nbsp;output&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;results.setRGB(col,row,assignedClass.getRGB());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;At&nbsp;the&nbsp;end,&nbsp;store&nbsp;the&nbsp;resulting&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(results,<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"classified-with-mindist.png"</span>));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;This&nbsp;method&nbsp;does&nbsp;not&nbsp;return&nbsp;the&nbsp;Euclidean&nbsp;distance,&nbsp;but&nbsp;since&nbsp;we&nbsp;are&nbsp;using&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;distances&nbsp;only&nbsp;for&nbsp;comparison,&nbsp;it&nbsp;is&nbsp;OK.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">double</span>&nbsp;calcDistance(<span class="datatype">int</span>&nbsp;r,<span class="datatype">int</span>&nbsp;g,<span class="datatype">int</span>&nbsp;b,<span class="datatype">double</span>[]&nbsp;avg)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;(r-avg[0])*(r-avg[0])+(g-avg[1])*(g-avg[1])+(b-avg[2])*(b-avg[2]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;138&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>

 
<p>Using this application with the test image, class description and signatures calculated with 
 the <tt>CreateMinimumDistanceSignatures</tt> application we get the results shown below.</p>
 
<table class="simpletable">
  <tr>
    <td class="simpletable legend">
    <a name="tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifierimageclassifiedwiththeminimumdistancemethod">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/classified-with-mindist-0_icon.png" border=0 alt="Image classified with the minimum distance method."><p class="caption">Image classified with the minimum distance method.</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable left">
    <p>This is the image used in the example classified with the minimum distance algorithm. The colors of the pixels are the same as
    specified in the class description file (red for Urban, blue for Water, etc.). No pixels are painted in black because
    this run of the algorithm did not consider a threshold for classifier rejections.</p>
    <p>The image shown in the left was reduced for better visualization, 
     <a href="Resources/SupervisedImageClassification/classified-with-mindist-0.png" title="Modificado em 22/10/13 15:12">click here (PNG, 61,9K)</a>    
     to get the original 781x671 pixels classified image.    </p>
      </td> 
</tr> 
</table>
<p>A second run of the application, this time using the threshold parameter, resulted
 in the image shown below.</p>

<table class="simpletable">
  <tr>
    <td class="simpletable legend">
    <a name="tutorialsabrieftutorialonsupervisedimageclassificationtheminimumdistanceclassifierimageclassifiedwiththeminimumdistancemethodwitharejectionthreshold">&nbsp;</a><img class="figure" src="Resources/SupervisedImageClassification/classified-with-mindist-300_icon.png" border=0 alt="Image classified with the minimum distance method (with a rejection threshold)."><p class="caption">Image classified with the minimum distance method (with a rejection threshold).</p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable left">
    <p>This is the image used in the example classified with the minimum distance algorithm. The colors of the pixels are the same as
    specified in the class description file (red for Urban, blue for Water, etc.). Some pixels are painted in black because
    in this run of the algorithm we used a rejection threshold (in this case, 300), meaning that if the smaller distance from a RGB pixel 
    to the closest class signature (measured in feature space) was larger than 300, the pixel won't be classified.</p>
    <p>The image shown in the left was reduced for better visualization, 
     <a href="Resources/SupervisedImageClassification/classified-with-mindist-300.png" title="Modificado em 22/10/13 15:12">click here (PNG, 93,0K)</a>    
     to get the original 781x671 pixels classified image.    </p>
      </td> 
</tr> 
</table>
  






<p class="section"><a name="tutorialsabrieftutorialonsupervisedimageclassificationfinalcomments"></a>Final Comments</p>

<p>This document is just a basic tutorial on supervised image classification, which is a research field which uses concepts from
 image processing, artificial intelligence and pattern recognition, statistics, among many others. Many other methods for
 image classification, including methods based on neural networks and fuzzy logic, are presented by the books and
 papers on the list of references.</p>
<p>If you want to implement other classification algorithms using Java and JAI it is very important to understand the basics of JAI and at least
 basic concepts of Java, specially collections. Several other tutorials and examples on this site may be of help.</p>



<p class="section"><a name="tutorialsabrieftutorialonsupervisedimageclassificationreferences"></a>References</p>

<ul class="b">
<li><i>Classification Methods for Remotely Sensed Data</i>, by Brandt Tso and Paul M. Mather, Taylor and Francis, 2001.</li>
<li><i>Pattern Recognition and Image Analysis</i>, by Earl Gose, Richard Johnsonbaugh and Steve Jost, Addison-Wesley, 1996.</li> 
<li><i>Remote Sensing Digital Image Analysis - An Introduction (Second,
  Revised and Enlarged Edition)</i>, by John A. Richards, Springer-Verlag, 1993. ISBN 0-387-54840-8. </li>  
<li><i>Neural Computing: An Introduction</i>, by R. Beale and T. Jackson, Adam Hilger (IOP Publishing), 1990. ISBN 0-85274-262-2.</li>  
<li><i>Introductory Digital Image Processing - A Remote Sensing Perspective</i>, by John R. Jensen, 
  Prentice-Hall, 1986, ISBN 0-13-500828-X.</li>  
<li><i>Pattern Recognition Using Neural Networks</i>, by Carl G. Looney, Oxford University Press, 1997.</li>
<li><i>Artificial Neural Networks for Image Understanding</i>, by Arun D. Kulkarni, Van Nostrand Reinhold publishers, 1994. ISBN 0-442-00921-6. </li>  
<li>A <a href="Resources/Docs/khoros-classify-manual.pdf" title="Modificado em 22/10/13 15:12">manual (PDF, 1,6M)</a> I wrote for a supervised classification toolbox 
  for the Khoros system (now <a href="/web/20150409005513/http://www.accusoft.com/products/visiquest/overview.asp">VisiQuest</a>), in 1997. While the software is not
  longer maintained the manual describes the concepts and algorithms for seven different supervised classifiers.</li>
<li>You can get some free remote sensing image at the
  <a href="/web/20150409005513/http://www.landcover.org/">University of Maryland's <i>Global Land Cover Facility</i></a>. 
 </li>  
<li>See <a href="/web/20150409005513/http://landsat.gsfc.nasa.gov/education/compositor/">How are satellite images different from photographs</a>
 for more information on Landsat images' composition for visualization.</li>  
</ul>






<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="6330-howto-ndvi.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="6330-howto-ndvi.jsp">How can I calculate and display a NDVI image?</a></td><td class="navigation1"><a href="6520-howto-chromakey.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="6520-howto-chromakey.jsp">How can I implement a chroma key composition on images?</a></td><td class="navigation0"><a href="7020-tutorial-supervisedclassification.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="7020-tutorial-supervisedclassification.jsp">A Brief Tutorial on Supervised Image Classification</a></td><td class="navigation1"><a href="8000-jaistuff.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="8000-jaistuff.jsp">Old code from the JAIStuff Project</a></td><td class="navigation2"><a href="9100-datasets-colorimages.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="9100-datasets-colorimages.jsp">Color Images</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150409005513/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150409005513/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150409005513/https://ssl." : "/web/20150409005513/http://www.");
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
     FILE ARCHIVED ON 0:55:13 Apr 9, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 1:20:36 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
