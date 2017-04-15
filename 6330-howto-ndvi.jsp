


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app0.us.archive.org";archive_analytics.values.server_ms=726;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/6330-howto-ndvi.jsp";

var firstYear = 1996;
var displayDay = "22";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/6330-howto-ndvi.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150222073028" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20141030091121/http://www.lac.inpe.br/JIPCookbook/6330-howto-ndvi.jsp" title="30 Oct 2014">OCT</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 7:30:28 Feb 22, 2015">FEB</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20150424063310/http://www.lac.inpe.br/JIPCookbook/6330-howto-ndvi.jsp" title="24 Apr 2015"><strong>APR</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20141030091121/http://www.lac.inpe.br/JIPCookbook/6330-howto-ndvi.jsp" title="9:11:21 Oct 30, 2014"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 7:30:28 Feb 22, 2015">22</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20150424063310/http://www.lac.inpe.br/JIPCookbook/6330-howto-ndvi.jsp" title="6:33:10 Apr 24, 2015"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20140216061359/http://www.lac.inpe.br/JIPCookbook/6330-howto-ndvi.jsp" title="16 Feb 2014"><strong>2014</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 7:30:28 Feb 22, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
	           <a href="/web/20160418164901/http://www.lac.inpe.br/JIPCookbook/6330-howto-ndvi.jsp" title="18 Apr 2016"><strong>2016</strong></a>
	       
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150222073028*/http://www.lac.inpe.br/JIPCookbook/6330-howto-ndvi.jsp" title="See a list of every capture for this URL">13 captures</a>
           <div class="r" title="Timespan for captures of this URL">23 Apr 11 - 18 Apr 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000000000_2011:-1:000101010101_2012:-1:000001000000_2013:-1:000000010001_2014:-1:010000000100_2015:1:010100000000_2016:-1:000100000000_2017:-1:000000000000" />
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
<a href="/web/20150222073028/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150222073028/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">How can I calculate and display a NDVI image?</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="6330-howto-ndvi.jsp#howtohowcanicalculateanddisplayandviimageintroduction">Introduction</a>
</div>
<div class="toc3"><a href="6330-howto-ndvi.jsp#howtohowcanicalculateanddisplayandviimageimplementation">Implementation</a>
</div>
<div class="toc3"><a href="6330-howto-ndvi.jsp#howtohowcanicalculateanddisplayandviimagereferences">References</a>
</div>
</div>

<p class="section"><a name="howtohowcanicalculateanddisplayandviimageintroduction"></a>Introduction</p>

<p>
The Normalized Difference Vegetation Index (NDVI) is a numeric indicator of the amount of biomass or live green vegetation that is 
calculated from the pixels in remote sensing images.
</p>
<p>This index is calculated as a ratio of two image bands.
For the Landsat TM Mapper we can calculate the NDVI as (B<sub>4</sub>-B<sub>3</sub>)/(B<sub>4</sub>+B<sub>3</sub>),
where B<sub>3</sub> is the visible red band and B<sub>4</sub> is the near infrared band. 
</p>
<p>A NDVI image pixel's values range from -1 to +1, therefore we must take special care on its calculation, representantion and display.</p>

<p>More information on the Normalized Difference Vegetation Index can be found in the <a href="#howtohowcanicalculateanddisplayandviimagereferences">references</a> below.</p>




<p class="section"><a name="howtohowcanicalculateanddisplayandviimageimplementation"></a>Implementation</p>

<p>Implementation of the NDVI transform Java/JAI is straightforward -- we only need to
calculate the image ratios, but before that we must make sure that the images are
of type double, which can be done with a call to JAI's <tt>format</tt> operator.
The code below reads two images and calculates the NDVI ratio of those. The resulting image 
is shown by a <tt>DisplayNBImage</tt> component (see chapter <a href="2200-display-surrogate.jsp">Using Surrogate Images</a>).
</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="howtohowcanicalculateanddisplayandviimageimplementationviewndvijava">&nbsp;</a><a href="/web/20150222073028/http://150.163.105.39:8080/JIPCookbook//Code/howto/ndvi/ViewNDVI.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>ViewNDVI.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/JIPCookbook/index.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;howto.ndvi;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.DataBuffer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.renderable.ParameterBlock;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JScrollPane;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;display.surrogate.DisplayNBImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;calculates&nbsp;and&nbsp;displays&nbsp;a&nbsp;NDVI&nbsp;(Normalized&nbsp;Difference&nbsp;Vegetation&nbsp;Index)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;image&nbsp;from&nbsp;two&nbsp;Landsat&nbsp;bands.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;ViewNDVI  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point.&nbsp;We&nbsp;need&nbsp;to&nbsp;provide&nbsp;two&nbsp;input&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;First&nbsp;we&nbsp;open&nbsp;the&nbsp;input&nbsp;images.&nbsp;We&nbsp;assume&nbsp;that&nbsp;each&nbsp;band&nbsp;is&nbsp;in&nbsp;a&nbsp;separate&nbsp;file.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;assume&nbsp;that&nbsp;the&nbsp;first&nbsp;image&nbsp;is&nbsp;a&nbsp;near&nbsp;infrared&nbsp;one&nbsp;and&nbsp;that&nbsp;the&nbsp;second&nbsp;is  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;a&nbsp;visible&nbsp;red&nbsp;image&nbsp;--&nbsp;if&nbsp;you're&nbsp;using&nbsp;Landsat&nbsp;images,&nbsp;those&nbsp;will&nbsp;be&nbsp;bands  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;4&nbsp;and&nbsp;3,&nbsp;respectively.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;iNIR&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,args[0]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;iVIS&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,args[1]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;pixels&nbsp;on&nbsp;those&nbsp;images&nbsp;must&nbsp;be&nbsp;processed&nbsp;as&nbsp;floating-point&nbsp;values!  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pbConvert&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbConvert.addSource(iNIR);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbConvert.add(DataBuffer.TYPE_DOUBLE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;NIR&nbsp;=&nbsp;JAI.create(<span class="string">"format"</span>,&nbsp;pbConvert);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbConvert&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbConvert.addSource(iVIS);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbConvert.add(DataBuffer.TYPE_DOUBLE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;VIS&nbsp;=&nbsp;JAI.create(<span class="string">"format"</span>,&nbsp;pbConvert);&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;denominator&nbsp;(NIR-VIS).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pbd&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbd.addSource(NIR);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbd.addSource(VIS);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;denominator&nbsp;=&nbsp;JAI.create(<span class="string">"subtract"</span>,pbd);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;numerator&nbsp;(NIR+VIS).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pbn&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbn.addSource(NIR);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbn.addSource(VIS);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;numerator&nbsp;=&nbsp;JAI.create(<span class="string">"add"</span>,pbd);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;NDVI.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pbNDVI&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbNDVI.addSource(denominator);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbNDVI.addSource(numerator);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;ndvi&nbsp;=&nbsp;JAI.create(<span class="string">"divide"</span>,pbNDVI);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;GUI&nbsp;to&nbsp;show&nbsp;it.&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JFrame&nbsp;frame&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JFrame(<span class="string">"NDVI&nbsp;image"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;DisplayNBImage&nbsp;disp&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayNBImage(ndvi);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.add(<span class="specialword">new</span>&nbsp;JScrollPane(disp));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.pack();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setVisible(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>
 

<p>A screenshot of the execution of this class is shown below. 
In that image water regions will have low or small negative values
(appearing darker) and dense canopy regions will have values around 0.3 to 0.8, appearing
lighter on the image.</p>

<a name="howtohowcanicalculateanddisplayandviimageimplementationttviewndvittapplicationscreenshot">&nbsp;</a><a href="Resources/Screenshots/ViewNDVI.png"><img class="figure" src="Resources/Screenshots/ViewNDVI_icon.jpg" border=0 alt="<tt>ViewNDVI</tt> application screenshot"></a>
<p class="caption"><tt>ViewNDVI</tt> application screenshot<br>Click on the icon for a larger image.<br>
</p>
<div class="spacer">&nbsp;</div>


<p>It is possible to apply a LUT to the NDVI image, in order to highlight the different ranges of values.
This is demonstrated with the class <tt>ViewNDVILUT</tt>, shown below.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="howtohowcanicalculateanddisplayandviimageimplementationviewndvilutjava">&nbsp;</a><a href="/web/20150222073028/http://150.163.105.39:8080/JIPCookbook//Code/howto/ndvi/ViewNDVILUT.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>ViewNDVILUT.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/JIPCookbook/index.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;howto.ndvi;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.DataBuffer;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.image.renderable.ParameterBlock;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JScrollPane;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;display.surrogate.DisplayNBImageWithLUTs;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;calculates&nbsp;and&nbsp;displays&nbsp;a&nbsp;NDVI&nbsp;(Normalized&nbsp;Difference&nbsp;Vegetation&nbsp;Index)  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;image&nbsp;from&nbsp;two&nbsp;Landsat&nbsp;bands.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;ViewNDVILUT  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;The&nbsp;application&nbsp;entry&nbsp;point.&nbsp;We&nbsp;need&nbsp;to&nbsp;provide&nbsp;two&nbsp;input&nbsp;images.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;First&nbsp;we&nbsp;open&nbsp;the&nbsp;input&nbsp;images.&nbsp;We&nbsp;assume&nbsp;that&nbsp;each&nbsp;band&nbsp;is&nbsp;in&nbsp;a&nbsp;separate&nbsp;file.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;We&nbsp;assume&nbsp;that&nbsp;the&nbsp;first&nbsp;image&nbsp;is&nbsp;a&nbsp;near&nbsp;infrared&nbsp;one&nbsp;and&nbsp;that&nbsp;the&nbsp;second&nbsp;is  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;a&nbsp;visible&nbsp;red&nbsp;image&nbsp;--&nbsp;if&nbsp;you're&nbsp;using&nbsp;Landsat&nbsp;images,&nbsp;those&nbsp;will&nbsp;be&nbsp;bands  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;4&nbsp;and&nbsp;3,&nbsp;respectively.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;iNIR&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,args[0]);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;iVIS&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,args[1]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;The&nbsp;pixels&nbsp;on&nbsp;those&nbsp;images&nbsp;must&nbsp;be&nbsp;processed&nbsp;as&nbsp;floating-point&nbsp;values!  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pbConvert&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbConvert.addSource(iNIR);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbConvert.add(DataBuffer.TYPE_DOUBLE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;NIR&nbsp;=&nbsp;JAI.create(<span class="string">"format"</span>,&nbsp;pbConvert);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbConvert&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbConvert.addSource(iVIS);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbConvert.add(DataBuffer.TYPE_DOUBLE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;VIS&nbsp;=&nbsp;JAI.create(<span class="string">"format"</span>,&nbsp;pbConvert);&nbsp;&nbsp;&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;denominator&nbsp;(NIR-VIS).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pbd&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbd.addSource(NIR);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbd.addSource(VIS);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;denominator&nbsp;=&nbsp;JAI.create(<span class="string">"subtract"</span>,pbd);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;numerator&nbsp;(NIR+VIS).  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pbn&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbn.addSource(NIR);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbn.addSource(VIS);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;numerator&nbsp;=&nbsp;JAI.create(<span class="string">"add"</span>,pbd);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Calculate&nbsp;the&nbsp;NDVI.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;56&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;ParameterBlock&nbsp;pbNDVI&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;ParameterBlock();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;57&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbNDVI.addSource(denominator);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;58&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;pbNDVI.addSource(numerator);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;59&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;ndvi&nbsp;=&nbsp;JAI.create(<span class="string">"divide"</span>,pbNDVI);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;60&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;GUI&nbsp;to&nbsp;show&nbsp;it.&nbsp;  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;61&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JFrame&nbsp;frame&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JFrame(<span class="string">"NDVI&nbsp;image"</span>);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;62&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;DisplayNBImageWithLUTs&nbsp;disp&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayNBImageWithLUTs(ndvi);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;63&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;a&nbsp;special&nbsp;LUT&nbsp;for&nbsp;this&nbsp;display&nbsp;--&nbsp;see&nbsp;the&nbsp;LUT&nbsp;declaration&nbsp;below.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;64&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;disp.setLUT(colors);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;65&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.add(<span class="specialword">new</span>&nbsp;JScrollPane(disp));  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;66&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.pack();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;67&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;68&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setVisible(<span class="specialword">true</span>);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;69&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;70&nbsp;</span><span class="codecontents">&nbsp;&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;71&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;This&nbsp;LUT&nbsp;maps&nbsp;values&nbsp;for&nbsp;a&nbsp;natural-looking&nbsp;NDVI&nbsp;image.&nbsp;The&nbsp;values&nbsp;were  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;72&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">//&nbsp;interpolated&nbsp;from&nbsp;a&nbsp;color&nbsp;table&nbsp;from&nbsp;GRASS.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;73&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">private</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="modifierword">final</span>&nbsp;<span class="datatype">short</span>[][]&nbsp;colors&nbsp;=&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;74&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;75&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;&nbsp;0  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;76&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;&nbsp;1  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;77&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;&nbsp;2  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;78&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;&nbsp;3  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;79&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;&nbsp;4  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;80&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;&nbsp;5  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;81&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;&nbsp;6  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;82&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;&nbsp;7  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;83&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;&nbsp;8  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;84&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;&nbsp;9  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;85&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;10  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;86&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;11  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;87&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;12  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;88&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;13  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;89&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;14  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;90&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;15  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;91&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;16  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;92&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;17  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;93&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;18  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;94&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;19  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;95&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;20  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;96&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;21  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;97&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;22  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;98&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;23  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;99&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;24  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;100&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;25  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;101&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;26  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;102&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;27  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;103&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;28  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;104&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;29  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;105&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;30  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;106&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;31  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;107&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;32  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;108&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;33  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;109&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;34  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;110&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;35  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;111&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;36  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;112&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;37  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;113&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;38  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;114&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;39  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;115&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;40  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;116&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;41  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;117&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;42  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;118&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;43  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;119&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;44  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;120&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;45  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;121&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;46  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;122&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;47  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;123&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;48  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;124&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;49  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;125&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;50  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;126&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;51  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;127&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;52  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;128&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;53  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;129&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;54  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;130&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;55  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;131&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;56  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;132&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;57  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;133&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;58  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;134&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;59  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;135&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;60  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;136&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;61  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;137&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;62  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;138&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;63  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;139&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;64  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;140&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;65  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;141&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;66  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;142&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;67  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;143&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;68  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;144&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;69  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;145&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;70  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;146&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;71  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;147&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;72  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;148&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;73  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;149&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;74  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;150&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;75  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;151&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;76  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;152&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;77  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;153&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;78  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;154&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;79  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;155&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;80  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;156&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;81  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;157&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;82  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;158&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;83  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;159&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;84  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;160&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;85  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;161&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;86  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;162&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;87  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;163&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;88  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;164&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;5,&nbsp;24,&nbsp;82},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;89  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;165&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;17,&nbsp;35,&nbsp;90},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;90  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;166&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;33,&nbsp;50,101},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;91  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;167&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;49,&nbsp;65,113},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;92  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;168&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;66,&nbsp;80,124},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;93  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;169&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;82,&nbsp;95,135},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;94  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;170&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;98,110,147},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;95  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;171&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{115,125,158},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;96  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;172&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{131,141,169},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;97  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;173&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{147,156,180},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;98  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;174&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{164,171,192},&nbsp;&nbsp;<span class="comment">//&nbsp;&nbsp;99  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;175&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{180,186,203},&nbsp;&nbsp;<span class="comment">//&nbsp;100  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;176&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{196,201,214},&nbsp;&nbsp;<span class="comment">//&nbsp;101  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;177&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{213,216,226},&nbsp;&nbsp;<span class="comment">//&nbsp;102  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;178&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{229,231,237},&nbsp;&nbsp;<span class="comment">//&nbsp;103  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;179&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{246,246,248},&nbsp;&nbsp;<span class="comment">//&nbsp;104  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;180&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;105  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;181&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;106  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;182&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;107  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;183&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;108  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;184&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;109  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;185&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;110  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;186&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;111  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;187&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;112  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;188&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;113  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;189&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;114  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;190&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;115  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;191&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;116  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;192&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;117  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;193&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;118  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;194&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;119  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;195&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;120  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;196&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;121  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;197&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;122  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;198&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;123  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;199&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;124  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;200&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;125  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;201&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;126  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;202&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{255,255,255},&nbsp;&nbsp;<span class="comment">//&nbsp;127  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;203&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{247,245,243},&nbsp;&nbsp;<span class="comment">//&nbsp;128  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;204&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{231,227,219},&nbsp;&nbsp;<span class="comment">//&nbsp;129  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;205&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{216,209,196},&nbsp;&nbsp;<span class="comment">//&nbsp;130  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;206&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{205,195,177},&nbsp;&nbsp;<span class="comment">//&nbsp;131  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;207&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{202,190,168},&nbsp;&nbsp;<span class="comment">//&nbsp;132  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;208&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{200,184,159},&nbsp;&nbsp;<span class="comment">//&nbsp;133  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;209&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{198,179,150},&nbsp;&nbsp;<span class="comment">//&nbsp;134  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;210&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{195,174,142},&nbsp;&nbsp;<span class="comment">//&nbsp;135  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;211&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{193,168,133},&nbsp;&nbsp;<span class="comment">//&nbsp;136  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;212&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{191,163,124},&nbsp;&nbsp;<span class="comment">//&nbsp;137  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;213&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{189,164,119},&nbsp;&nbsp;<span class="comment">//&nbsp;138  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;214&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{187,166,115},&nbsp;&nbsp;<span class="comment">//&nbsp;139  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;215&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{185,168,111},&nbsp;&nbsp;<span class="comment">//&nbsp;140  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;216&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{183,169,106},&nbsp;&nbsp;<span class="comment">//&nbsp;141  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;217&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{181,171,102},&nbsp;&nbsp;<span class="comment">//&nbsp;142  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;218&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{179,173,&nbsp;97},&nbsp;&nbsp;<span class="comment">//&nbsp;143  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;219&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{176,175,&nbsp;93},&nbsp;&nbsp;<span class="comment">//&nbsp;144  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;220&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{171,177,&nbsp;88},&nbsp;&nbsp;<span class="comment">//&nbsp;145  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;221&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{166,179,&nbsp;83},&nbsp;&nbsp;<span class="comment">//&nbsp;146  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;222&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{160,179,&nbsp;77},&nbsp;&nbsp;<span class="comment">//&nbsp;147  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;223&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{154,176,&nbsp;71},&nbsp;&nbsp;<span class="comment">//&nbsp;148  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;224&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{148,172,&nbsp;65},&nbsp;&nbsp;<span class="comment">//&nbsp;149  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;225&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{144,170,&nbsp;59},&nbsp;&nbsp;<span class="comment">//&nbsp;150  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;226&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{147,174,&nbsp;55},&nbsp;&nbsp;<span class="comment">//&nbsp;151  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;227&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{150,177,&nbsp;50},&nbsp;&nbsp;<span class="comment">//&nbsp;152  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;228&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{153,180,&nbsp;46},&nbsp;&nbsp;<span class="comment">//&nbsp;153  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;229&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{156,184,&nbsp;42},&nbsp;&nbsp;<span class="comment">//&nbsp;154  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;230&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{159,187,&nbsp;38},&nbsp;&nbsp;<span class="comment">//&nbsp;155  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;231&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{162,190,&nbsp;34},&nbsp;&nbsp;<span class="comment">//&nbsp;156  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;232&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{165,194,&nbsp;29},&nbsp;&nbsp;<span class="comment">//&nbsp;157  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;233&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{160,192,&nbsp;24},&nbsp;&nbsp;<span class="comment">//&nbsp;158  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;234&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{152,189,&nbsp;17},&nbsp;&nbsp;<span class="comment">//&nbsp;159  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;235&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{145,187,&nbsp;11},&nbsp;&nbsp;<span class="comment">//&nbsp;160  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;236&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{138,184,&nbsp;&nbsp;5},&nbsp;&nbsp;<span class="comment">//&nbsp;161  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;237&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{134,182,&nbsp;&nbsp;2},&nbsp;&nbsp;<span class="comment">//&nbsp;162  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;238&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{132,181,&nbsp;&nbsp;2},&nbsp;&nbsp;<span class="comment">//&nbsp;163  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;239&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{130,180,&nbsp;&nbsp;2},&nbsp;&nbsp;<span class="comment">//&nbsp;164  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;240&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{129,179,&nbsp;&nbsp;2},&nbsp;&nbsp;<span class="comment">//&nbsp;165  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;241&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{127,178,&nbsp;&nbsp;1},&nbsp;&nbsp;<span class="comment">//&nbsp;166  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;242&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{125,177,&nbsp;&nbsp;1},&nbsp;&nbsp;<span class="comment">//&nbsp;167  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;243&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{124,176,&nbsp;&nbsp;1},&nbsp;&nbsp;<span class="comment">//&nbsp;168  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;244&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{122,175,&nbsp;&nbsp;1},&nbsp;&nbsp;<span class="comment">//&nbsp;169  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;245&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{120,174,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;170  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;246&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{116,172,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;171  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;247&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{111,169,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;172  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;248&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{106,166,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;173  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;249&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{101,163,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;174  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;250&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;98,161,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;175  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;251&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;96,160,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;176  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;252&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;93,159,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;177  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;253&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;90,157,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;178  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;254&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;87,156,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;179  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;255&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;85,154,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;180  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;256&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;82,153,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;181  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;257&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;79,151,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;182  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;258&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;75,149,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;183  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;259&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;67,145,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;184  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;260&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;58,140,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;185  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;261&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;50,136,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;186  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;262&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;42,131,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;187  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;263&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;38,130,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;188  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;264&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;34,128,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;189  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;265&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;30,126,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;190  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;266&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;26,125,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;191  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;267&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;22,123,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;192  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;268&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;18,121,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;193  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;269&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;14,120,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;194  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;270&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;10,118,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;195  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;271&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;6,116,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;196  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;272&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;2,115,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;197  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;273&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,113,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;198  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;274&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,111,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;199  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;275&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,109,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;200  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;276&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,107,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;201  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;277&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,105,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;202  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;278&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,103,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;203  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;279&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,102,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;204  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;280&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,100,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;205  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;281&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;98,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;206  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;282&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;96,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;207  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;283&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;94,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;208  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;284&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;92,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;209  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;285&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;90,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;210  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;286&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;89,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;211  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;287&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;87,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;212  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;288&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;86,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;213  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;289&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;85,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;214  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;290&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;83,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;215  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;291&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;82,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;216  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;292&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;81,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;217  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;293&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;79,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;218  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;294&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;78,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;219  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;295&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;77,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;220  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;296&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;75,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;221  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;297&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;74,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;222  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;298&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;73,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;223  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;299&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;71,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;224  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;300&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;70,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;225  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;301&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;69,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;226  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;302&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;67,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;227  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;303&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;66,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;228  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;304&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;65,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;229  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;305&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;63,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;230  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;306&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;62,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;231  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;307&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;61,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;232  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;308&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;59,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;233  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;309&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;58,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;234  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;310&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;57,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;235  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;311&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;55,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;236  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;312&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;53,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;237  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;313&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;51,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;238  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;314&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;49,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;239  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;315&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;47,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;240  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;316&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;45,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;241  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;317&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;43,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;242  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;318&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;42,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;243  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;319&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;40,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;244  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;320&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;38,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;245  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;321&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;36,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;246  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;322&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;34,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;247  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;323&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;32,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;248  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;324&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;29,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;249  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;325&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;24,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;250  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;326&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;19,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;251  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;327&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;14,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;252  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;328&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;&nbsp;9,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;253  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;329&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;&nbsp;4,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;254  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;330&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;0,&nbsp;&nbsp;0,&nbsp;&nbsp;0},&nbsp;&nbsp;<span class="comment">//&nbsp;255  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;331&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;};  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;332&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;333&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>
 

<p>The screenshot of the application <tt>ViewNDVILUT</tt> is shown below.</p>

<a name="howtohowcanicalculateanddisplayandviimageimplementationttviewndvittapplicationscreenshot">&nbsp;</a><a href="Resources/Screenshots/ViewNDVILUT.png"><img class="figure" src="Resources/Screenshots/ViewNDVILUT_icon.jpg" border=0 alt="<tt>ViewNDVI</tt> application screenshot"></a>
<p class="caption"><tt>ViewNDVI</tt> application screenshot<br>Click on the icon for a larger image.<br>
</p>
<div class="spacer">&nbsp;</div>








<p class="section"><a name="howtohowcanicalculateanddisplayandviimagereferences"></a>References</p>

<p>Some links with more information:</p>
<ul>
<li>Nicholas M. Short, Sr.'s <a href="/web/20150222073028/http://rst.gsfc.nasa.gov/Sect3/Sect3_4.html">Remote Sensing Tutorial Page 3-4</a>.</li>
<li>Wikipedia's entry on <a href="/web/20150222073028/http://en.wikipedia.org/wiki/Normalized_Difference_Vegetation_Index">Normalized Difference Vegetation Index</a>.</li>
</ul>




<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="6050-howto-compareimages.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="6050-howto-compareimages.jsp">How do I compare two images to see if they are equal?</a></td><td class="navigation1"><a href="6320-howto-pansharpening.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="6320-howto-pansharpening.jsp">How can I implement a pan sharpening algorithm?</a></td><td class="navigation0"><a href="6330-howto-ndvi.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="6330-howto-ndvi.jsp">How can I calculate and display a NDVI image?</a></td><td class="navigation1"><a href="6520-howto-chromakey.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="6520-howto-chromakey.jsp">How can I implement a chroma key composition on images?</a></td><td class="navigation2"><a href="7020-tutorial-supervisedclassification.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="7020-tutorial-supervisedclassification.jsp">A Brief Tutorial on Supervised Image Classification</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150222073028/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150222073028/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150222073028/https://ssl." : "/web/20150222073028/http://www.");
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
     FILE ARCHIVED ON 7:30:28 Feb 22, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 1:16:56 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
