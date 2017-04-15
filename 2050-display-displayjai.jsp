


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app6.us.archive.org";archive_analytics.values.server_ms=454;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/2050-display-displayjai.jsp";

var firstYear = 1996;
var displayDay = "15";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/2050-display-displayjai.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150315030428" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20131207082102/http://www.lac.inpe.br/JIPCookbook/2050-display-displayjai.jsp" title="7 Dec 2013">DEC</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 3:04:28 Mar 15, 2015">MAR</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20160124234850/http://www.lac.inpe.br/JIPCookbook/2050-display-displayjai.jsp" title="24 Jan 2016"><strong>JAN</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131207082102/http://www.lac.inpe.br/JIPCookbook/2050-display-displayjai.jsp" title="8:21:02 Dec 7, 2013"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 3:04:28 Mar 15, 2015">15</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20160124234850/http://www.lac.inpe.br/JIPCookbook/2050-display-displayjai.jsp" title="23:48:50 Jan 24, 2016"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131207082102/http://www.lac.inpe.br/JIPCookbook/2050-display-displayjai.jsp" title="7 Dec 2013"><strong>2013</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 3:04:28 Mar 15, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
                   2016
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150315030428*/http://www.lac.inpe.br/JIPCookbook/2050-display-displayjai.jsp" title="See a list of every capture for this URL">15 captures</a>
           <div class="r" title="Timespan for captures of this URL">16 Jul 10 - 24 Jan 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000110000_2011:-1:001100111010_2012:-1:000020000100_2013:-1:000000010001_2014:-1:000000000000_2015:2:001000000000_2016:-1:100000000000_2017:-1:000000000000" />
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
<a href="/web/20150315030428/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150315030428/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">Displaying Images with the <tt>DisplayJAI</tt> class</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="2050-display-displayjai.jsp#imagedisplaydisplayingimageswiththettdisplayjaittclassintroduction">Introduction</a>
</div>
<div class="toc3"><a href="2050-display-displayjai.jsp#imagedisplaydisplayingimageswiththettdisplayjaittclassdisplayingimageswiththettdisplayjaittclass">Displaying Images with the <tt>DisplayJAI</tt> class</a>
</div>
</div>

<p class="section"><a name="imagedisplaydisplayingimageswiththettdisplayjaittclassintroduction"></a>Introduction</p>

<p><tt>DisplayJAI</tt> is a class distributed with the Java Advanced Imaging API that can display an instance of 
the <tt>RenderedImage</tt> class, including instances of <tt>PlanarImage</tt> and <tt>TiledImage</tt> (tiling is
supported). Since it inherits from <tt>JComponent</tt> it can be used in graphical interfaces as any other component.</p>
<p>This chapter shows some basic usage examples. Other chapters in this section shows how to extend the class for
more specific tasks.</p>
<p><b>Important:</b> A message on this class' API documentation says: 
<i>This class is not a committed part of the Java<sup>TM</sup> Advanced Imaging API per se. 
It might therefore not be supported by JAI implementations other than that of Sun Microsystems, Inc.</i>
</p>



<p class="section"><a name="imagedisplaydisplayingimageswiththettdisplayjaittclassdisplayingimageswiththettdisplayjaittclass"></a>Displaying Images with the <tt>DisplayJAI</tt> class</p>


<p>A simple application will demonstrate the usage of the <tt>DisplayJAI</tt> class. It will load an image from disk,
create a simple graphical interface with the  <tt>DisplayJAI</tt> on the center and a text label on the bottom.
The instance of  <tt>DisplayJAI</tt> will be contained inside a <tt>JScrollPane</tt> so if the image is larger than
the application's window the user will be able to the scrollbars to display different viewports of the image. The
text label will show information about the image.</p>

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="imagedisplaydisplayingimageswiththettdisplayjaittclassdisplayingimageswiththettdisplayjaittclassdisplayjaiexamplejava">&nbsp;</a><a href="/web/20150315030428/http://150.163.105.39:8080/JIPCookbook//Code/display/basic/DisplayJAIExample.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>DisplayJAIExample.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;display.basic;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.BorderLayout;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;java.awt.Container;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.JAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.media.jai.PlanarImage;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JFrame;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JLabel;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;javax.swing.JScrollPane;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents"><span class="classword">import</span>&nbsp;com.sun.media.jai.widget.DisplayJAI;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;application&nbsp;shows&nbsp;how&nbsp;to&nbsp;use&nbsp;the&nbsp;DisplayJAI&nbsp;class&nbsp;with&nbsp;a&nbsp;JScrollPane&nbsp;to&nbsp;display&nbsp;images.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="classword">class</span>&nbsp;DisplayJAIExample  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;Entry&nbsp;point&nbsp;for&nbsp;this&nbsp;application.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*&nbsp;@param&nbsp;args&nbsp;an&nbsp;image&nbsp;file&nbsp;name.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">static</span>&nbsp;<span class="datatype">void</span>&nbsp;<span class="specialword">main</span>(String[]&nbsp;args)  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Load&nbsp;the&nbsp;image&nbsp;which&nbsp;file&nbsp;name&nbsp;was&nbsp;passed&nbsp;as&nbsp;the&nbsp;first&nbsp;argument&nbsp;to&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;application.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;PlanarImage&nbsp;image&nbsp;=&nbsp;JAI.create(<span class="string">"fileload"</span>,&nbsp;args[0]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;some&nbsp;information&nbsp;about&nbsp;the&nbsp;image  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;imageInfo&nbsp;=&nbsp;<span class="string">"Dimensions:&nbsp;"</span>+image.getWidth()+<span class="string">"x"</span>+image.getHeight()+  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">"&nbsp;Bands:"</span>+image.getNumBands();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;a&nbsp;frame&nbsp;for&nbsp;display.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;JFrame&nbsp;frame&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;JFrame();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setTitle(<span class="string">"DisplayJAI:&nbsp;"</span>+args[0]);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Get&nbsp;the&nbsp;JFrame's&nbsp;ContentPane.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;Container&nbsp;contentPane&nbsp;=&nbsp;frame.getContentPane();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;contentPane.setLayout(<span class="specialword">new</span>&nbsp;BorderLayout());  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Create&nbsp;an&nbsp;instance&nbsp;of&nbsp;DisplayJAI.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;DisplayJAI&nbsp;dj&nbsp;=&nbsp;<span class="specialword">new</span>&nbsp;DisplayJAI(image);  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;to&nbsp;the&nbsp;JFrame's&nbsp;ContentPane&nbsp;an&nbsp;instance&nbsp;of&nbsp;JScrollPane&nbsp;containing&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;DisplayJAI&nbsp;instance.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;contentPane.add(<span class="specialword">new</span>&nbsp;JScrollPane(dj),BorderLayout.CENTER);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Add&nbsp;a&nbsp;text&nbsp;label&nbsp;with&nbsp;the&nbsp;image&nbsp;information.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;contentPane.add(<span class="specialword">new</span>&nbsp;JLabel(imageInfo),BorderLayout.SOUTH);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;<span class="comment">//&nbsp;Set&nbsp;the&nbsp;closing&nbsp;operation&nbsp;so&nbsp;the&nbsp;application&nbsp;is&nbsp;finished.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setSize(400,400);&nbsp;<span class="comment">//&nbsp;adjust&nbsp;the&nbsp;frame&nbsp;size.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;frame.setVisible(<span class="specialword">true</span>);&nbsp;<span class="comment">//&nbsp;show&nbsp;the&nbsp;frame.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;&nbsp;&nbsp;}  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;55&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>


<p>The figure below shows a screenshot of the graphical interface implemented in class
<tt>DisplayJAIExample</tt>.</p>

<a name="imagedisplaydisplayingimageswiththettdisplayjaittclassdisplayingimageswiththettdisplayjaittclassscreenshotofthettdisplayjaiexamplettapplication">&nbsp;</a><img class="figure" src="Resources/Screenshots/DisplayJAIExample.png" border=0 alt="Screenshot of the <tt>DisplayJAIExample</tt> application."><p class="caption">Screenshot of the <tt>DisplayJAIExample</tt> application.</p>
<div class="spacer">&nbsp;</div>








<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="1200-create-gl.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="1200-create-gl.jsp">Creating Gray-Level Images</a></td><td class="navigation1"><a href="1300-create-rgb.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="1300-create-rgb.jsp">Creating RGB Images</a></td><td class="navigation0"><a href="2050-display-displayjai.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="2050-display-displayjai.jsp">Displaying Images with the <tt>DisplayJAI</tt> class</a></td><td class="navigation1"><a href="2060-display-extendingdisplayjai.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="2060-display-extendingdisplayjai.jsp">Extending the <tt>DisplayJAI</tt> class</a></td><td class="navigation2"><a href="2100-display-multipleimages.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="2100-display-multipleimages.jsp">Displaying Multiple Images</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150315030428/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150315030428/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150315030428/https://ssl." : "/web/20150315030428/http://www.");
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
     FILE ARCHIVED ON 3:04:28 Mar 15, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 0:51:54 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
