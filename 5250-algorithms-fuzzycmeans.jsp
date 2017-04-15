


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app7.us.archive.org";archive_analytics.values.server_ms=257;</script>
<link type="text/css" rel="stylesheet" href="/static/css/banner-styles.css"/>

<title>Java Image Processing Cookbook</title>
  <meta name="copyright" content="(C)Rafael Santos, todos os direitos reservados.">
  <meta name="Description" content="Publicações, material de cursos, etc. criados por Rafael Santos">
  <meta name="Keywords" content="INPE, LAC, CTE, Java, Processamento de Imagens, Image Processing, Inteligência Artificial, Artificial Intelligence, Rafael Santos">
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/5250-algorithms-fuzzycmeans.jsp";

var firstYear = 1996;
var displayDay = "11";
var displayMonth = "Jul";
var displayYear = "2010";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/5250-algorithms-fuzzycmeans.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20100711082647" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    Jun
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 8:26:47 Jul 11, 2010">JUL</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20100824164206/http://www.lac.inpe.br/JIPCookbook/5250-algorithms-fuzzycmeans.jsp" title="24 Aug 2010"><strong>AUG</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                       <img src="/static/images/toolbar/wm_tb_prv_off.png" alt="Previous capture" width="14" height="16" border="0" />
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 8:26:47 Jul 11, 2010">11</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20100824164206/http://www.lac.inpe.br/JIPCookbook/5250-algorithms-fuzzycmeans.jsp" title="16:42:06 Aug 24, 2010"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   2009
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 8:26:47 Jul 11, 2010">2010</td>
	       <td class="f" nowrap="nowrap">
               
	           <a href="/web/20140131215713/http://www.lac.inpe.br/JIPCookbook/5250-algorithms-fuzzycmeans.jsp" title="31 Jan 2014"><strong>2014</strong></a>
	       
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20100711082647*/http://www.lac.inpe.br/JIPCookbook/5250-algorithms-fuzzycmeans.jsp" title="See a list of every capture for this URL">9 captures</a>
           <div class="r" title="Timespan for captures of this URL">11 Jul 10 - 26 Mar 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:6:000000111000_2011:-1:001000000000_2012:-1:000000000000_2013:-1:000000000000_2014:-1:100000000001_2015:-1:000000000000_2016:-1:111000000000_2017:-1:000000000000" />
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
<a href="/web/20100711082647/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20100711082647/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">Fuzzy C-Means Clustering</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="5250-algorithms-fuzzycmeans.jsp#algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithm">The Fuzzy C-Means algorithm</a>
</div>
<div class="toc4"><a href="5250-algorithms-fuzzycmeans.jsp#algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmintroduction">Introduction</a>
</div>
<div class="toc4"><a href="5250-algorithms-fuzzycmeans.jsp#algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmthealgorithm">The algorithm</a>
</div>
<div class="toc4"><a href="5250-algorithms-fuzzycmeans.jsp#algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmimplementation">Implementation</a>
</div>
<div class="toc3"><a href="5250-algorithms-fuzzycmeans.jsp#algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithm">Exploring the results of the algorithm</a>
</div>
<div class="toc4"><a href="5250-algorithms-fuzzycmeans.jsp#algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmrankedresults">Ranked Results</a>
</div>
<div class="toc4"><a href="5250-algorithms-fuzzycmeans.jsp#algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmmaximummembershipfunction">Maximum membership function</a>
</div>
<div class="toc4"><a href="5250-algorithms-fuzzycmeans.jsp#algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmexamples">Examples</a>
</div>
<div class="toc4"><a href="5250-algorithms-fuzzycmeans.jsp#algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmclustervaliditymeasures">Cluster validity measures</a>
</div>
<div class="toc3"><a href="5250-algorithms-fuzzycmeans.jsp#algorithmsfuzzycmeansclusteringreferences">References</a>
</div>
</div>

<p class="section"><a name="algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithm"></a>The Fuzzy C-Means algorithm</p>


<p class="subsection"><a name="algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmintroduction"></a>Introduction</p>

<p>Clustering is the process of organizing objects in groups where the objects in a group are considered similar in respect to some
feature, and also considered different from objects in other groups again in respect to some feature.
When applied to image, clustering methods can be used to create groups of pixels that are similar in regard to a measure,
often their color or gray level; therefore simplifying the image by reducing the number of discrete possible pixel values.
Image clustering can be used to get a simple segmentation of the image.</p>

<p>The Fuzzy C-Means algorithm (often abbreviated to FCM) is an iterative algorithm that find clusters in data 
and which uses the concept of fuzzy 
membership: instead of assigning a pixel to a single cluster, each pixel will have different membership values on each cluster. More information
about this algorithm can be found in the <a href="#algorithmsfuzzycmeansclusteringreferences">references</a> below.</p>

<p>The Fuzzy C-Means attempts to find clusters in the data by minimizing an objective function shown in the equation below:</p>  

<img class="equation" src="Resources/FuzzyCMeans/fcmeq1.png" alt="Equation 1">
<p>Where:</p>
<ul class="b">
<li><b><i>J</i></b> is the objective function -- if after one iteration of the algorithm the value of <i>J</i> is smaller than before
                    it means the algorithm is converging or getting closer to a good separation of pixels into clusters.</li>
<li><b><i>N</i></b> is the number of pixels in the image.</li>
<li><b><i>C</i></b> is the number of clusters used in the algorithm, and which must be decided before execution.</li>
<li><b><i>&#x03BC;</i></b> is the membership table -- a table of <i>N</i>x<i>C</i> entries which contains the membership values of each data point 
                          and each cluster.</li>
<li><b><i>m</i></b> is a fuzziness factor (a value larger than 1).</li>
<li><b><i>x<span class="sub">i</span></i></b> is the <i>i<span class="sup">th</span></i> pixel in <i>N</i>.</li>
<li><b><i>c<span class="sub">j</span></i></b> is <i>j<span class="sup">th</span></i> cluster in <i>C</i>.</li>
<li><b><i>|x<span class="sub">i</span>&nbsp;-&nbsp;c<span class="sub">j</span>|</i></b> is the Euclidean distance between
         <i>x<span class="sub">i</span></i> and <i>c<span class="sub">j</span></i>.</li> 
</ul>




<p class="subsection"><a name="algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmthealgorithm"></a>The algorithm</p>


<p>The input to the algorithm are the <i>N</i> pixels on the image and the <i>m</i> fuzziness value. Its steps are:</p>

<ol>
<li>Initialize <i>&#x03BC;</i> with random values between zero and one; but with the sum of all fuzzy membership table 
    elements for a particular pixel being equal to 1 -- in other words, the sum of the memberships of a pixel for all clusters must be one.</li>
<li>Calculate an initial value for <i>J</i> using<img class="equation" src="Resources/FuzzyCMeans/fcmeq1.png" alt="Equation 1"></li>
<li>Calculate the centroids of the clusters <i>c<span class="sub">j</span></i> using <img class="equation" src="Resources/FuzzyCMeans/fcmeq3.png" alt="Equation 3"></li>
<li>Calculate the fuzzy membership table using <img class="equation" src="Resources/FuzzyCMeans/fcmeq2.png" alt="Equation 2"></li>
<li>Recalculate <i>J</i>.</li>
<li>Go to step 3 until a stopping condition was reached.</li>
</ol>
<p>Some possible stopping conditions are:</p>
<ul class="b">
<li>A number of iterations was executed, and we can consider that the algorithm achieved a "good enough" clustering of the data.</li>
<li>The difference between the values of <i>J</i> in consecutive iterations is small (smaller than a user-specified parameter &#x03B5;), therefore the algorithm has converged.</li>
</ul>

<p>At the end of the execution of the algorithm we have, for each pixel, the membership values for that pixel in each cluster.
Traditionally the algorithm can then <i>defuzzify</i> its results by choosing a 
"winning" cluster, i.e. the one which is closer to the pixel in the feature space, is the one for which the
membership value is highest; and using that cluster center as the new values for the pixel.</p>  

<p>The implementation shown in this chapter uses both stopping conditions: when either is achieved the algorithm will stop.
The implementation also uses the concept of <i>image processing task</i>, shown in chapter <a href="5010-algorithms-commonclasses.jsp">Common Classes</a>. 




<p class="subsection"><a name="algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmimplementation"></a>Implementation</p>


<p>The code for the basic Fuzzy C-Means algorithm, with specific implementation issues for clustering of images, is shown in
the class <tt>FuzzyCMeansImageClustering</tt> below.</p>
<p>Some notes on the implementation:</p>
<ul class="b">
<li>There are methods to calculate <i>J</i>, to calculate the fuzzy membership table values and to calculate the cluster centers. There are several other auxuliary methods to make the code clearer.</li>
<li>The class constructor initializes the data, particularly <i>&#x03BC;</i>.</li>
<li>The most important method is <tt>run</tt>, which implements the algorithm steps.</li>
<li>This implementation allows the retrieval of data and image related to the fuzzy membership table values, which will be
    detailed in the section <a href="#algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithm">Exploring the results of the algorithm</a> below.</li>
<li>This implementation also calculates some clustering quality metrics, please see the <a href="#algorithmsfuzzycmeansclusteringreferences">references</a>.</li>
</ul>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmfuzzycmeansimageclusteringjava">&nbsp;</a><a href="/web/20100711082647/http://www.lac.inpe.br/JIPCookbook/Code/algorithms/fuzzycmeans/FuzzyCMeansImageClustering.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>FuzzyCMeansImageClustering.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;algorithms.fuzzycmeans;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Point;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.ColorModel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.DataBuffer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.Raster;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.SampleModel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.WritableRaster;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.Random;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.RasterFactory;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.TiledImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;algorithms.common.ImageProcessingTask;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;implements&nbsp;a&nbsp;basic&nbsp;Fuzzy&nbsp;C-Means&nbsp;clustering&nbsp;algorithm&nbsp;as&nbsp;an  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;image&nbsp;processing&nbsp;task.&nbsp;This&nbsp;implementation&nbsp;tries&nbsp;to&nbsp;speed&nbsp;things&nbsp;up,&nbsp;but  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;needs&nbsp;to&nbsp;keep&nbsp;all&nbsp;image&nbsp;data&nbsp;on&nbsp;memory.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;implementation&nbsp;deals&nbsp;only&nbsp;with&nbsp;integer-like&nbsp;pixel&nbsp;data&nbsp;but&nbsp;can  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;cluster&nbsp;N-dimensional&nbsp;data.&nbsp;This&nbsp;implementation&nbsp;can&nbsp;return&nbsp;ranked&nbsp;images  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;(i.e.&nbsp;second,&nbsp;third,&nbsp;etc.&nbsp;best&nbsp;choices)&nbsp;as&nbsp;well&nbsp;as&nbsp;the&nbsp;membership-  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;function&nbsp;based&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;FuzzyCMeansImageClustering&nbsp;<span class="classword">extends</span>&nbsp;ImageProcessingTask  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;copy&nbsp;of&nbsp;the&nbsp;input&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;PlanarImage&nbsp;pInput;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;input&nbsp;image&nbsp;dimensions.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>&nbsp;width,height,numBands;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;Some&nbsp;clustering&nbsp;parameters.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>&nbsp;maxIterations,numClusters;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;FCM&nbsp;additional&nbsp;parameters&nbsp;and&nbsp;membership&nbsp;function&nbsp;values.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">float</span>&nbsp;fuzziness;&nbsp;<span class="comment">//&nbsp;"m"  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">float</span>[][][]&nbsp;membership;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;iteration&nbsp;counter&nbsp;will&nbsp;be&nbsp;global&nbsp;so&nbsp;we&nbsp;can&nbsp;get&nbsp;its&nbsp;value&nbsp;on&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;middle&nbsp;of&nbsp;the&nbsp;clustering&nbsp;process.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>&nbsp;iteration;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;metric&nbsp;of&nbsp;clustering&nbsp;"quality",&nbsp;called&nbsp;"j"&nbsp;as&nbsp;in&nbsp;the&nbsp;equations.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">double</span>&nbsp;j&nbsp;=&nbsp;Float.MAX_VALUE;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;small&nbsp;value,&nbsp;if&nbsp;the&nbsp;difference&nbsp;of&nbsp;the&nbsp;cluster&nbsp;"quality"&nbsp;does&nbsp;not  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;changes&nbsp;beyond&nbsp;this&nbsp;value,&nbsp;we&nbsp;consider&nbsp;the&nbsp;clustering&nbsp;converged.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">double</span>&nbsp;epsilon;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;This&nbsp;flag&nbsp;will&nbsp;be&nbsp;true&nbsp;when&nbsp;the&nbsp;clustering&nbsp;has&nbsp;finished.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">boolean</span>&nbsp;hasFinished&nbsp;=&nbsp;<span class="specialword">false</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">long</span>&nbsp;position;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;cluster&nbsp;centers.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">float</span>[][]&nbsp;clusterCenters;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;big&nbsp;array&nbsp;with&nbsp;all&nbsp;the&nbsp;input&nbsp;data&nbsp;and&nbsp;a&nbsp;small&nbsp;one&nbsp;for&nbsp;a&nbsp;single&nbsp;pixel.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>[]&nbsp;inputData;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">float</span>[]&nbsp;aPixel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;big&nbsp;array&nbsp;with&nbsp;the&nbsp;output&nbsp;data&nbsp;(cluster&nbsp;indexes).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;outputData;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor&nbsp;for&nbsp;the&nbsp;class,&nbsp;which&nbsp;sets&nbsp;the&nbsp;input&nbsp;image,&nbsp;the&nbsp;number&nbsp;of  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;desired&nbsp;clusters,&nbsp;the&nbsp;maximum&nbsp;number&nbsp;of&nbsp;iterations,&nbsp;the&nbsp;fuzziness&nbsp;("m"  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;value)&nbsp;and&nbsp;a&nbsp;value&nbsp;that&nbsp;will&nbsp;be&nbsp;used&nbsp;to&nbsp;decide&nbsp;whether&nbsp;the&nbsp;convergence  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;has&nbsp;stopped.&nbsp;It&nbsp;also&nbsp;allocates&nbsp;the&nbsp;required&nbsp;memory.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;pInput&nbsp;the&nbsp;input&nbsp;planar&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;numClusters&nbsp;the&nbsp;desired&nbsp;number&nbsp;of&nbsp;clusters.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;maxIterations&nbsp;the&nbsp;maximum&nbsp;number&nbsp;of&nbsp;iterations.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;fuzziness&nbsp;the&nbsp;fuzziness&nbsp;(a.k.a.&nbsp;the&nbsp;"m"&nbsp;value)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;epsilon&nbsp;a&nbsp;small&nbsp;value&nbsp;used&nbsp;to&nbsp;verify&nbsp;if&nbsp;clustering&nbsp;has&nbsp;converged.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;FuzzyCMeansImageClustering(PlanarImage&nbsp;pInput,<span class="datatype">int</span>&nbsp;numClusters,<span class="datatype">int</span>&nbsp;maxIterations,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;fuzziness,<span class="datatype">double</span>&nbsp;epsilon)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">this</span>.pInput&nbsp;=&nbsp;pInput;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;image&nbsp;dimensions.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;width&nbsp;=&nbsp;pInput.getWidth();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;height&nbsp;=&nbsp;pInput.getHeight();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;numBands&nbsp;=&nbsp;pInput.getSampleModel().getNumBands();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;some&nbsp;clustering&nbsp;parameters.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">this</span>.numClusters&nbsp;=&nbsp;numClusters;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">this</span>.maxIterations&nbsp;=&nbsp;maxIterations;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">this</span>.fuzziness&nbsp;=&nbsp;fuzziness;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">this</span>.epsilon&nbsp;=&nbsp;epsilon;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;iteration&nbsp;=&nbsp;0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;need&nbsp;arrays&nbsp;to&nbsp;store&nbsp;the&nbsp;clusters'&nbsp;centers,&nbsp;validity&nbsp;tags&nbsp;and&nbsp;membership&nbsp;values.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;clusterCenters&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">float</span>[numClusters][numBands];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;membership&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">float</span>[width][height][numClusters];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Gets&nbsp;the&nbsp;raster&nbsp;for&nbsp;the&nbsp;input&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Raster&nbsp;raster&nbsp;=&nbsp;pInput.getData();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Gets&nbsp;the&nbsp;whole&nbsp;image&nbsp;data&nbsp;on&nbsp;memory.&nbsp;Get&nbsp;memory&nbsp;for&nbsp;a&nbsp;single&nbsp;pixel&nbsp;too.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;inputData&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[width*height*numBands];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;aPixel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">float</span>[numBands];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Gets&nbsp;memory&nbsp;for&nbsp;the&nbsp;output&nbsp;data&nbsp;(cluster&nbsp;indexes).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;outputData&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">short</span>[width][height];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;raster.getPixels(0,0,width,height,inputData);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Initialize&nbsp;the&nbsp;membership&nbsp;functions&nbsp;randomly.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Random&nbsp;generator&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Random();&nbsp;<span class="comment">//&nbsp;easier&nbsp;to&nbsp;debug&nbsp;if&nbsp;a&nbsp;seed&nbsp;is&nbsp;used  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;each&nbsp;data&nbsp;point&nbsp;(in&nbsp;the&nbsp;membership&nbsp;function&nbsp;table)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;each&nbsp;cluster's&nbsp;membership&nbsp;assign&nbsp;a&nbsp;random&nbsp;value.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;sum&nbsp;=&nbsp;0f;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c=0;c&lt;numClusters;c++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;membership[w][h][c]&nbsp;=&nbsp;0.01f+generator.nextFloat();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sum&nbsp;+=&nbsp;membership[w][h][c];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Normalize&nbsp;so&nbsp;the&nbsp;sum&nbsp;of&nbsp;MFs&nbsp;for&nbsp;a&nbsp;particular&nbsp;data&nbsp;point&nbsp;will&nbsp;be&nbsp;equal&nbsp;to&nbsp;1.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c=0;c&lt;numClusters;c++)&nbsp;membership[w][h][c]&nbsp;/=&nbsp;sum;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Initialize&nbsp;the&nbsp;global&nbsp;position&nbsp;value.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;position&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;performs&nbsp;the&nbsp;bulk&nbsp;of&nbsp;the&nbsp;processing.&nbsp;It&nbsp;runs&nbsp;the&nbsp;classic  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Fuzzy&nbsp;C-Means&nbsp;clustering&nbsp;algorithm:  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;1&nbsp;-&nbsp;Calculate&nbsp;the&nbsp;cluster&nbsp;centers.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;2&nbsp;-&nbsp;Update&nbsp;the&nbsp;membership&nbsp;function.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;3&nbsp;-&nbsp;Calculate&nbsp;statistics&nbsp;and&nbsp;repeat&nbsp;from&nbsp;1&nbsp;if&nbsp;needed.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;run()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;lastJ;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;initial&nbsp;objective&nbsp;function&nbsp;just&nbsp;for&nbsp;kicks.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;lastJ&nbsp;=&nbsp;calculateObjectiveFunction();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Do&nbsp;all&nbsp;required&nbsp;iterations&nbsp;(until&nbsp;the&nbsp;clustering&nbsp;converges)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(iteration=0;iteration&lt;maxIterations;iteration++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;cluster&nbsp;centers&nbsp;from&nbsp;MFs.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;calculateClusterCentersFromMFs();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Then&nbsp;calculate&nbsp;the&nbsp;MFs&nbsp;from&nbsp;the&nbsp;cluster&nbsp;centers&nbsp;!  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;calculateMFsFromClusterCenters();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Then&nbsp;see&nbsp;how&nbsp;our&nbsp;objective&nbsp;function&nbsp;is&nbsp;going.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;138&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;j&nbsp;=&nbsp;calculateObjectiveFunction();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;139&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(Math.abs(lastJ-j)&nbsp;&lt;&nbsp;epsilon)&nbsp;<span class="controlword">break</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;140&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastJ&nbsp;=&nbsp;j;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;141&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="comment">//&nbsp;end&nbsp;of&nbsp;the&nbsp;iterations&nbsp;loop.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;142&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;hasFinished&nbsp;=&nbsp;<span class="specialword">true</span>;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;143&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Means&nbsp;that&nbsp;all&nbsp;calculations&nbsp;are&nbsp;done,&nbsp;too.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;144&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;position&nbsp;=&nbsp;getSize();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;145&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;146&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;147&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;148&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;calculates&nbsp;the&nbsp;cluster&nbsp;centers&nbsp;from&nbsp;the&nbsp;membership  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;149&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;functions.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;150&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;151&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">void</span>&nbsp;calculateClusterCentersFromMFs()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;152&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;153&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;top,bottom;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;154&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;each&nbsp;band&nbsp;and&nbsp;cluster  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;155&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;b=0;b&lt;numBands;b++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;156&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c=0;c&lt;numClusters;c++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;157&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;158&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;all&nbsp;data&nbsp;points&nbsp;calculate&nbsp;the&nbsp;top&nbsp;and&nbsp;bottom&nbsp;parts&nbsp;of&nbsp;the&nbsp;equation.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;159&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;top&nbsp;=&nbsp;bottom&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;160&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;161&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;162&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;163&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Index&nbsp;will&nbsp;help&nbsp;locate&nbsp;the&nbsp;pixel&nbsp;data&nbsp;position.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;164&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;index&nbsp;=&nbsp;(h*width+w)*numBands;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;165&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;top&nbsp;+=&nbsp;Math.pow(membership[w][h][c],fuzziness)*inputData[index+b];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;166&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bottom&nbsp;+=&nbsp;Math.pow(membership[w][h][c],fuzziness);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;167&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;168&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;cluster&nbsp;center.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;169&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;clusterCenters[c][b]&nbsp;=&nbsp;top/bottom;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;170&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Upgrade&nbsp;the&nbsp;position&nbsp;vector&nbsp;(batch).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;171&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;position&nbsp;+=&nbsp;width*height;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;172&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;173&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;174&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;175&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;176&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;calculates&nbsp;the&nbsp;membership&nbsp;functions&nbsp;from&nbsp;the&nbsp;cluster  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;177&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;centers.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;178&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;179&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">void</span>&nbsp;calculateMFsFromClusterCenters()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;180&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;181&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;sumTerms;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;182&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;each&nbsp;cluster&nbsp;and&nbsp;data&nbsp;point  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;183&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c=0;c&lt;numClusters;c++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;184&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;185&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;186&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;187&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;a&nbsp;pixel&nbsp;(as&nbsp;a&nbsp;single&nbsp;array).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;188&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;index&nbsp;=&nbsp;(h*width+w)*numBands;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;189&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;b=0;b&lt;numBands;b++)&nbsp;aPixel[b]&nbsp;=&nbsp;inputData[index+b];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;190&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Top&nbsp;is&nbsp;the&nbsp;distance&nbsp;of&nbsp;this&nbsp;data&nbsp;point&nbsp;to&nbsp;the&nbsp;cluster&nbsp;being&nbsp;read.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;191&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;top&nbsp;=&nbsp;calcDistance(aPixel,clusterCenters[c]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;192&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Bottom&nbsp;is&nbsp;the&nbsp;sum&nbsp;of&nbsp;distances&nbsp;from&nbsp;this&nbsp;data&nbsp;point&nbsp;to&nbsp;all&nbsp;clusters.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;193&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sumTerms&nbsp;=&nbsp;0f;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;194&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;ck=0;ck&lt;numClusters;ck++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;195&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;196&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;thisDistance&nbsp;=&nbsp;calcDistance(aPixel,clusterCenters[ck]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;197&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sumTerms&nbsp;+=&nbsp;Math.pow(top/thisDistance,(2f/(fuzziness-1f)));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;198&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;199&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Then&nbsp;the&nbsp;MF&nbsp;can&nbsp;be&nbsp;calculated&nbsp;as...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;200&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;membership[w][h][c]&nbsp;=&nbsp;(<span class="datatype">float</span>)(1f/sumTerms);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;201&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Upgrade&nbsp;the&nbsp;position&nbsp;vector&nbsp;(batch).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;202&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;position&nbsp;+=&nbsp;(numBands+numClusters);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;203&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;204&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;205&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;206&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;207&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;208&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/*  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;209&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;calculates&nbsp;the&nbsp;objective&nbsp;function&nbsp;("j")&nbsp;which&nbsp;reflects&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;210&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;quality&nbsp;of&nbsp;the&nbsp;clustering.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;211&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;212&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">double</span>&nbsp;calculateObjectiveFunction()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;213&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;214&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;j&nbsp;=&nbsp;0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;215&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;all&nbsp;data&nbsp;values&nbsp;and&nbsp;clusters  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;216&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;217&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;218&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c=0;c&lt;numClusters;c++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;219&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;220&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;current&nbsp;pixel&nbsp;data.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;221&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;index&nbsp;=&nbsp;(h*width+w)*numBands;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;222&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;b=0;b&lt;numBands;b++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;223&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aPixel[b]&nbsp;=&nbsp;inputData[index+b];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;224&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;distance&nbsp;between&nbsp;a&nbsp;pixel&nbsp;and&nbsp;a&nbsp;cluster&nbsp;center.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;225&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;distancePixelToCluster&nbsp;=&nbsp;calcDistance(aPixel,clusterCenters[c]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;226&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;j&nbsp;+=&nbsp;distancePixelToCluster*Math.pow(membership[w][h][c],fuzziness);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;227&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Upgrade&nbsp;the&nbsp;position&nbsp;vector&nbsp;(batch).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;228&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;position&nbsp;+=&nbsp;(2*numBands);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;229&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;230&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;j;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;231&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;232&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;233&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;234&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;calculates&nbsp;the&nbsp;Euclidean&nbsp;distance&nbsp;between&nbsp;two&nbsp;N-dimensional  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;235&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;vectors.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;236&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;a1&nbsp;the&nbsp;first&nbsp;data&nbsp;vector.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;237&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;a2&nbsp;the&nbsp;second&nbsp;data&nbsp;vector.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;238&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;Euclidean&nbsp;distance&nbsp;between&nbsp;those&nbsp;vectors.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;239&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;240&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">float</span>&nbsp;calcDistance(<span class="datatype">float</span>[]&nbsp;a1,<span class="datatype">float</span>[]&nbsp;a2)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;241&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;242&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;distance&nbsp;=&nbsp;0f;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;243&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;e=0;e&lt;a1.length;e++)&nbsp;distance&nbsp;+=&nbsp;(a1[e]-a2[e])*(a1[e]-a2[e]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;244&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Sanity&nbsp;check,&nbsp;avoid&nbsp;singularities  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;245&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(distance&nbsp;==&nbsp;0.0)&nbsp;distance&nbsp;=&nbsp;Float.MIN_VALUE;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;246&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;(<span class="datatype">float</span>)Math.sqrt(distance);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;247&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;248&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;249&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;250&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;estimated&nbsp;size&nbsp;(steps)&nbsp;for&nbsp;this&nbsp;task.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;251&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;value&nbsp;is,&nbsp;of&nbsp;course,&nbsp;an&nbsp;approximation,&nbsp;just&nbsp;so&nbsp;we&nbsp;will&nbsp;be&nbsp;able&nbsp;to  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;252&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;give&nbsp;the&nbsp;user&nbsp;a&nbsp;feedback&nbsp;on&nbsp;the&nbsp;processing&nbsp;time.&nbsp;In&nbsp;this&nbsp;case,&nbsp;the&nbsp;value  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;253&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;is&nbsp;calculated&nbsp;as&nbsp;the&nbsp;number&nbsp;of&nbsp;loops&nbsp;in&nbsp;the&nbsp;run()&nbsp;method.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;254&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;255&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">long</span>&nbsp;getSize()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;256&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;257&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Return&nbsp;the&nbsp;estimated&nbsp;size&nbsp;for&nbsp;this&nbsp;task:  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;258&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;(<span class="datatype">long</span>)maxIterations*&nbsp;<span class="comment">//&nbsp;The&nbsp;maximum&nbsp;number&nbsp;of&nbsp;iterations&nbsp;times  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;259&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;260&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(numClusters*width*height*(2*numBands))+&nbsp;<span class="comment">//&nbsp;Step&nbsp;0&nbsp;of&nbsp;method&nbsp;run()  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;261&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(width*height*numBands*numClusters)+&nbsp;<span class="comment">//&nbsp;Step&nbsp;1&nbsp;of&nbsp;method&nbsp;run()&nbsp;&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;262&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(numClusters*width*height*(numBands+numClusters))+&nbsp;<span class="comment">//&nbsp;Step&nbsp;2&nbsp;of&nbsp;run()  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;263&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(numClusters*width*height*(2*numBands))&nbsp;&nbsp;<span class="comment">//&nbsp;Step&nbsp;3&nbsp;of&nbsp;method&nbsp;run()  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;264&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;265&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;266&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;267&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;268&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;a&nbsp;measure&nbsp;of&nbsp;the&nbsp;progress&nbsp;of&nbsp;the&nbsp;algorithm.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;269&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;270&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">long</span>&nbsp;getPosition()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;271&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;272&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;position;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;273&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;274&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;275&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;276&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;true&nbsp;if&nbsp;the&nbsp;clustering&nbsp;has&nbsp;finished.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;277&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;278&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">boolean</span>&nbsp;isFinished()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;279&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;280&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;(position&nbsp;==&nbsp;getSize());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;281&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;282&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;283&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;284&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;return&nbsp;a&nbsp;rank&nbsp;image,&nbsp;i.e.&nbsp;an&nbsp;image&nbsp;which&nbsp;pixels&nbsp;are  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;285&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;the&nbsp;cluster&nbsp;centers&nbsp;of&nbsp;the&nbsp;Nth&nbsp;best&nbsp;choice&nbsp;for&nbsp;the&nbsp;classification.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;286&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;For&nbsp;example,&nbsp;if&nbsp;the&nbsp;membership&nbsp;functions&nbsp;for&nbsp;a&nbsp;pixel&nbsp;of&nbsp;an&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;287&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;clustered&nbsp;with&nbsp;six&nbsp;clusters&nbsp;are&nbsp;[0.10&nbsp;0.25&nbsp;0.40&nbsp;0.20&nbsp;0.03&nbsp;0.02]&nbsp;and&nbsp;we  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;288&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;ask&nbsp;for&nbsp;the&nbsp;image&nbsp;with&nbsp;rank&nbsp;2&nbsp;(ranks&nbsp;starts&nbsp;with&nbsp;zero),&nbsp;for&nbsp;that&nbsp;pixel  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;289&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;the&nbsp;third&nbsp;best&nbsp;choice&nbsp;for&nbsp;cluster&nbsp;index&nbsp;will&nbsp;be&nbsp;selected&nbsp;(0.20)&nbsp;and&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;290&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;centers&nbsp;of&nbsp;the&nbsp;cluster&nbsp;with&nbsp;index&nbsp;3&nbsp;will&nbsp;be&nbsp;used.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;291&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;It&nbsp;is&nbsp;important&nbsp;to&nbsp;notice&nbsp;that&nbsp;this&nbsp;method&nbsp;can&nbsp;be&nbsp;called&nbsp;while&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;292&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;clustering&nbsp;task&nbsp;(method&nbsp;run)&nbsp;is&nbsp;running,&nbsp;and&nbsp;the&nbsp;resulting&nbsp;image&nbsp;is&nbsp;not  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;293&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;guaranteed&nbsp;to&nbsp;be&nbsp;close&nbsp;to&nbsp;a&nbsp;clustered&nbsp;result.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;294&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;rank&nbsp;the&nbsp;desired&nbsp;rank&nbsp;for&nbsp;the&nbsp;classification.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;295&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;a&nbsp;TiledImage&nbsp;with&nbsp;the&nbsp;classification&nbsp;results&nbsp;considering&nbsp;that&nbsp;rank.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;296&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;297&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;TiledImage&nbsp;getRankedImage(<span class="datatype">int</span>&nbsp;rank)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;298&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;299&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;SampleModel&nbsp;for&nbsp;the&nbsp;output&nbsp;data&nbsp;(same&nbsp;number&nbsp;of&nbsp;bands&nbsp;as&nbsp;the&nbsp;input&nbsp;image).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;300&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;SampleModel&nbsp;sampleModel&nbsp;=  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;301&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RasterFactory.createBandedSampleModel(DataBuffer.TYPE_INT,width,height,numBands);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;302&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;WritableRaster&nbsp;using&nbsp;that&nbsp;sample&nbsp;model.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;303&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;304&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RasterFactory.createWritableRaster(sampleModel,<span class="specialword">new</span>&nbsp;Point(0,0));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;305&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;pixel&nbsp;array&nbsp;will&nbsp;contain&nbsp;all&nbsp;bands&nbsp;for&nbsp;a&nbsp;specific&nbsp;x,y.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;306&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;pixelArray&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[numBands];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;307&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;all&nbsp;pixels&nbsp;in&nbsp;the&nbsp;image...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;308&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;309&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;310&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;311&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;class&nbsp;(cluster&nbsp;center)&nbsp;for&nbsp;that&nbsp;pixel&nbsp;with&nbsp;the&nbsp;specified&nbsp;rank.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;312&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;aCluster&nbsp;=&nbsp;getRankedIndex(membership[w][h],rank);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;313&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;the&nbsp;array&nbsp;with&nbsp;that&nbsp;cluster&nbsp;center.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;314&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;band=0;band&lt;numBands;band++)&nbsp;pixelArray[band]&nbsp;=&nbsp;(<span class="datatype">int</span>)clusterCenters[aCluster][band];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;315&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Put&nbsp;it&nbsp;on&nbsp;the&nbsp;raster.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;316&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raster.setPixel(w,h,pixelArray);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;317&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;318&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;raster&nbsp;on&nbsp;the&nbsp;output&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;319&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TiledImage&nbsp;pOutput&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TiledImage(pInput,<span class="specialword">false</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;320&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pOutput.setData(raster);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;321&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;pOutput;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;322&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;323&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;324&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;325&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;return&nbsp;a&nbsp;membership&nbsp;function&nbsp;image,&nbsp;i.e.&nbsp;an&nbsp;image&nbsp;which  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;326&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;pixels&nbsp;correspond&nbsp;to&nbsp;the&nbsp;membership&nbsp;functions&nbsp;for&nbsp;the&nbsp;cluster&nbsp;which&nbsp;is  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;327&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;the&nbsp;Nth&nbsp;best&nbsp;choice&nbsp;for&nbsp;the&nbsp;classification.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;328&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;For&nbsp;example,&nbsp;if&nbsp;the&nbsp;membership&nbsp;functions&nbsp;for&nbsp;a&nbsp;pixel&nbsp;of&nbsp;an&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;329&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;clustered&nbsp;with&nbsp;six&nbsp;clusters&nbsp;are&nbsp;[0.10&nbsp;0.25&nbsp;0.40&nbsp;0.20&nbsp;0.03&nbsp;0.02]&nbsp;and&nbsp;we  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;330&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;ask&nbsp;for&nbsp;the&nbsp;membership&nbsp;function&nbsp;image&nbsp;with&nbsp;rank&nbsp;2&nbsp;(ranks&nbsp;starts&nbsp;with  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;331&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;zero),&nbsp;for&nbsp;that&nbsp;pixel&nbsp;the&nbsp;third&nbsp;best&nbsp;membership&nbsp;function&nbsp;will&nbsp;be  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;332&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;selected&nbsp;(0.20)&nbsp;and&nbsp;used&nbsp;(scaled&nbsp;by&nbsp;255)&nbsp;as&nbsp;the&nbsp;pixel&nbsp;value.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;333&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;It&nbsp;is&nbsp;important&nbsp;to&nbsp;notice&nbsp;that&nbsp;this&nbsp;method&nbsp;can&nbsp;be&nbsp;called&nbsp;while&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;334&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;clustering&nbsp;task&nbsp;(method&nbsp;run)&nbsp;is&nbsp;running,&nbsp;and&nbsp;the&nbsp;resulting&nbsp;image&nbsp;is&nbsp;not  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;335&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;guaranteed&nbsp;to&nbsp;be&nbsp;close&nbsp;to&nbsp;a&nbsp;clustered&nbsp;result.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;336&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;rank&nbsp;the&nbsp;desired&nbsp;rank&nbsp;for&nbsp;the&nbsp;classification.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;337&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;a&nbsp;TiledImage&nbsp;with&nbsp;the&nbsp;membership&nbsp;function&nbsp;value&nbsp;results  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;338&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;considering&nbsp;that&nbsp;rank.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;339&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;340&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;TiledImage&nbsp;getRankedMFImage(<span class="datatype">int</span>&nbsp;rank)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;341&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;342&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;SampleModel&nbsp;for&nbsp;the&nbsp;output&nbsp;data&nbsp;(1&nbsp;band&nbsp;only).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;343&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;SampleModel&nbsp;sampleModel&nbsp;=  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;344&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RasterFactory.createBandedSampleModel(DataBuffer.TYPE_BYTE,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;345&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;width,height,1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;346&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;compatible&nbsp;ColorModel.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;347&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ColorModel&nbsp;colorModel&nbsp;=&nbsp;PlanarImage.createColorModel(sampleModel);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;348&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;WritableRaster.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;349&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;WritableRaster&nbsp;raster&nbsp;=  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;350&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RasterFactory.createWritableRaster(sampleModel,<span class="specialword">new</span>&nbsp;Point(0,0));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;351&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;all&nbsp;pixels&nbsp;in&nbsp;the&nbsp;image...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;352&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;353&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;354&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;355&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;membership&nbsp;function&nbsp;(considering&nbsp;the&nbsp;rank)&nbsp;for&nbsp;that&nbsp;pixel.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;356&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;aCluster&nbsp;=&nbsp;(<span class="datatype">int</span>)(255*getRankedMF(membership[w][h],rank));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;357&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Put&nbsp;it&nbsp;on&nbsp;the&nbsp;raster.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;358&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raster.setPixel(w,h,<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[]{aCluster});  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;359&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;360&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;raster&nbsp;on&nbsp;the&nbsp;output&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;361&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;TiledImage&nbsp;pOutput&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TiledImage(0,0,width,height,0,0,sampleModel,colorModel);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;362&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pOutput.setData(raster);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;363&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;pOutput;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;364&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;365&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;366&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;367&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;ranked&nbsp;index&nbsp;of&nbsp;a&nbsp;cluster&nbsp;from&nbsp;an&nbsp;array  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;368&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;containing&nbsp;the&nbsp;membership&nbsp;functions.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;369&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;For&nbsp;example,&nbsp;if&nbsp;the&nbsp;array&nbsp;contains&nbsp;[0.10&nbsp;0.25&nbsp;0.40&nbsp;0.20&nbsp;0.03&nbsp;0.02]  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;370&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;and&nbsp;we&nbsp;ask&nbsp;for&nbsp;index&nbsp;with&nbsp;rank&nbsp;2&nbsp;(ranks&nbsp;starts&nbsp;with&nbsp;zero),&nbsp;the&nbsp;third  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;371&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;best&nbsp;choice&nbsp;will&nbsp;be&nbsp;selected&nbsp;(0.20)&nbsp;and&nbsp;its&nbsp;index&nbsp;(3)&nbsp;will&nbsp;be&nbsp;returned.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;372&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;data&nbsp;the&nbsp;array&nbsp;with&nbsp;the&nbsp;membership&nbsp;functions.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;373&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;rank&nbsp;the&nbsp;rank&nbsp;of&nbsp;the&nbsp;cluster&nbsp;we&nbsp;want&nbsp;to&nbsp;get.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;374&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;index&nbsp;of&nbsp;the&nbsp;cluster.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;375&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;376&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>&nbsp;getRankedIndex(<span class="datatype">float</span>[]&nbsp;data,<span class="datatype">int</span>&nbsp;rank)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;377&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;378&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;temporary&nbsp;arrays&nbsp;for&nbsp;the&nbsp;indexes&nbsp;and&nbsp;the&nbsp;data.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;379&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;indexes&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[data.length];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;380&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>[]&nbsp;tempData&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">float</span>[data.length];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;381&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;those&nbsp;arrays.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;382&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;indexes.length;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;383&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;384&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;indexes[i]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;385&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tempData[i]&nbsp;=&nbsp;data[i];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;386&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;387&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Sort&nbsp;both&nbsp;arrays&nbsp;together,&nbsp;using&nbsp;data&nbsp;as&nbsp;the&nbsp;sorting&nbsp;key.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;388&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;indexes.length-1;i++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;389&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;j=i;j&lt;indexes.length;j++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;390&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;391&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(tempData[i]&nbsp;&lt;&nbsp;tempData[j])  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;392&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;393&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;tempI=&nbsp;indexes[i];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;394&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;indexes[i]&nbsp;=&nbsp;indexes[j];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;395&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;indexes[j]&nbsp;=&nbsp;tempI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;396&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;tempD&nbsp;=&nbsp;tempData[i];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;397&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tempData[i]&nbsp;=&nbsp;tempData[j];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;398&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tempData[j]&nbsp;=&nbsp;tempD;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;399&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;400&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;401&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Return&nbsp;the&nbsp;cluster&nbsp;index&nbsp;for&nbsp;the&nbsp;rank&nbsp;we&nbsp;want.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;402&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;indexes[rank];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;403&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;404&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;405&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;406&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;ranked&nbsp;membership&nbsp;function&nbsp;of&nbsp;a&nbsp;cluster&nbsp;from&nbsp;an  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;407&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;array&nbsp;containing&nbsp;the&nbsp;membership&nbsp;functions.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;408&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;For&nbsp;example,&nbsp;if&nbsp;the&nbsp;array&nbsp;contains&nbsp;[0.10&nbsp;0.25&nbsp;0.40&nbsp;0.20&nbsp;0.03&nbsp;0.02]&nbsp;and  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;409&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;we&nbsp;ask&nbsp;for&nbsp;the&nbsp;MF&nbsp;with&nbsp;rank&nbsp;2&nbsp;(ranks&nbsp;starts&nbsp;with&nbsp;zero),&nbsp;the&nbsp;third&nbsp;best  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;410&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;choice&nbsp;will&nbsp;be&nbsp;selected&nbsp;(0.20)&nbsp;and&nbsp;returned.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;411&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;data&nbsp;the&nbsp;array&nbsp;with&nbsp;the&nbsp;membership&nbsp;functions.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;412&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;rank&nbsp;the&nbsp;rank&nbsp;of&nbsp;the&nbsp;cluster&nbsp;we&nbsp;want&nbsp;to&nbsp;get.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;413&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;MF&nbsp;with&nbsp;that&nbsp;rank.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;414&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;415&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">float</span>&nbsp;getRankedMF(<span class="datatype">float</span>[]&nbsp;data,<span class="datatype">int</span>&nbsp;rank)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;416&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;417&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;temporary&nbsp;arrays&nbsp;for&nbsp;the&nbsp;indexes&nbsp;and&nbsp;the&nbsp;data.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;418&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>[]&nbsp;indexes&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">int</span>[data.length];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;419&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>[]&nbsp;tempData&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;<span class="datatype">float</span>[data.length];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;420&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Fill&nbsp;those&nbsp;arrays.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;421&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;indexes.length;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;422&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;423&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;indexes[i]&nbsp;=&nbsp;i;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;424&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tempData[i]&nbsp;=&nbsp;data[i];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;425&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;426&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Sort&nbsp;both&nbsp;arrays&nbsp;together,&nbsp;using&nbsp;data&nbsp;as&nbsp;the&nbsp;sorting&nbsp;key.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;427&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;i=0;i&lt;indexes.length-1;i++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;428&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;j=i;j&lt;indexes.length;j++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;429&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;430&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(tempData[i]&nbsp;&lt;&nbsp;tempData[j])  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;431&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;432&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;tempI=&nbsp;indexes[i];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;433&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;indexes[i]&nbsp;=&nbsp;indexes[j];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;434&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;indexes[j]&nbsp;=&nbsp;tempI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;435&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;tempD&nbsp;=&nbsp;tempData[i];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;436&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tempData[i]&nbsp;=&nbsp;tempData[j];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;437&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tempData[j]&nbsp;=&nbsp;tempD;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;438&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;439&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;440&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Return&nbsp;the&nbsp;cluster&nbsp;index&nbsp;for&nbsp;the&nbsp;rank&nbsp;we&nbsp;want.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;441&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;tempData[rank];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;442&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;443&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;444&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;445&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;Partition&nbsp;Coefficient&nbsp;measure&nbsp;of&nbsp;cluster&nbsp;validity  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;446&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;(see&nbsp;Fuzzy&nbsp;Algorithms&nbsp;With&nbsp;Applications&nbsp;to&nbsp;Image&nbsp;Processing&nbsp;and&nbsp;Pattern  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;447&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Recognition,&nbsp;Zheru&nbsp;Chi,&nbsp;Hong&nbsp;Yan,&nbsp;Tuan&nbsp;Pham,&nbsp;World&nbsp;Scientific,&nbsp;pp.&nbsp;91)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;448&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;449&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">double</span>&nbsp;getPartitionCoefficient()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;450&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;451&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;pc&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;452&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;all&nbsp;data&nbsp;values&nbsp;and&nbsp;clusters  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;453&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;454&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;455&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c=0;c&lt;numClusters;c++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;456&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pc&nbsp;+=&nbsp;membership[w][h][c]*membership[w][h][c];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;457&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pc&nbsp;=&nbsp;pc/(height*width);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;458&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;pc;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;459&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;460&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;461&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;462&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;Partition&nbsp;Entropy&nbsp;measure&nbsp;of&nbsp;cluster&nbsp;validity  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;463&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;(see&nbsp;Fuzzy&nbsp;Algorithms&nbsp;With&nbsp;Applications&nbsp;to&nbsp;Image&nbsp;Processing&nbsp;and&nbsp;Pattern  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;464&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Recognition,&nbsp;Zheru&nbsp;Chi,&nbsp;Hong&nbsp;Yan,&nbsp;Tuan&nbsp;Pham,&nbsp;World&nbsp;Scientific,&nbsp;pp.&nbsp;91)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;465&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;466&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">double</span>&nbsp;getPartitionEntropy()  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;467&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;468&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;pe&nbsp;=&nbsp;0;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;469&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;all&nbsp;data&nbsp;values&nbsp;and&nbsp;clusters  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;470&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;471&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;472&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c=0;c&lt;numClusters;c++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;473&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pe&nbsp;+=&nbsp;membership[w][h][c]*Math.log(membership[w][h][c]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;474&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pe&nbsp;=&nbsp;-pe/(height*width);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;475&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;pe;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;476&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;477&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;478&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;479&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;Compactness&nbsp;and&nbsp;Separation&nbsp;measure&nbsp;of&nbsp;cluster&nbsp;validity  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;480&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;(see&nbsp;Fuzzy&nbsp;Algorithms&nbsp;With&nbsp;Applications&nbsp;to&nbsp;Image&nbsp;Processing&nbsp;and&nbsp;Pattern  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;481&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Recognition,&nbsp;Zheru&nbsp;Chi,&nbsp;Hong&nbsp;Yan,&nbsp;Tuan&nbsp;Pham,&nbsp;World&nbsp;Scientific,&nbsp;pp.&nbsp;93)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;482&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;483&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">double</span>&nbsp;getCompactnessAndSeparation()  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;484&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;485&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;cs&nbsp;=&nbsp;0;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;486&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;For&nbsp;all&nbsp;data&nbsp;values&nbsp;and&nbsp;clusters  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;487&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;h=0;h&lt;height;h++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;488&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;w=0;w&lt;width;w++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;489&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;490&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;current&nbsp;pixel&nbsp;data.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;491&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;index&nbsp;=&nbsp;(h*width+w)*numBands;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;492&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;b=0;b&lt;numBands;b++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;493&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aPixel[b]&nbsp;=&nbsp;inputData[index+b];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;494&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c=0;c&lt;numClusters;c++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;495&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;496&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;distance&nbsp;between&nbsp;a&nbsp;pixel&nbsp;and&nbsp;a&nbsp;cluster&nbsp;center.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;497&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;distancePixelToCluster&nbsp;=&nbsp;calcSquaredDistance(aPixel,clusterCenters[c]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;498&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cs&nbsp;+=&nbsp;membership[w][h][c]*membership[w][h][c]*  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;499&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;distancePixelToCluster*distancePixelToCluster;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;500&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;501&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;502&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;cs&nbsp;/=&nbsp;(height*width);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;503&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;minimum&nbsp;distance&nbsp;between&nbsp;ALL&nbsp;clusters  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;504&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;minDist&nbsp;=&nbsp;Float.MAX_VALUE;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;505&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c1=0;c1&lt;numClusters-1;c1++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;506&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c2=c1+1;c2&lt;numClusters;c2++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;507&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;508&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;distance&nbsp;=&nbsp;calcSquaredDistance(clusterCenters[c1],clusterCenters[c2]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;509&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minDist&nbsp;=&nbsp;Math.min(minDist,distance);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;510&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;511&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;cs&nbsp;=&nbsp;cs/(minDist*minDist);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;512&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;cs;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;513&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;514&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;515&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;516&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;calculates&nbsp;the&nbsp;squared&nbsp;distance&nbsp;between&nbsp;two&nbsp;N-dimensional  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;517&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;vectors.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;518&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;a1&nbsp;the&nbsp;first&nbsp;data&nbsp;vector.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;519&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;a2&nbsp;the&nbsp;second&nbsp;data&nbsp;vector.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;520&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;squared&nbsp;distance&nbsp;between&nbsp;those&nbsp;vectors.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;521&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;522&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">float</span>&nbsp;calcSquaredDistance(<span class="datatype">float</span>[]&nbsp;a1,<span class="datatype">float</span>[]&nbsp;a2)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;523&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;524&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;distance&nbsp;=&nbsp;0f;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;525&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;e=0;e&lt;a1.length;e++)&nbsp;distance&nbsp;+=&nbsp;(a1[e]-a2[e])*(a1[e]-a2[e]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;526&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">return</span>&nbsp;(<span class="datatype">float</span>)distance;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;527&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;528&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;529&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>An example of usage of the <tt>FuzzyCMeansImageClustering</tt> class is shown in the <tt>SimpleFuzzyCMeansImageClusteringApp</tt> class below.
This class implements a simple, command-line application that clusters the pixels of an image and gives as a result another image
with the pixels clustered. Each pixel in the output image have the values of the corresponding cluster center.</p> 

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmsimplefuzzycmeansimageclusteringappjava">&nbsp;</a><a href="/web/20100711082647/http://www.lac.inpe.br/JIPCookbook/Code/algorithms/fuzzycmeans/SimpleFuzzyCMeansImageClusteringApp.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>SimpleFuzzyCMeansImageClusteringApp.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;algorithms.fuzzycmeans;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;applications&nbsp;shows&nbsp;a&nbsp;simple&nbsp;usage&nbsp;of&nbsp;the&nbsp;FuzzyCMeansImageClustering  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;class,&nbsp;clustering&nbsp;an&nbsp;image&nbsp;with&nbsp;parameters&nbsp;passed&nbsp;through&nbsp;the&nbsp;command  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;line.&nbsp;It&nbsp;does&nbsp;not&nbsp;use&nbsp;the&nbsp;threaded&nbsp;feature&nbsp;of&nbsp;FuzzyCMeansImageClustering.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;SimpleFuzzyCMeansImageClusteringApp  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point,&nbsp;which&nbsp;will&nbsp;need&nbsp;some&nbsp;parameters,&nbsp;described  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;below,&nbsp;and&nbsp;which&nbsp;must&nbsp;be&nbsp;passed&nbsp;in&nbsp;the&nbsp;command&nbsp;line:  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;-&nbsp;The&nbsp;input&nbsp;file&nbsp;name&nbsp;(string,&nbsp;existing&nbsp;file)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;-&nbsp;The&nbsp;output&nbsp;file&nbsp;name&nbsp;(string,&nbsp;file&nbsp;will&nbsp;be&nbsp;created/overwriten)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;-&nbsp;The&nbsp;desired&nbsp;number&nbsp;of&nbsp;classes&nbsp;(integer)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;-&nbsp;The&nbsp;maximum&nbsp;number&nbsp;of&nbsp;iterations&nbsp;(integer)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;-&nbsp;The&nbsp;fuzziness&nbsp;factor&nbsp;(floating&nbsp;point)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;-&nbsp;The&nbsp;epsilon&nbsp;value&nbsp;(floating&nbsp;point)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(args.length&nbsp;!=&nbsp;6)&nbsp;<span class="comment">//&nbsp;Check&nbsp;command&nbsp;line&nbsp;arguments.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"Usage:&nbsp;java&nbsp;algorithms.fuzzycmeans.SimpleFuzzyCMeansImageClusteringApp&nbsp;"</span>+  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"inputImage&nbsp;outputImage&nbsp;numberOfClusters&nbsp;"</span>+  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"maxIterations&nbsp;fuzziness&nbsp;epsilon"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.exit(0);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Load&nbsp;the&nbsp;input&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;inputImage&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,&nbsp;args[0]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;task.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;FuzzyCMeansImageClustering&nbsp;task&nbsp;=  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;FuzzyCMeansImageClustering(inputImage,  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Integer.parseInt(args[2]),  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Integer.parseInt(args[3]),  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Float.parseFloat(args[4]),  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Float.parseFloat(args[5]));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;task.run();&nbsp;<span class="comment">//&nbsp;Run&nbsp;it&nbsp;(without&nbsp;threading).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;resulting&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;outputImage&nbsp;=&nbsp;task.getRankedImage(0);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Save&nbsp;the&nbsp;image&nbsp;on&nbsp;a&nbsp;file.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JAI.create(<span class="string">"filestore"</span>,outputImage,args[1],<span class="string">"TIFF"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>Some results of the <tt>SimpleFuzzyCMeansImageClusteringApp</tt> application are shown below. All clustering results were 
obtained with 100 maximum iterations, fuzziness factor=2 and  <i>&#x03B5;</i>=0.0001. The resulting images were defuzzified using the "winning" 
cluster approach described above.</p> 
<table class="simpletable">
  <tr>
    <td class="simpletable legend threecolumns">
    <a name="algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmoriginalimage">&nbsp;</a><img class="figure" src="Resources/FuzzyCMeans/submori.png" border=0 alt="Original image."><p class="caption">Original image.<br>
       This image is a region of one of those listed in the <a href="9100-datasets-colorimages.jsp">Color Images</a> chapter.
    </p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend threecolumns">
    <a name="algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmclusteredwith2clusters">&nbsp;</a><img class="figure" src="Resources/FuzzyCMeans/submori2.png" border=0 alt="Clustered with 2 clusters."><p class="caption">Clustered with 2 clusters.<br>
    </p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend threecolumns">
    <a name="algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmclusteredwith3clusters">&nbsp;</a><img class="figure" src="Resources/FuzzyCMeans/submori3.png" border=0 alt="Clustered with 3 clusters."><p class="caption">Clustered with 3 clusters.<br>
    </p>
<div class="spacer">&nbsp;</div>

    </td>
  </tr>
  <tr>
    <td class="simpletable legend threecolumns">
    <a name="algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmclusteredwith5clusters">&nbsp;</a><img class="figure" src="Resources/FuzzyCMeans/submori5.png" border=0 alt="Clustered with 5 clusters."><p class="caption">Clustered with 5 clusters.<br>
    </p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend threecolumns">
    <a name="algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmclusteredwith8clusters">&nbsp;</a><img class="figure" src="Resources/FuzzyCMeans/submori8.png" border=0 alt="Clustered with 8 clusters."><p class="caption">Clustered with 8 clusters.<br>
    </p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend threecolumns">
    <a name="algorithmsfuzzycmeansclusteringthefuzzycmeansalgorithmclusteredwith12clusters">&nbsp;</a><img class="figure" src="Resources/FuzzyCMeans/submori12.png" border=0 alt="Clustered with 12 clusters."><p class="caption">Clustered with 12 clusters.<br>
    </p>
<div class="spacer">&nbsp;</div>

    </td>
  </tr>
</table>





<p class="section"><a name="algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithm"></a>Exploring the results of the algorithm</p>

<p>As mentioned above, one of the outputs of the algorithm is the fuzzy membership table, which contains the membership value for each pixel in each cluster.
This table can be explored to get additional results when using the algorithm, which will be explained in this section.</p>

<p class="subsection"><a name="algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmrankedresults"></a>Ranked Results</p>


<p>Let's consider the table below, which shows an example with two pixels and five clusters and their fuzzy membership values. 
The algorithm will, at one point, defuzzify the results by selecting the cluster for which the membership function is highest --
in this example, pixel 1 will be assigned to cluster 3 and pixel 2, to cluster 2.</p>

<center>
<table class="centertable simpleborder">
<tr class="simpleborder">
  <th>&nbsp;</th>
  <th class="simpleborder">FM<span class="sub">1</span></th>
  <th class="simpleborder">FM<span class="sub">2</span></th>
  <th class="simpleborder">FM<span class="sub">3</span></th>
  <th class="simpleborder">FM<span class="sub">4</span></th>
  <th class="simpleborder">FM<span class="sub">5</span></th>
</tr>
<tr class="simpleborder">
  <td class="simpleborder">Pixel 1</td>
  <td class="simpleborder"><tt>0.01</tt></td>
  <td class="simpleborder"><tt>0.03</tt></td>
  <td class="simpleborder"><tt>0.72</tt></td>
  <td class="simpleborder"><tt>0.20</tt></td>
  <td class="simpleborder"><tt>0.04</tt></td>
</tr>
<tr class="simpleborder">
  <td class="simpleborder">Pixel 2</td>
  <td class="simpleborder"><tt>0.20</tt></td>
  <td class="simpleborder"><tt>0.31</tt></td>
  <td class="simpleborder"><tt>0.06</tt></td>
  <td class="simpleborder"><tt>0.24</tt></td>
  <td class="simpleborder"><tt>0.19</tt></td>
</tr>
</table>
</center>

<p>While it seems that the choice of cluster 3 for pixel 1 is the best one, 
the assignment of pixel 2 to cluster 2 can be questioned -- the defuzzification step of the algorithm simply chose the entry on
the fuzzy membership table with the highest value, without considering alternatives.</p>

<p>The fuzzy membership table values can be used to determine other possible assignments to pixels. Instead of the highest entry
on the membership table for a pixel we can choose the <i>n-</i>th best entry, getting alternative assigments which can be used in
further analysis of the results.</p>

<p>The method <tt>getRankedImage</tt> on class <tt>FuzzyCMeansImageClustering</tt> can be used to get alternative assignments as images, where each pixel will be assigned to the 
<i>n-</i>th highest membership table value, with <i>n</i> passed as a parameter to the method.</p>





<p class="subsection"><a name="algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmmaximummembershipfunction"></a>Maximum membership function</p>

<p>Let's consider again the value which was chosen as the highest in the membership function table. 
We can consider it as a very simple measure of certainty of the assignment -- in the example before, pixel 1 will have a higher certainty of
assignment than pixel 2.</p>

<p>The implementation of the Fuzzy C-Means algorithm in this chapter allows the retrieval of the value used for assignment and the creation of a 
synthetic image with those values. In that image, high values (represented by light shades of gray) indicate that higher membership values were
used in the assignment, while low values (dark shades of gray) indicates that lower membership values were used.</p> 

<p>The method <tt>getRankedMFImage</tt> on class <tt>FuzzyCMeansImageClustering</tt> can be used to get the <i>n-</i>th highest
values used in cluster assignment, with <i>n</i> passed as a parameter to the method. Usually only the highest value is of interest. </p>



<p class="subsection"><a name="algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmexamples"></a>Examples</p>

<p>To demonstrate the use of these additional results we will use another, more complex, class which uses the 
algorithm implemented in the class <tt>FuzzyCMeansImageClustering</tt>. The class <tt>FuzzyCMeansImageClusteringApp</tt> 
contains a graphical user interface for choosing the parameters and can display some additional results of the algorithm. This 
class is shown below.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmfuzzycmeansimageclusteringappjava">&nbsp;</a><a href="/web/20100711082647/http://www.lac.inpe.br/JIPCookbook/Code/algorithms/fuzzycmeans/FuzzyCMeansImageClusteringApp.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>FuzzyCMeansImageClusteringApp.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;algorithms.fuzzycmeans;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.BorderLayout;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Color;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Component;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Dimension;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Font;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.ActionEvent;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.event.ActionListener;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.Hashtable;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.TiledImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.BorderFactory;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.Box;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JButton;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JLabel;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JProgressBar;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JSlider;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.Timer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;display.multiple.DisplayFourSynchronizedImages;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;applications&nbsp;shows&nbsp;a&nbsp;rather&nbsp;complex&nbsp;usage&nbsp;of&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;FuzzyCMeansImageClustering&nbsp;class,&nbsp;creating&nbsp;a&nbsp;complex&nbsp;user&nbsp;interface&nbsp;that  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;allows&nbsp;the&nbsp;user&nbsp;to&nbsp;select&nbsp;some&nbsp;clustering&nbsp;parameters&nbsp;and&nbsp;rerun&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;cluster&nbsp;task.&nbsp;The&nbsp;original&nbsp;and&nbsp;clustered&nbsp;image&nbsp;are&nbsp;shown,&nbsp;side-by-side  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;and&nbsp;synchronized.&nbsp;Input&nbsp;data&nbsp;is&nbsp;read&nbsp;from&nbsp;a&nbsp;file&nbsp;and&nbsp;at&nbsp;the&nbsp;end&nbsp;of&nbsp;the  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;task&nbsp;the&nbsp;different-ordered&nbsp;clustering&nbsp;results&nbsp;can&nbsp;be&nbsp;displayed.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;FuzzyCMeansImageClusteringApp&nbsp;<span class="classword">extends</span>&nbsp;JFrame  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="classword">implements</span>&nbsp;ActionListener  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;input&nbsp;and&nbsp;output&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;PlanarImage&nbsp;input,fuzzy,output0,output1;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;display&nbsp;for&nbsp;the&nbsp;input&nbsp;and&nbsp;output&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;DisplayFourSynchronizedImages&nbsp;display;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;start&nbsp;(clustering)&nbsp;button.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JButton&nbsp;start;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;JSlider&nbsp;for&nbsp;the&nbsp;number&nbsp;of&nbsp;clusters.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JSlider&nbsp;numClustersSlider;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;JSlider&nbsp;of&nbsp;the&nbsp;fuzziness&nbsp;factor.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JSlider&nbsp;fuzzinessSlider;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;possible&nbsp;values&nbsp;for&nbsp;the&nbsp;fuzziness&nbsp;factor.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">float</span>[]&nbsp;fuzzinessValues&nbsp;=&nbsp;{1,1.2f,1.5f,2,2.5f,3,5,10,25};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;JSlider&nbsp;of&nbsp;the&nbsp;maximum&nbsp;number&nbsp;of&nbsp;iterations.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JSlider&nbsp;maxIterationsSlider;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;possible&nbsp;values&nbsp;for&nbsp;the&nbsp;maximum&nbsp;number&nbsp;of&nbsp;iterations.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">int</span>[]&nbsp;maxIterationsValues&nbsp;=&nbsp;{2,5,10,20,50,100,200,500,1000};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;JSlider&nbsp;of&nbsp;the&nbsp;final&nbsp;epsilon&nbsp;value.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JSlider&nbsp;epsilonSlider;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;possible&nbsp;values&nbsp;for&nbsp;the&nbsp;epsilon&nbsp;value.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="datatype">float</span>[]&nbsp;epsilonValues&nbsp;=&nbsp;{1f,0.1f,0.01f,0.001f,0.0001f,0.00001f};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;smaller&nbsp;font&nbsp;for&nbsp;the&nbsp;sliders.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;Font&nbsp;labelsFont&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Font(<span class="string">"Dialog"</span>,0,9);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;progress&nbsp;bar&nbsp;to&nbsp;indicate&nbsp;the&nbsp;state&nbsp;of&nbsp;the&nbsp;task.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JProgressBar&nbsp;progressBar;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;JLabel&nbsp;with&nbsp;information&nbsp;about&nbsp;the&nbsp;process.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;JLabel&nbsp;infoLabel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;timer,&nbsp;which&nbsp;will&nbsp;act&nbsp;on&nbsp;the&nbsp;user&nbsp;interface.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;Timer&nbsp;monitor;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;clustering&nbsp;task&nbsp;instance.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;FuzzyCMeansImageClustering&nbsp;task;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;constructor&nbsp;for&nbsp;the&nbsp;application,&nbsp;which&nbsp;will&nbsp;set&nbsp;its&nbsp;user&nbsp;interface.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;ifile&nbsp;the&nbsp;input&nbsp;file&nbsp;name.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@param&nbsp;ofile&nbsp;the&nbsp;output&nbsp;file&nbsp;name.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;FuzzyCMeansImageClusteringApp(String&nbsp;ifile)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">super</span>(<span class="string">"Fuzzy&nbsp;C-Means&nbsp;Clustering&nbsp;Application"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Read&nbsp;the&nbsp;input&nbsp;image&nbsp;from&nbsp;the&nbsp;file.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;input&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,&nbsp;ifile);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;compatible&nbsp;(empty)&nbsp;output&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;fuzzy&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TiledImage(input,<span class="specialword">false</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;output0&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TiledImage(input,<span class="specialword">false</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;output1&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;TiledImage(input,<span class="specialword">false</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;an&nbsp;instance&nbsp;of&nbsp;DisplayTwoSynchronizedImages&nbsp;and&nbsp;add&nbsp;it&nbsp;to&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;center&nbsp;of&nbsp;the&nbsp;JFrame.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;display&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayFourSynchronizedImages(input,fuzzy,output0,output1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;getContentPane().add(display,BorderLayout.CENTER);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Let's&nbsp;create&nbsp;the&nbsp;start&nbsp;button&nbsp;and&nbsp;set&nbsp;its&nbsp;maximum&nbsp;size&nbsp;so&nbsp;it&nbsp;will  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;appear&nbsp;wide&nbsp;enough&nbsp;in&nbsp;the&nbsp;control&nbsp;panel.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;start&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JButton(<span class="string">"Start&nbsp;Clustering"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;start.addActionListener(<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;start.setAlignmentX(Component.CENTER_ALIGNMENT);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;start.setMaximumSize(<span class="specialword">new</span>&nbsp;Dimension(250,25));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;JSlider&nbsp;for&nbsp;the&nbsp;number&nbsp;of&nbsp;clusters.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;numClustersSlider&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JSlider(2,30,6);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Hashtable&lt;Integer,JLabel&gt;&nbsp;labels&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Hashtable&lt;Integer,JLabel&gt;();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;label=2;label&lt;=30;label+=4)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JLabel&nbsp;aLabel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JLabel(<span class="string">""</span>+label);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aLabel.setFont(labelsFont);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;labels.put(<span class="specialword">new</span>&nbsp;Integer(label),aLabel);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;numClustersSlider.setMajorTickSpacing(4);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;numClustersSlider.setMinorTickSpacing(1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;numClustersSlider.setSnapToTicks(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;numClustersSlider.setPaintTicks(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;numClustersSlider.setLabelTable(labels);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;numClustersSlider.setPaintLabels(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;numClustersSlider.setBorder(  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BorderFactory.createTitledBorder(  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BorderFactory.createLineBorder(Color.BLUE),<span class="string">"Number&nbsp;of&nbsp;clusters"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;JSlider&nbsp;for&nbsp;the&nbsp;fuzziness&nbsp;factor.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;fuzzinessSlider&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JSlider(0,fuzzinessValues.length-1,3);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;labels&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Hashtable&lt;Integer,JLabel&gt;();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;label=0;label&lt;fuzzinessValues.length;label++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JLabel&nbsp;aLabel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JLabel(<span class="string">""</span>+fuzzinessValues[label]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aLabel.setFont(labelsFont);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;labels.put(<span class="specialword">new</span>&nbsp;Integer(label),aLabel);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;fuzzinessSlider.setMajorTickSpacing(1);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;fuzzinessSlider.setSnapToTicks(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;fuzzinessSlider.setPaintTicks(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;fuzzinessSlider.setLabelTable(labels);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;fuzzinessSlider.setPaintLabels(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;fuzzinessSlider.setBorder(  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BorderFactory.createTitledBorder(  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BorderFactory.createLineBorder(Color.BLUE),<span class="string">"Fuzziness"</span>));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;JSlider&nbsp;for&nbsp;the&nbsp;maximum&nbsp;number&nbsp;of&nbsp;iterations.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;maxIterationsSlider&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JSlider(0,maxIterationsValues.length-1,5);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;138&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;labels&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Hashtable&lt;Integer,JLabel&gt;();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;139&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;label=0;label&lt;maxIterationsValues.length;label++)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;140&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;141&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JLabel&nbsp;aLabel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JLabel(<span class="string">""</span>+maxIterationsValues[label]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;142&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aLabel.setFont(labelsFont);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;143&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;labels.put(<span class="specialword">new</span>&nbsp;Integer(label),aLabel);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;144&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;145&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;maxIterationsSlider.setMajorTickSpacing(1);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;146&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;maxIterationsSlider.setSnapToTicks(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;147&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;maxIterationsSlider.setPaintTicks(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;148&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;maxIterationsSlider.setLabelTable(labels);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;149&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;maxIterationsSlider.setPaintLabels(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;150&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;maxIterationsSlider.setBorder(  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;151&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BorderFactory.createTitledBorder(  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;152&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BorderFactory.createLineBorder(Color.BLUE),<span class="string">"Max.&nbsp;iterations&nbsp;(approx.)"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;153&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;JSlider&nbsp;for&nbsp;the&nbsp;epsilon&nbsp;values.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;154&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;epsilonSlider&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JSlider(0,epsilonValues.length-1,4);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;155&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;labels&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Hashtable&lt;Integer,JLabel&gt;();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;156&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;label=0;label&lt;epsilonValues.length;label++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;157&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;158&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JLabel&nbsp;aLabel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JLabel(<span class="string">""</span>+epsilonValues[label]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;159&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aLabel.setFont(labelsFont);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;160&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;labels.put(<span class="specialword">new</span>&nbsp;Integer(label),aLabel);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;161&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;162&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;epsilonSlider.setMajorTickSpacing(1);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;163&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;epsilonSlider.setSnapToTicks(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;164&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;epsilonSlider.setPaintTicks(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;165&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;epsilonSlider.setLabelTable(labels);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;166&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;epsilonSlider.setPaintLabels(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;167&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;epsilonSlider.setBorder(  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;168&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BorderFactory.createTitledBorder(  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;169&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BorderFactory.createLineBorder(Color.BLUE),<span class="string">"Epsilon"</span>));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;170&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;A&nbsp;JProgressBar&nbsp;for&nbsp;the&nbsp;progress&nbsp;bar&nbsp;(duh!).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;171&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;progressBar&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JProgressBar();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;172&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;progressBar.setStringPainted(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;173&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;information&nbsp;label.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;174&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;infoLabel&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JLabel(<span class="string">"&nbsp;"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;175&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;infoLabel.setAlignmentX(Component.CENTER_ALIGNMENT);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;176&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;infoLabel.setPreferredSize(<span class="specialword">new</span>&nbsp;Dimension(250,25));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;177&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;the&nbsp;control&nbsp;components&nbsp;to&nbsp;the&nbsp;control&nbsp;panel.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;178&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Box&nbsp;controlPanel&nbsp;=&nbsp;Box.createVerticalBox();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;179&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;controlPanel.add(numClustersSlider);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;180&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;controlPanel.add(Box.createRigidArea(<span class="specialword">new</span>&nbsp;Dimension(0,10)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;181&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;controlPanel.add(fuzzinessSlider);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;182&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;controlPanel.add(Box.createRigidArea(<span class="specialword">new</span>&nbsp;Dimension(0,10)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;183&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;controlPanel.add(maxIterationsSlider);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;184&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;controlPanel.add(Box.createRigidArea(<span class="specialword">new</span>&nbsp;Dimension(0,10)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;185&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;controlPanel.add(epsilonSlider);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;186&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;controlPanel.add(Box.createRigidArea(<span class="specialword">new</span>&nbsp;Dimension(0,10)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;187&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;controlPanel.add(start);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;188&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;controlPanel.add(Box.createRigidArea(<span class="specialword">new</span>&nbsp;Dimension(0,10)));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;189&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;controlPanel.add(progressBar);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;190&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;controlPanel.add(infoLabel);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;191&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;the&nbsp;control&nbsp;panel&nbsp;to&nbsp;the&nbsp;content&nbsp;pane.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;192&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;getContentPane().add(controlPanel,BorderLayout.EAST);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;193&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;timer&nbsp;monitor,&nbsp;which&nbsp;will&nbsp;cause&nbsp;an&nbsp;ActionEvent&nbsp;every&nbsp;2&nbsp;seconds.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;194&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;monitor&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;Timer(2000,<span class="specialword">this</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;195&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;closing&nbsp;operation&nbsp;so&nbsp;the&nbsp;application&nbsp;is&nbsp;finished.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;196&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;197&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pack();&nbsp;<span class="comment">//&nbsp;Adjust&nbsp;the&nbsp;frame&nbsp;size&nbsp;using&nbsp;preferred&nbsp;dimensions.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;198&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;setVisible(<span class="specialword">true</span>);&nbsp;<span class="comment">//&nbsp;Show&nbsp;the&nbsp;frame.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;199&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;200&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;201&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;202&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;will&nbsp;be&nbsp;called&nbsp;when&nbsp;an&nbsp;action&nbsp;event&nbsp;occurs.&nbsp;In&nbsp;this&nbsp;class,  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;203&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;it&nbsp;either&nbsp;means&nbsp;that&nbsp;the&nbsp;user&nbsp;has&nbsp;clicked&nbsp;on&nbsp;the&nbsp;Start&nbsp;button&nbsp;or&nbsp;that  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;204&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;the&nbsp;timer&nbsp;has&nbsp;fired.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;205&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;206&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="datatype">void</span>&nbsp;actionPerformed(ActionEvent&nbsp;e)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;207&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;208&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;user&nbsp;clicks&nbsp;on&nbsp;the&nbsp;start&nbsp;button...  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;209&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;start)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;210&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;211&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Start&nbsp;the&nbsp;monitor,&nbsp;which&nbsp;will&nbsp;cause&nbsp;another&nbsp;action&nbsp;event&nbsp;every  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;212&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;two&nbsp;seconds.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;213&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;monitor.start();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;214&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Gets&nbsp;the&nbsp;clustering&nbsp;task&nbsp;arguments&nbsp;from&nbsp;the&nbsp;user&nbsp;interface.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;215&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;nClusters&nbsp;=&nbsp;numClustersSlider.getValue();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;216&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;fuzziness&nbsp;=&nbsp;fuzzinessValues[fuzzinessSlider.getValue()];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;217&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;maxIter&nbsp;=&nbsp;maxIterationsValues[maxIterationsSlider.getValue()];  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;218&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">float</span>&nbsp;epsilon&nbsp;=&nbsp;epsilonValues[epsilonSlider.getValue()];  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;219&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;clustering&nbsp;task&nbsp;and&nbsp;starts&nbsp;it.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;220&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;task&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;FuzzyCMeansImageClustering(input,nClusters,maxIter,fuzziness,epsilon);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;221&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;progressBar.setMaximum(100);&nbsp;<span class="comment">//&nbsp;maximum&nbsp;value&nbsp;is&nbsp;100&nbsp;percent.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;222&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Start&nbsp;the&nbsp;clustering&nbsp;task.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;223&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;task.start();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;224&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Turn&nbsp;"off"&nbsp;the&nbsp;Start&nbsp;button.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;225&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start.setEnabled(<span class="specialword">false</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;226&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start.setText(<span class="string">"Clustering,&nbsp;please&nbsp;wait..."</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;227&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Turn&nbsp;"off"&nbsp;some&nbsp;UI&nbsp;components.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;228&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;numClustersSlider.setEnabled(<span class="specialword">false</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;229&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;maxIterationsSlider.setEnabled(<span class="specialword">false</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;230&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fuzzinessSlider.setEnabled(<span class="specialword">false</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;231&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;epsilonSlider.setEnabled(<span class="specialword">false</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;232&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;233&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;This&nbsp;will&nbsp;happen&nbsp;when&nbsp;the&nbsp;monitor&nbsp;fires.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;234&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">else</span>&nbsp;<span class="controlword">if</span>&nbsp;(e.getSource()&nbsp;==&nbsp;monitor)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;235&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;236&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Change&nbsp;the&nbsp;images&nbsp;on&nbsp;the&nbsp;display&nbsp;to&nbsp;be&nbsp;the&nbsp;resulting&nbsp;images&nbsp;so&nbsp;far.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;237&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;display.setImage2(task.getRankedMFImage(0));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;238&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;display.setImage3(task.getRankedImage(0));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;239&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;display.setImage4(task.getRankedImage(1));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;240&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Which&nbsp;percentage&nbsp;of&nbsp;the&nbsp;task&nbsp;is&nbsp;completed&nbsp;?  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;241&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;percentage&nbsp;=&nbsp;(<span class="datatype">int</span>)(100*task.getPosition()/task.getSize());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;242&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;progressBar.setValue(percentage);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;243&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Update&nbsp;the&nbsp;information&nbsp;about&nbsp;the&nbsp;task.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;244&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;infoLabel.setText(<span class="string">"Step&nbsp;"</span>+task.getPosition()+<span class="string">"&nbsp;of&nbsp;"</span>+task.getSize());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;245&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;If&nbsp;the&nbsp;task&nbsp;has&nbsp;finished...  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;246&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(task.isFinished())  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;247&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;248&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Enable&nbsp;the&nbsp;start&nbsp;button&nbsp;and&nbsp;the&nbsp;cluster&nbsp;number/max&nbsp;iterations&nbsp;selection&nbsp;slider.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;249&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start.setEnabled(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;250&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start.setText(<span class="string">"Start&nbsp;clustering"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;251&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;numClustersSlider.setEnabled(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;252&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;maxIterationsSlider.setEnabled(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;253&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fuzzinessSlider.setEnabled(<span class="specialword">true</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;254&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;epsilonSlider.setEnabled(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;255&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Stops&nbsp;the&nbsp;monitor.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;256&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;monitor.stop();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;257&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;This&nbsp;block&nbsp;stores&nbsp;the&nbsp;ranked&nbsp;MF&nbsp;image&nbsp;and/or&nbsp;the&nbsp;first&nbsp;and&nbsp;second&nbsp;ranked&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;258&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">try</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;259&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;260&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(task.getRankedMFImage(0),<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"ranked0.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;261&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(task.getRankedImage(0),<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"res1.png"</span>));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;262&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ImageIO.write(task.getRankedImage(1),<span class="string">"PNG"</span>,<span class="specialword">new</span>&nbsp;File(<span class="string">"res2.png"</span>));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;263&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;264&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">catch</span>&nbsp;(IOException&nbsp;e1)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;265&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;266&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e1.printStackTrace();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;267&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;268&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;269&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;270&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;271&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;272&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;273&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point,&nbsp;which&nbsp;will&nbsp;need&nbsp;an&nbsp;input&nbsp;image&nbsp;file&nbsp;name  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;274&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;and&nbsp;an&nbsp;output&nbsp;image&nbsp;file&nbsp;name.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;275&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;276&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;277&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;278&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;FuzzyCMeansImageClusteringApp&nbsp;a&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;FuzzyCMeansImageClusteringApp(args[0]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;279&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;280&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;281&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>A screenshot of the <tt>FuzzyCMeansImageClusteringApp</tt> is shown below. 
Four images are displayed on it: the upper left is the original image, the upper right is the image corresponding to the
best (highest) membership function of each pixel, the bottom right image is the clustered result and the bottom left 
contains the second best choices for each pixel. The application control panel is shown in the right side.</p>

<a name="algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmscreenshotofthettfuzzycmeansimageclusteringappttapplication">&nbsp;</a><a href="Resources/Screenshots/fcmapp.png"><img class="figure" src="Resources/Screenshots/fcmapp_icon.jpg" border=0 alt="Screenshot of the <tt>FuzzyCMeansImageClusteringApp</tt> application."></a>
<p class="caption">Screenshot of the <tt>FuzzyCMeansImageClusteringApp</tt> application.<br>Click on the icon for a larger image.</p>
<div class="spacer">&nbsp;</div>






<p class="subsection"><a name="algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmclustervaliditymeasures"></a>Cluster validity measures</p>


<p>Usually the number of clusters for the Fuzzy C-Means algorithm (and for other clustering algorithms) is determined
empirically. We can use a cluster validity measure to verify, for two or more clustering results, which was the best (according to that
measure, which may or may not be acceptable for the application).</p>

<p>This implementation of the Fuzzy C-Means algorithm contains methods to calculate three cluster validity measures: 
Partition Coefficient, Partition Entropy and Compactness and Separation.
These measures are described in the book <i>Fuzzy Algorithms: With Applications for Image Processing and Pattern Recognition</i> (see the <a href="#algorithmsfuzzycmeansclusteringreferences">references</a> below).
The best <i>C</i> is the one that maximizes the Partition Coefficient and minimizes the Partition Entropy and Compactness and Separation measures,
taken from a range of possible <I>C</I> values.</p>

<p>To exemplify these validity measures we've used the <tt>AutoFuzzyCMeansClustering</tt> application, shown below, which uses an input image and
range of number of clusters to execute the clustering algorithm, printing a table with the validity measures.</p> 

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmautofuzzycmeansimageclusteringappjava">&nbsp;</a><a href="/web/20100711082647/http://www.lac.inpe.br/JIPCookbook/Code/algorithms/fuzzycmeans/AutoFuzzyCMeansImageClusteringApp.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>AutoFuzzyCMeansImageClusteringApp.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;algorithms.fuzzycmeans;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;demonstrates&nbsp;the&nbsp;usage&nbsp;of&nbsp;the&nbsp;cluster&nbsp;validity&nbsp;measures&nbsp;that  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;can&nbsp;be&nbsp;calculated&nbsp;by&nbsp;the&nbsp;FuzzyCMeansImageClustering&nbsp;algorithm.&nbsp;It&nbsp;attempts&nbsp;to  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;find&nbsp;an&nbsp;optimal&nbsp;number&nbsp;of&nbsp;clusters&nbsp;for&nbsp;a&nbsp;particular&nbsp;image.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;AutoFuzzyCMeansImageClusteringApp  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(args.length&nbsp;!=&nbsp;3)&nbsp;<span class="comment">//&nbsp;Check&nbsp;command&nbsp;line&nbsp;arguments.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.err.println(<span class="string">"Usage:&nbsp;java&nbsp;algorithms.fuzzycmeans.AutoFuzzyCMeansImageClusteringApp&nbsp;"</span>+  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"inputImage&nbsp;minC&nbsp;maxC"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.exit(0);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Load&nbsp;the&nbsp;input&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;inputImage&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,&nbsp;args[0]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;minC&nbsp;=&nbsp;Integer.parseInt(args[1]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;maxC&nbsp;=&nbsp;Integer.parseInt(args[2]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Error&nbsp;messages&nbsp;due&nbsp;to&nbsp;non-valid&nbsp;values&nbsp;are&nbsp;left&nbsp;to&nbsp;the&nbsp;reader.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;several&nbsp;tasks,&nbsp;each&nbsp;with&nbsp;a&nbsp;different&nbsp;number&nbsp;of&nbsp;clusters.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;partitionCoefficient,partitionEntropy,compactnessAndSeparation;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;bestPartitionCoefficient&nbsp;=&nbsp;Double.MIN_VALUE;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;bestPartitionEntropy&nbsp;=&nbsp;Double.MAX_VALUE;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">double</span>&nbsp;bestCompactnessAndSeparation&nbsp;=&nbsp;Double.MAX_VALUE;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;bestByPartitionCoefficient=1,bestByPartitionEntropy=1,bestByCompactnessAndSeparation=1;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(<span class="string">"+----------+-----------------------+-------------------+----------------------------+"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(<span class="string">"|&nbsp;Clusters&nbsp;|&nbsp;Partition&nbsp;Coefficient&nbsp;|&nbsp;Partition&nbsp;Entropy&nbsp;|&nbsp;Compactness&nbsp;and&nbsp;Separation&nbsp;|"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(<span class="string">"+----------+-----------------------+-------------------+----------------------------+"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">for</span>(<span class="datatype">int</span>&nbsp;c=minC;c&lt;=maxC;c++)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;task.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FuzzyCMeansImageClustering&nbsp;task&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;FuzzyCMeansImageClustering(inputImage,c,100,2,0.005);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;task.run();&nbsp;<span class="comment">//&nbsp;Run&nbsp;it&nbsp;(without&nbsp;threading).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;resulting&nbsp;validity&nbsp;measures.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;partitionCoefficient&nbsp;=&nbsp;task.getPartitionCoefficient();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;partitionEntropy&nbsp;=&nbsp;task.getPartitionEntropy();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;compactnessAndSeparation&nbsp;=&nbsp;task.getCompactnessAndSeparation();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;See&nbsp;which&nbsp;is&nbsp;the&nbsp;best&nbsp;so&nbsp;far.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(partitionCoefficient&nbsp;&gt;&nbsp;bestPartitionCoefficient)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bestPartitionCoefficient&nbsp;=&nbsp;partitionCoefficient;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bestByPartitionCoefficient&nbsp;=&nbsp;c;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(partitionEntropy&nbsp;&lt;&nbsp;bestPartitionEntropy)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bestPartitionEntropy&nbsp;=&nbsp;partitionEntropy;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bestByPartitionEntropy&nbsp;=&nbsp;c;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(compactnessAndSeparation&nbsp;&lt;&nbsp;bestCompactnessAndSeparation)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bestCompactnessAndSeparation&nbsp;=&nbsp;compactnessAndSeparation;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bestByCompactnessAndSeparation&nbsp;=&nbsp;c;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Print&nbsp;a&nbsp;simple&nbsp;report.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(<span class="string">"|&nbsp;&nbsp;&nbsp;&nbsp;"</span>+String.format(<span class="string">"%2d"</span>,<span class="specialword">new</span>&nbsp;Object[]{c})+  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"&nbsp;&nbsp;&nbsp;&nbsp;|"</span>+String.format(<span class="string">"%23.6f|%19.6f|%28.6f|"</span>,  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="specialword">new</span>&nbsp;Object[]{partitionCoefficient,partitionEntropy,compactnessAndSeparation}));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(<span class="string">"+----------+-----------------------+-------------------+----------------------------+"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(<span class="string">"Best&nbsp;number&nbsp;of&nbsp;clusters:"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(<span class="string">"&nbsp;&nbsp;according&nbsp;to&nbsp;Partition&nbsp;Coefficient:"</span>+bestByPartitionCoefficient);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(<span class="string">"&nbsp;&nbsp;according&nbsp;to&nbsp;Partition&nbsp;Entropy:"</span>+bestByPartitionEntropy);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(<span class="string">"&nbsp;&nbsp;according&nbsp;to&nbsp;Compactness&nbsp;and&nbsp;Separation:"</span>+bestByCompactnessAndSeparation);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>For the first test of the validity measures we will use some images with more or less known ideal number of clusters. Those images are from
chapters <a href="9100-datasets-colorimages.jsp">Color Images</a> and <a href="9180-datasets-colorimages-synthetic.jsp">Artificial (generated) images</a>, 
scaled to reduce the processing time. The scaled images, results and comments are shown below. 
Values shown in bold are the best values for each measure.
</p>

<table class="centertable simpleborder">
<tr>
<td>&nbsp;</td>
  <td class="top">
<a name="algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmimagett4colorpatternorigttusedtocalculateclustervalidity">&nbsp;</a><img class="figure" src="Resources/FuzzyCMeans/4colorpattern_orig.png" border=0 alt="Image <tt>4colorpattern_orig</tt>, used to calculate cluster validity."><p class="caption">Image <tt>4colorpattern_orig</tt>, used to calculate cluster validity.</p>
<div class="spacer">&nbsp;</div>

  </td>
<td>&nbsp;</td>
<td>
<table class="simpleborder centertable">
<tr class="simpleborder"><th class="simpleborder">Clusters</th><th class="simpleborder">Partition Coefficient</th><th class="simpleborder">Partition Entropy</th><th class="simpleborder">Compactness and Separation</th></tr>
<tr><td class="number">     2    </td><td class="number">               0.684762</td><td class="number">           0.482908</td><td class="number">                    0.163202</td></tr>
<tr><td class="number">     3    </td><td class="number">               0.693007</td><td class="number">           0.540530</td><td class="number">                    0.139077</td></tr>
<tr><td class="number">     4    </td><td class="number">               0.831224</td><td class="number">           0.334867</td><td class="number">                    0.048567</td></tr>
<tr><td class="number">     5    </td><td class="number">               0.974871</td><td class="number">           0.051548</td><td class="number bold">                    0.001473</td></tr>
<tr><td class="number">     6    </td><td class="number">               0.973797</td><td class="number">           0.053866</td><td class="number">                    0.025937</td></tr>
<tr><td class="number">     7    </td><td class="number">               0.975378</td><td class="number">           0.052516</td><td class="number">                    0.029688</td></tr>
<tr><td class="number">     8    </td><td class="number">               0.977623</td><td class="number">           0.050328</td><td class="number">                    0.025124</td></tr>
<tr><td class="number">     9    </td><td class="number">               0.981493</td><td class="number">           0.043367</td><td class="number">                    0.031481</td></tr>
<tr><td class="number">    10    </td><td class="number bold">               0.985552</td><td class="number bold">           0.034587</td><td class="number">                    0.007090</td></tr>
</table>
</td>
<td>&nbsp;</td>
</tr>
</table>

<p>As expected, the most reliable validity measure (compactness and separation) indicates that there are five clusters in the image,
or, more precisely, of all possible clusterings with <i>C</i> between 2 and 10, c=5 yields best compactness and separation.</p>

<table class="centertable simpleborder">
<tr>
<td>&nbsp;</td>
  <td class="top">
    <a name="algorithmsfuzzycmeansclusteringexploringtheresultsofthealgorithmregionofimagettyahogatakettusedtocalculateclustervalidity">&nbsp;</a><img class="figure" src="Resources/FuzzyCMeans/yahogatake-200.png" border=0 alt="Region of image <tt>yahogatake</tt>, used to calculate cluster validity."><p class="caption">Region of image <tt>yahogatake</tt>, used to calculate cluster validity.</p>
<div class="spacer">&nbsp;</div>

  </td>
<td>&nbsp;</td>
<td>
<table class="simpleborder centertable">
<tr class="simpleborder"><th class="simpleborder">Clusters</th><th class="simpleborder">Partition Coefficient</th><th class="simpleborder">Partition Entropy</th><th class="simpleborder">Compactness and Separation</th></tr>
<tr><td class="number">  2 </td><td class="number bold">    0.787392</td><td class="number bold">   0.344388</td><td class="number bold">     0.064444</td></tr>
<tr><td class="number">  3 </td><td class="number">    0.658325</td><td class="number">   0.593558</td><td class="number">     0.344032</td></tr>
<tr><td class="number">  4 </td><td class="number">    0.575008</td><td class="number">   0.786676</td><td class="number">     0.526321</td></tr>
<tr><td class="number">  5 </td><td class="number">    0.537316</td><td class="number">   0.916241</td><td class="number">     0.539190</td></tr>
<tr><td class="number">  6 </td><td class="number">    0.510080</td><td class="number">   1.016738</td><td class="number">     0.432623</td></tr>
<tr><td class="number">  7 </td><td class="number">    0.467257</td><td class="number">   1.132644</td><td class="number">     2.835202</td></tr>
<tr><td class="number">  8 </td><td class="number">    0.446018</td><td class="number">   1.214235</td><td class="number">     2.305162</td></tr>
<tr><td class="number">  9 </td><td class="number">    0.431852</td><td class="number">   1.271260</td><td class="number">     1.682374</td></tr>
<tr><td class="number"> 10 </td><td class="number">    0.412208</td><td class="number">   1.348178</td><td class="number">     2.452929</td></tr>
<tr><td class="number"> 11 </td><td class="number">    0.393223</td><td class="number">   1.421642</td><td class="number">     4.049871</td></tr>
<tr><td class="number"> 12 </td><td class="number">    0.379419</td><td class="number">   1.482939</td><td class="number">     6.002227</td></tr>
<tr><td class="number"> 13 </td><td class="number">    0.366054</td><td class="number">   1.543151</td><td class="number">     8.970226</td></tr>
<tr><td class="number"> 14 </td><td class="number">    0.354210</td><td class="number">   1.598492</td><td class="number">     6.489424</td></tr>
<tr><td class="number"> 15 </td><td class="number">    0.335944</td><td class="number">   1.666830</td><td class="number">     10.400408</td></tr>
<tr><td class="number"> 16 </td><td class="number">    0.331201</td><td class="number">   1.703490</td><td class="number">     9.189461</td></tr>
<tr><td class="number"> 17 </td><td class="number">    0.324857</td><td class="number">   1.741433</td><td class="number">     7.804047</td></tr>
<tr><td class="number"> 18 </td><td class="number">    0.313592</td><td class="number">   1.796340</td><td class="number">     6.422929</td></tr>
</table>
</td>
<td>&nbsp;</td>
</tr>
</table>

<p>In this second example the three validity measures pointed to the best clustering being the one with <i>C</i> equal to 2,
probably due to the fact that the clusters neither compact nor well separated.</p>

<p>It must be pointed that most natural images does not have a well-defined number of compact and well-separated clusters, therefore the validity measures
presented here should be used as guidelines for selection of <i>C</i>.</p>









<p class="section"><a name="algorithmsfuzzycmeansclusteringreferences"></a>References</p>

<p>These are some references on the Fuzzy C-Means algorithm and its several variants:</p>
<ul class="b">
<li><i>Knowledge-Based Clustering: From Data to Information Granules</i>, by Witold Pedrycz, Wiley-Interscience, ISBN 0-471-46966-1, 2005.</li>
<li><i>Fuzzy Algorithms: With Applications for Image Processing and Pattern Recognition</i>, Zheru Chi, Hong Yan, Tuan Pham, World Scientific, ISBN 981-02-2697-7, 1996.</li>
<li><i>Fuzzy Clustering Models and Applications</i>, Mika Sato, Yoshiharu Sato, Lakhmi C. Jain, Physica-Verlag, ISBN 3-7908-1026-6, 1997.</li>
<li><i>Fuzzy Models for Pattern Recognition: Models that Search for Structure in Data</i>, James C. Bezdek, Sankar K. Pal, IEEE Press, ISBN 0-7803-0422-5, 1992.</li>
<li><i>Biased Clustering Methods for Image Classification</i>, Rafael Santos, Takeshi Ohashi, Takaichi Yoshida, Toshiaki Ejima; SIBGRAPI '98. International Symposium on Computer Graphics, Image Processing, and Vision, 1998. Proceedings. Digital Object Identifier 10.1109/SIBGRA.1998.722761 </li> 
<li>Wikipedia's entry for <a href="/web/20100711082647/http://en.wikipedia.org/wiki/Data_clustering#Fuzzy_c-means_clustering">fuzzy c-means clustering</a>.</li>
</ul>





<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="2320-display-sampling.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="2320-display-sampling.jsp">Sampling Data on Displayed Images</a></td><td class="navigation1"><a href="5010-algorithms-commonclasses.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="5010-algorithms-commonclasses.jsp">Common Classes</a></td><td class="navigation0"><a href="5250-algorithms-fuzzycmeans.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="5250-algorithms-fuzzycmeans.jsp">Fuzzy C-Means Clustering</a></td><td class="navigation1"><a href="6040-howto-compressimages.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="6040-howto-compressimages.jsp">How can I reduce an image file size without losing quality?</a></td><td class="navigation2"><a href="6050-howto-compareimages.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="6050-howto-compareimages.jsp">How do I compare two images to see if they are equal?</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20100711082647/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20100711082647/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20100711082647/https://ssl." : "/web/20100711082647/http://www.");
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
     FILE ARCHIVED ON 8:26:47 Jul 11, 2010 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 2:14:13 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
