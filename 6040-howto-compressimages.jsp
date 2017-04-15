


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app11.us.archive.org";archive_analytics.values.server_ms=175;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/6040-howto-compressimages.jsp";

var firstYear = 1996;
var displayDay = "8";
var displayMonth = "May";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/6040-howto-compressimages.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150508081608" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20150407044231/http://www.lac.inpe.br/JIPCookbook/6040-howto-compressimages.jsp" title="7 Apr 2015">APR</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 8:16:08 May 8, 2015">MAY</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20150731063000/http://www.lac.inpe.br/JIPCookbook/6040-howto-compressimages.jsp" title="31 Jul 2015"><strong>JUL</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20150407044231/http://www.lac.inpe.br/JIPCookbook/6040-howto-compressimages.jsp" title="4:42:31 Apr 7, 2015"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 8:16:08 May 8, 2015">8</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20150731063000/http://www.lac.inpe.br/JIPCookbook/6040-howto-compressimages.jsp" title="6:30:00 Jul 31, 2015"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20140420060756/http://www.lac.inpe.br/JIPCookbook/6040-howto-compressimages.jsp" title="20 Apr 2014"><strong>2014</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 8:16:08 May 8, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
	           <a href="/web/20160529172455/http://www.lac.inpe.br/JIPCookbook/6040-howto-compressimages.jsp" title="29 May 2016"><strong>2016</strong></a>
	       
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150508081608*/http://www.lac.inpe.br/JIPCookbook/6040-howto-compressimages.jsp" title="See a list of every capture for this URL">35 captures</a>
           <div class="r" title="Timespan for captures of this URL">25 Aug 10 - 7 Oct 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000010000_2011:-1:101100111111_2012:-1:000101010000_2013:-1:100000000000_2014:-1:010100000100_2015:4:101110110111_2016:-1:011111012100_2017:-1:000000000000" />
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
<a href="/web/20150508081608/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150508081608/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">How can I reduce an image file size without losing quality?</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityintroduction">Introduction</a>
</div>
<div class="toc3"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityexamples">Examples</a>
</div>
<div class="toc3"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityrelatedquestions">Related Questions</a>
</div>
<div class="toc3"><a href="6040-howto-compressimages.jsp#howtohowcanireduceanimagefilesizewithoutlosingqualityreferences">References</a>
</div>
</div>

<p class="section"><a name="howtohowcanireduceanimagefilesizewithoutlosingqualityintroduction"></a>Introduction</p>


<p>We may want to compress an image to reduce its file size so we can save space on a disk or transmit the image through a network in less time, 
which is a great idea, but with a catch: depending on the compression method, there is 
loss of information in the compression. I will try to explain the basic concepts 
 here, with some examples, but if you really want to know more I'd suggest following the links in the references.</p>

<p>It is <b>very important</b> to understand that there are two basic types of compression: 
<i>lossless</i> and 
<i>lossy</i>.
 As the names imply, with lossless compression we will be able to reduce the number of bytes required to represent
 the image without losing any information or contents; and with lossy compression some information will be lost (discarded) in 
 the compression.</p>
 

<p>I will try to exemplify those concepts with a very simple example. Suppose you are a very secretive spy and have to pass a message
 to another spy. The message is <tt>"CAFECAFECAFECAFECAFECAFECAFECAFECAFECAFECAFECAFE"</tt>. You can copy it exactly as it
 is, or you can notice that the string is composed of 12 repetitions of <tt>"CAFE"</tt> and write in the paper <tt>"12x CAFE"</tt>.   
 It is faster, it is shorter, it will save time and paper and you probably won't get caught copying it. You've just represented the string in 
 a size much smaller than the 
 original, because you've noticed the repetition pattern and used it to encode the string. When the other spy gets the message and need
 the original string back,
 he can just glance at the instructions on your paper to reproduce the original string exactly as it was (as long as he knows the
 code you've used) -- you <b>losslessly compressed</b>
 the string. 
 </p>
 
<p>Now consider the compression of the following message: <tt>"CAFECAFECAFECAFECADECAFECAFECAFECADECAFECAFECAFE"</tt> (there are two different
 characters on it). Using the same trick as above you could probably represent it as <tt>"4x CAFE, CADE, 3x CAFE, CADE, 3x CAFE"</tt>, which is
 smaller than the original string but larger than what we obtained before, due mainly to the fact that this second string does not have many 
 duplicated regions as the first one. From that we get a first lesson, <b>the size of the
 compressed representation depends on the content of the data we want to compress</b> (there are other factors too, we will deal with them later).</p>
 

<p>For better compression, you could just compress the last string with the code <tt>"12x CAFE"</tt>, which is much shorter 
 than <tt>"4x CAFE, CADE, 3x CAFE, CADE, 3x CAFE"</tt>. 
 There is one problem, though: when your spy friend uncompress the code, he will get a different string -- the one without the 
 <tt>"D"</tt>s on it.
 You've <i>lost</i> information between encoding the string to a compressed representation and decoding it. That is an example of
 <b>lossy compression</b>. The loss of information may or not be important for your friend, depending, of course, on the string contents and
 how much it differs from the original.</p>

<p>The above examples apply also to pixels in an image: if all pixels on a particular image or region are red, we can 
losslessly compress their description to a structure representing the number of pixels and the color (same for all). If the pixels on
the image or region are more or less the same perceptual color we can 
lossly compress them to a structure with the number of pixels and a color that is similar enough to the original color in the pixels.</p>

<p>
 One may ask why use lossy compression if computers are fast and smart and can deal with complex algorithms for perfect compression and decompression.
 Since we are dealing with images, in most cases <b>losing some information will not compromise the visual quality of the image</b> and may
 yield much smaller file sizes. Partly this is because the human visual system is not as accurate as we would like, and at the same time
 can easily deal with small details, often ignoring them (can you really distinguish between the different 16777216 colors that can be represented in 
 the RGB digital color space?). In images we can expect some regions to have almost the same color, and we've seen that
 repetition can lead to good compression.</p>
 
<p>Image processing algorithms basically use the redundant or almost-redundant information on images to greatly reduce the number
 of bytes required to represent them. If a lossless format or compression method is used, the algorithm will
 preserve the contents so it can be reproduced exactly as the original, at the expense of a larger number of bytes to represent it.
 If a lossy compression method is used, the algorithm will represent the image with fewer bytes but the decompressed image will be
 slightly different from the original -- and for most applications that will not matter. Exceptions are, of course,
 applications where the image must be stored with the original content for further manipulation -- classification comes to mind.</p>

<p>Lossy compression algorithms often allow the user to set a value for the compression level for the image,
 allowing the balance between quality and size. Few lossless algorithms allows this, but often the trade is between better compression
 and faster processing -- better compression requiring more processing time.</p>



<p class="section"><a name="howtohowcanireduceanimagefilesizewithoutlosingqualityexamples"></a>Examples</p>

<p>Here is an example of uncompressed image which was compressed with a different format in
 different compression levels. The idea is show that for images which will be visually processed, lossy compression can be acceptable.</p>

<table class="simpletable">
  <tr>
    <td class="simpletable legend">
    <a name="howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesoriginaluncompressedimage">&nbsp;</a><a href="Resources/ImageCompression/folhas.tif"><img class="figure" src="Resources/ImageCompression/folhas_icon.jpg" border=0 alt="Original uncompressed image."></a>
<p class="caption">Original uncompressed image.<br>Click on the icon for a larger image.<br>
      The file size is 176778 bytes.
    </p>
<div class="spacer">&nbsp;</div>
    
    </td>
    <td class="simpletable legend">
    <a name="howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesjpegformat10compression">&nbsp;</a><img class="figure" src="Resources/ImageCompression/folhas.1.0.jpeg" border=0 alt="JPEG format, 1.0 compression."><p class="caption">JPEG format, 1.0 compression.<br>
      Saved as a JPEG with 1.0 compression factor (best quality, largest file size). The file size
      is 26766 bytes.
    </p>
<div class="spacer">&nbsp;</div>
    
    </td>
    <td class="simpletable legend">
    <a name="howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesjpegformat09compression">&nbsp;</a><img class="figure" src="Resources/ImageCompression/folhas.0.9.jpeg" border=0 alt="JPEG format, 0.9 compression."><p class="caption">JPEG format, 0.9 compression.<br>
      Saved as a JPEG with 0.9 compression factor (good quality, large file size). The file size
      is 18486 bytes.
    </p>
<div class="spacer">&nbsp;</div>

    </td>
  </tr>
  <tr>
    <td class="simpletable legend">
    <a name="howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesjpegformat06compression">&nbsp;</a><img class="figure" src="Resources/ImageCompression/folhas.0.6.jpeg" border=0 alt="JPEG format, 0.6 compression."><p class="caption">JPEG format, 0.6 compression.<br>
      Saved as a JPEG with 0.6 compression factor (average quality, medium file size). The file size
      is 8767 bytes. Some compression artifacts are visible in the right side of the image.
    </p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
    <a name="howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesjpegformat03compression">&nbsp;</a><img class="figure" src="Resources/ImageCompression/folhas.0.3.jpeg" border=0 alt="JPEG format, 0.3 compression."><p class="caption">JPEG format, 0.3 compression.<br>
      Saved as a JPEG with 0.3 compression factor (average quality, small file size). The file size
      is 5801 bytes.
    </p>
<div class="spacer">&nbsp;</div>

    </td>
    <td class="simpletable legend">
    <a name="howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesjpegformat01compression">&nbsp;</a><img class="figure" src="Resources/ImageCompression/folhas.0.1.jpeg" border=0 alt="JPEG format, 0.1 compression."><p class="caption">JPEG format, 0.1 compression.<br>
      Saved as a JPEG with 0.1 compression factor (very bad quality, very small file size). The file size
      is 3361 bytes. The image shows several ugly compression artifacts, but the leaves are still recognizable. 
    </p>
<div class="spacer">&nbsp;</div>

    </td>
  </tr>
</table>



<p>The first image is an uncompressed TIFF image. The others are images compressed with the 
<b>DemoJPEGCompression</b> application, shown below.
</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="howtohowcanireduceanimagefilesizewithoutlosingqualityexamplesdemojpegcompressionjava">&nbsp;</a><a href="/web/20150508081608/http://150.163.105.39:8080/JIPCookbook//Code/howto/compress/DemoJPEGCompression.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DemoJPEGCompression.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;howto.compress;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.BufferedImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.RenderedImage;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.ByteArrayInputStream;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.ByteArrayOutputStream;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.File;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.io.IOException;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.util.Iterator;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.IIOImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageIO;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageWriteParam;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.ImageWriter;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.stream.FileImageOutputStream;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.imageio.stream.ImageOutputStream;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Shows&nbsp;how&nbsp;to&nbsp;save&nbsp;an&nbsp;image&nbsp;in&nbsp;JPEG&nbsp;with&nbsp;different&nbsp;compression&nbsp;factors.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Based&nbsp;on&nbsp;code&nbsp;from&nbsp;http://forums.java.net/jive/thread.jspa?messageID=243429  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;and&nbsp;from&nbsp;http://www.universalwebservices.net/web-programming-resources/java/adjust-jpeg-image-compression-quality-when-saving-images-in-java  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DemoJPEGCompression  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/*  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;Application&nbsp;starting&nbsp;point,&nbsp;open&nbsp;an&nbsp;image&nbsp;and&nbsp;save&nbsp;it&nbsp;in&nbsp;JPEG&nbsp;with&nbsp;a&nbsp;  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;compression&nbsp;factor.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Load&nbsp;the&nbsp;image&nbsp;(it&nbsp;is&nbsp;hard-coded&nbsp;here&nbsp;to&nbsp;make&nbsp;the&nbsp;code&nbsp;simpler).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;imageFile&nbsp;=&nbsp;<span class="string">"/tmp/folhas.png"</span>;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;BufferedImage&nbsp;i&nbsp;=&nbsp;ImageIO.read(<span class="specialword">new</span>&nbsp;File(imageFile));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;showImage(<span class="string">"Original&nbsp;Image"</span>,&nbsp;i);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Show&nbsp;results&nbsp;with&nbsp;different&nbsp;compression&nbsp;ratio.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;compressAndShow(i,&nbsp;0.5f);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;compressAndShow(BufferedImage&nbsp;image,&nbsp;<span class="datatype">float</span>&nbsp;quality)&nbsp;<span class="specialword">throws</span>&nbsp;IOException  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;a&nbsp;ImageWriter&nbsp;for&nbsp;jpeg&nbsp;format.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Iterator&lt;ImageWriter&gt;&nbsp;writers&nbsp;=&nbsp;ImageIO.getImageWritersBySuffix(<span class="string">"jpeg"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="controlword">if</span>&nbsp;(!writers.hasNext())&nbsp;<span class="specialword">throw</span>&nbsp;<span class="specialword">new</span>&nbsp;IllegalStateException(<span class="string">"No&nbsp;writers&nbsp;found"</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageWriter&nbsp;writer&nbsp;=&nbsp;(ImageWriter)&nbsp;writers.next();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;the&nbsp;ImageWriteParam&nbsp;to&nbsp;compress&nbsp;the&nbsp;image.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageWriteParam&nbsp;param&nbsp;=&nbsp;writer.getDefaultWriteParam();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;param.setCompressionQuality(quality);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;output&nbsp;will&nbsp;be&nbsp;a&nbsp;ByteArrayOutputStream&nbsp;(in&nbsp;memory)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ByteArrayOutputStream&nbsp;bos&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ByteArrayOutputStream(32768);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ImageOutputStream&nbsp;ios&nbsp;=&nbsp;ImageIO.createImageOutputStream(bos);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;writer.setOutput(ios);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;writer.write(<span class="specialword">null</span>,&nbsp;<span class="specialword">new</span>&nbsp;IIOImage(image,&nbsp;<span class="specialword">null</span>,&nbsp;<span class="specialword">null</span>),&nbsp;param);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ios.flush();&nbsp;<span class="comment">//&nbsp;otherwise&nbsp;the&nbsp;buffer&nbsp;size&nbsp;will&nbsp;be&nbsp;zero!  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;From&nbsp;the&nbsp;ByteArrayOutputStream&nbsp;create&nbsp;a&nbsp;RenderedImage.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ByteArrayInputStream&nbsp;in&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ByteArrayInputStream(bos.toByteArray());  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;RenderedImage&nbsp;out&nbsp;=&nbsp;ImageIO.read(in);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="datatype">int</span>&nbsp;size&nbsp;=&nbsp;bos.toByteArray().length;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;showImage(<span class="string">"Compressed&nbsp;to&nbsp;"</span>&nbsp;+&nbsp;quality&nbsp;+&nbsp;<span class="string">":&nbsp;"</span>&nbsp;+&nbsp;size&nbsp;+&nbsp;<span class="string">"&nbsp;bytes"</span>,&nbsp;out);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Uncomment&nbsp;code&nbsp;below&nbsp;to&nbsp;save&nbsp;the&nbsp;compressed&nbsp;files.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents"><span class="comment">//&nbsp;&nbsp;&nbsp;&nbsp;File&nbsp;file&nbsp;=&nbsp;new&nbsp;File("compressed."+quality+".jpeg");  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents"><span class="comment">//&nbsp;&nbsp;&nbsp;&nbsp;FileImageOutputStream&nbsp;output&nbsp;=&nbsp;new&nbsp;FileImageOutputStream(file);  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents"><span class="comment">//&nbsp;&nbsp;&nbsp;&nbsp;writer.setOutput(output);&nbsp;writer.write(null,&nbsp;new&nbsp;IIOImage(image,&nbsp;null,null),&nbsp;param);  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;just&nbsp;create&nbsp;a&nbsp;JFrame&nbsp;to&nbsp;display&nbsp;the&nbsp;image.&nbsp;Closing&nbsp;the&nbsp;window  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;will&nbsp;close&nbsp;the&nbsp;whole&nbsp;application.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;showImage(String&nbsp;title,RenderedImage&nbsp;image)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JFrame&nbsp;f&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JFrame(title);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;f.getContentPane().add(<span class="specialword">new</span>&nbsp;DisplayJAI(image));  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;f.pack();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;f.setVisible(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>

 

<p>Image quality is very subjective, but I'd say that for display in a web page, the image with 0.6 compression factor
 is good enough, and its size is more than 1/20th smaller than the original TIFF image.   
</p>




<p class="section"><a name="howtohowcanireduceanimagefilesizewithoutlosingqualityrelatedquestions"></a>Related Questions</p>

<ul class="b">
<li><b>Can I recompress a compressed image with a lossless algorithm for even better compression ratios?</b><br>
  Usually no, lossless algorithms won't find regularities in the already compressed contents. Remember the message compressed 
  as <tt>"12x CAFE"</tt>? Can you compress it further so when uncompressed it
  yields the original message? </li>
<li><b>What if I set a very, very small value for the compression factor?</b><br>
  Just for the fun, I tried that in the images shown in the example. 
  A compression factor of 0.01 resulted in a file size of 2579 bytes (see it <a href="Resources/ImageCompression/folhas.0.01.jpeg">here</a>). 
  A compression factor of 0.001 resulted in a file size of 2716 bytes (see it <a href="Resources/ImageCompression/folhas.0.0010.jpeg">here</a>).
  A compression factor of 0.0001 resulted in a file size of 2764 bytes (see it <a href="Resources/ImageCompression/folhas.1.0E-4.jpeg">here</a>).<br>
  We can see that the compressed images get a little uglier than the compressed with the 0.1 factor, but not smaller -- in fact, can even get a little
  larger. Results may vary with different images.</li>
<li><b>Can I compress the image with a lossy algorithm (for better compression) and uncompress it with a lossless algorithm (for better quality)?</b><br>
  No -- when compressing the image we are encoding it so for an image compressed with a particular algorithm must be expanded with the
  corresponding inverse algorithm.</li>
<li><b>What if I need to compress an image to an even smaller size, even with worse quality?</b><br>
  Reduce it to a smaller size in pixels before compression, and/or pre-process with a smoothing filter. Smoothing an image may increase the 
  compression rates achieavable by both lossless and lossy algorithms, but in this case why use a lossless one?   
  </li>  
</ul>



<p class="section"><a name="howtohowcanireduceanimagefilesizewithoutlosingqualityreferences"></a>References</p>

<ul class="b">
<li><a href="/web/20150508081608/http://en.wikipedia.org/wiki/Lossy_data_compression">Lossy</a> and <a href="/web/20150508081608/http://en.wikipedia.org/wiki/Lossless_data_compression">Lossless</a>
   data compression (Wikipedia).</li>
<li>The <a href="/web/20150508081608/http://en.wikipedia.org/wiki/LZW">Lempel-Ziv-Welch</a> lossless algorithm (Wikipedia).</li>
<li>The <a href="/web/20150508081608/http://www.faqs.org/faqs/jpeg-faq/part1/preamble.html">JPEG image compression FAQ</a>.</li>
<li>Nice reference with examples using medical images: <a href="/web/20150508081608/http://www.mikety.net/Articles/ImageComp/ImageComp.html">Effects of Lossless and Lossy Image Compression and Decompression on Archival Image Quality in a 
  Bone Radiograph and an Abdominal CT Scan</a>, by Michael Tobin, M.D., Ph.D.</li>
</ul>





<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="2300-display-annotation.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="2300-display-annotation.jsp">Drawing Over Images</a></td><td class="navigation1"><a href="2320-display-sampling.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="2320-display-sampling.jsp">Sampling Data on Displayed Images</a></td><td class="navigation0"><a href="6040-howto-compressimages.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="6040-howto-compressimages.jsp">How can I reduce an image file size without losing quality?</a></td><td class="navigation1"><a href="6050-howto-compareimages.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="6050-howto-compareimages.jsp">How do I compare two images to see if they are equal?</a></td><td class="navigation2"><a href="6320-howto-pansharpening.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="6320-howto-pansharpening.jsp">How can I implement a pan sharpening algorithm?</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150508081608/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150508081608/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150508081608/https://ssl." : "/web/20150508081608/http://www.");
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
     FILE ARCHIVED ON 8:16:08 May 8, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 1:07:45 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
