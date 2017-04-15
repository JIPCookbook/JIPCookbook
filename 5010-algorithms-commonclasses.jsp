


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app7.us.archive.org";archive_analytics.values.server_ms=246;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/5010-algorithms-commonclasses.jsp";

var firstYear = 1996;
var displayDay = "16";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/5010-algorithms-commonclasses.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20100716203849" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    Jun
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 20:38:49 Jul 16, 2010">JUL</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20100825013840/http://www.lac.inpe.br/JIPCookbook/5010-algorithms-commonclasses.jsp" title="25 Aug 2010"><strong>AUG</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                       <img src="/static/images/toolbar/wm_tb_prv_off.png" alt="Previous capture" width="14" height="16" border="0" />
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 20:38:49 Jul 16, 2010">16</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20100825013840/http://www.lac.inpe.br/JIPCookbook/5010-algorithms-commonclasses.jsp" title="1:38:40 Aug 25, 2010"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   2009
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 20:38:49 Jul 16, 2010">2010</td>
	       <td class="f" nowrap="nowrap">
               
                   2011
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20100716203849*/http://www.lac.inpe.br/JIPCookbook/5010-algorithms-commonclasses.jsp" title="See a list of every capture for this URL">4 captures</a>
           <div class="r" title="Timespan for captures of this URL">16 Jul 10 - 22 Dec 10</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:6:000000110011_2011:-1:000000000000_2012:-1:000000000000_2013:-1:000000000000_2014:-1:000000000000_2015:-1:000000000000_2016:-1:000000000000_2017:-1:000000000000" />
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
<a href="/web/20100716203849/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20100716203849/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">Common Classes</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="5010-algorithms-commonclasses.jsp#algorithmscommonclassesimageprocessingtasks">Image Processing Tasks</a>
</div>
</div>

<p class="section"><a name="algorithmscommonclassesimageprocessingtasks"></a>Image Processing Tasks</p>


<p>Most of the algorithms presented in this section can take some time to execute, therefore it would be nice to have them
implemented by classes that are executed in their own threads.</p>
<p>The abstract class <tt>ImageProcessingTask</tt>, shown below, serves as a base 
class for most of the algorithms in this section. That class extends <tt>Thread</tt> and contains
some abstract methods that can be used to inform the calling class of the status of the task.

<div class="code" style="width:900px">
<div class="codetitle codetr"><a name="algorithmscommonclassesimageprocessingtasksimageprocessingtaskjava">&nbsp;</a><a href="/web/20100716203849/http://www.lac.inpe.br/JIPCookbook/Code/algorithms/common/ImageProcessingTask.java.txt"><img width=30 height=16 vspace=0 hspace=2 border=0 src="Images/download.png" alt="download"></a>ImageProcessingTask.java</div><div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;1&nbsp;</span><span class="codecontents"><span class="comment">/*  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;2&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Part&nbsp;of&nbsp;the&nbsp;Java&nbsp;Image&nbsp;Processing&nbsp;Cookbook,&nbsp;please&nbsp;see  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;3&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;4&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;for&nbsp;information&nbsp;on&nbsp;usage&nbsp;and&nbsp;distribution.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;5&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;Rafael&nbsp;Santos&nbsp;(rafael.santos@lac.inpe.br)  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;6&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;7&nbsp;</span><span class="codecontents"><span class="classword">package</span>&nbsp;algorithms.common;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;8&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;&nbsp;9&nbsp;</span><span class="codecontents"><span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;10&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;abstract&nbsp;class&nbsp;represents&nbsp;a&nbsp;image&nbsp;processing&nbsp;task&nbsp;that&nbsp;is&nbsp;executed  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;11&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;on&nbsp;its&nbsp;own&nbsp;thread.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;12&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;This&nbsp;class&nbsp;uses&nbsp;the&nbsp;concept&nbsp;of&nbsp;processing&nbsp;task&nbsp;size&nbsp;and&nbsp;position&nbsp;-&nbsp;if  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;13&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;one&nbsp;can&nbsp;estimate&nbsp;the&nbsp;size&nbsp;(in&nbsp;steps,&nbsp;for&nbsp;example)&nbsp;of&nbsp;the&nbsp;task,&nbsp;an  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;14&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;application&nbsp;could&nbsp;get&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;processing,&nbsp;i.e.&nbsp;how&nbsp;far&nbsp;we  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;15&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*&nbsp;are&nbsp;on&nbsp;the&nbsp;task.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;16&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;17&nbsp;</span><span class="codecontents"><span class="modifierword">public</span>&nbsp;<span class="modifierword">abstract</span>&nbsp;<span class="classword">class</span>&nbsp;ImageProcessingTask&nbsp;<span class="classword">extends</span>&nbsp;Thread  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;18&nbsp;</span><span class="codecontents">&nbsp;&nbsp;{  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;19&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;20&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;is&nbsp;the&nbsp;method&nbsp;(inherited&nbsp;from&nbsp;Thread)&nbsp;which&nbsp;will&nbsp;do&nbsp;the&nbsp;bulk  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;21&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;image&nbsp;processing.&nbsp;It&nbsp;is&nbsp;declared&nbsp;as&nbsp;abstract&nbsp;as&nbsp;a&nbsp;reminder&nbsp;to&nbsp;the  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;22&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;programmer,&nbsp;which&nbsp;must&nbsp;implement&nbsp;it.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;23&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;24&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">abstract</span>&nbsp;<span class="datatype">void</span>&nbsp;run();  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;25&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;26&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;27&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;size&nbsp;of&nbsp;the&nbsp;image&nbsp;processing&nbsp;task.&nbsp;The&nbsp;size&nbsp;can  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;28&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;be&nbsp;any&nbsp;estimated&nbsp;value&nbsp;measured&nbsp;in&nbsp;any&nbsp;unit&nbsp;(e.g.&nbsp;number&nbsp;of&nbsp;loops&nbsp;or  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;29&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;processed&nbsp;pixels).  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;30&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;must&nbsp;be&nbsp;implemented&nbsp;on&nbsp;classes&nbsp;which&nbsp;inherit&nbsp;from&nbsp;this&nbsp;one&nbsp;and&nbsp;its  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;31&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;result&nbsp;should&nbsp;be&nbsp;constant,&nbsp;i.e.&nbsp;not&nbsp;rely&nbsp;on&nbsp;variables&nbsp;or&nbsp;counters&nbsp;that&nbsp;may  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;32&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;change&nbsp;during&nbsp;the&nbsp;execution&nbsp;of&nbsp;the&nbsp;algorithm.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;33&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;size&nbsp;of&nbsp;the&nbsp;image&nbsp;processing&nbsp;size.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;34&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;35&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">abstract</span>&nbsp;<span class="datatype">long</span>&nbsp;getSize();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;36&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;37&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;38&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;the&nbsp;position&nbsp;on&nbsp;the&nbsp;image&nbsp;processing&nbsp;task,&nbsp;i.e.&nbsp;how&nbsp;many  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;39&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;processing&nbsp;steps&nbsp;were&nbsp;already&nbsp;done.&nbsp;The&nbsp;classes&nbsp;that&nbsp;inherits&nbsp;from&nbsp;this&nbsp;one  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;40&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;must&nbsp;implement&nbsp;this&nbsp;method.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;41&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;the&nbsp;position&nbsp;of&nbsp;the&nbsp;task&nbsp;processing.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;42&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;43&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">abstract</span>&nbsp;<span class="datatype">long</span>&nbsp;getPosition();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;44&nbsp;</span><span class="codecontents">&nbsp;  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;45&nbsp;</span><span class="codecontents">&nbsp;<span class="comment">/**  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;46&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;returns&nbsp;true&nbsp;if&nbsp;the&nbsp;task&nbsp;is&nbsp;finished.&nbsp;Please&nbsp;notice&nbsp;that  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;47&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;it&nbsp;is&nbsp;not&nbsp;implemented&nbsp;as&nbsp;(position&nbsp;==&nbsp;size)&nbsp;since&nbsp;there&nbsp;may&nbsp;be&nbsp;cases  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;48&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;where&nbsp;the&nbsp;task&nbsp;size&nbsp;is&nbsp;estimated&nbsp;and&nbsp;the&nbsp;position&nbsp;may&nbsp;not&nbsp;be&nbsp;ever  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;49&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;equal&nbsp;to&nbsp;the&nbsp;exact&nbsp;size.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;50&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;This&nbsp;method&nbsp;must&nbsp;be&nbsp;implemented&nbsp;on&nbsp;classes&nbsp;which&nbsp;inherit&nbsp;from&nbsp;this&nbsp;one.  </span></span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;51&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*&nbsp;@return&nbsp;true&nbsp;if&nbsp;the&nbsp;processing&nbsp;task&nbsp;has&nbsp;finished.  </span></span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;52&nbsp;</span><span class="codecontents"><span class="comment">&nbsp;&nbsp;*/</span>  </span></div>
<div class="codeline oddline"><span class="linenumbers">&nbsp;&nbsp;53&nbsp;</span><span class="codecontents">&nbsp;&nbsp;<span class="modifierword">public</span>&nbsp;<span class="modifierword">abstract</span>&nbsp;<span class="datatype">boolean</span>&nbsp;isFinished();  </span></div>
<div class="codeline evenline"><span class="linenumbers">&nbsp;&nbsp;54&nbsp;</span><span class="codecontents">&nbsp;&nbsp;}  </span></div>
<div class="codespacer">&nbsp;</div></div>








<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="2300-display-annotation.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="2300-display-annotation.jsp">Drawing Over Images</a></td><td class="navigation1"><a href="2320-display-sampling.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="2320-display-sampling.jsp">Sampling Data on Displayed Images</a></td><td class="navigation0"><a href="5010-algorithms-commonclasses.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="5010-algorithms-commonclasses.jsp">Common Classes</a></td><td class="navigation1"><a href="5250-algorithms-fuzzycmeans.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="5250-algorithms-fuzzycmeans.jsp">Fuzzy C-Means Clustering</a></td><td class="navigation2"><a href="6040-howto-compressimages.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="6040-howto-compressimages.jsp">How can I reduce an image file size without losing quality?</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20100716203849/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20100716203849/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20100716203849/https://ssl." : "/web/20100716203849/http://www.");
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
     FILE ARCHIVED ON 20:38:49 Jul 16, 2010 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 2:14:10 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
