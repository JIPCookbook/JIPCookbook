


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app15.us.archive.org";archive_analytics.values.server_ms=333;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/iref.jsp";

var firstYear = 1996;
var displayDay = "19";
var displayMonth = "Apr";
var displayYear = "2016";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/iref.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20160419015715" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20160205140610/http://www.lac.inpe.br/JIPCookbook/iref.jsp" title="5 Feb 2016">FEB</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 1:57:15 Apr 19, 2016">APR</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20160711140331/http://www.lac.inpe.br/JIPCookbook/iref.jsp" title="11 Jul 2016"><strong>JUL</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20160205140610/http://www.lac.inpe.br/JIPCookbook/iref.jsp" title="14:06:10 Feb 5, 2016"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 1:57:15 Apr 19, 2016">19</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20160711140331/http://www.lac.inpe.br/JIPCookbook/iref.jsp" title="14:03:31 Jul 11, 2016"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20150224053113/http://www.lac.inpe.br/JIPCookbook/iref.jsp" title="24 Feb 2015"><strong>2015</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 1:57:15 Apr 19, 2016">2016</td>
	       <td class="f" nowrap="nowrap">
               
                   2017
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20160419015715*/http://www.lac.inpe.br/JIPCookbook/iref.jsp" title="See a list of every capture for this URL">25 captures</a>
           <div class="r" title="Timespan for captures of this URL">30 Jan 10 - 17 Sep 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:100200110010_2011:-1:101021011010_2012:-1:101100000000_2013:-1:000000000000_2014:-1:000000000000_2015:-1:010100000001_2016:3:010100111000_2017:-1:000000000000" />
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
<a href="/web/20160419015715/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
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

<div class="toc0">Index&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="charindex"><a href="#C">C</a>&nbsp;-&nbsp;<a href="#D">D</a>&nbsp;-&nbsp;<a href="#I">I</a>&nbsp;-&nbsp;<a href="#J">J</a>&nbsp;-&nbsp;<a href="#L">L</a>&nbsp;-&nbsp;<a href="#M">M</a>&nbsp;</span></div>
<div class="toc1">C</div><div class="toc2"><b>Compression</b>&nbsp;&nbsp;<a href="howcanireduceanimagefilesizewithoutlosingquality_compression_00001">1</a>.</div><div class="toc3"><b>Information Loss</b>&nbsp;&nbsp;<a href="howcanireduceanimagefilesizewithoutlosingquality_compressioninformationloss_00003">1</a>.</div><div class="toc3"><b>Lossless</b>&nbsp;&nbsp;<a href="howcanireduceanimagefilesizewithoutlosingquality_compressionlossless_00004">1</a>.</div><div class="toc3"><b>Lossy</b>&nbsp;&nbsp;<a href="howcanireduceanimagefilesizewithoutlosingquality_compressionlossy_00005">1</a>.</div><div class="toc1">D</div><div class="toc2"><b>Display</b>&nbsp;&nbsp;</div><div class="toc3"><b>Image</b>&nbsp;&nbsp;<a href="displayingimageswiththettdisplayjaittclass_displayimage_00001">1</a>.</div><div class="toc3"><b>Multiple Images</b>&nbsp;&nbsp;<a href="displayingmultipleimages_displaymultipleimages_00001">1</a>.</div><div class="toc3"><b>Synchronized Images</b>&nbsp;&nbsp;<a href="displayingmultipleimages_displaysynchronizedimages_00002">1</a>.</div><div class="toc3"><b>Thumbnails</b>&nbsp;&nbsp;<a href="displayinginteractivethumbnails_displaythumbnails_00001">1</a>.</div><div class="toc1">I</div><div class="toc2"><b>Image classification</b>&nbsp;&nbsp;<a href="abrieftutorialonsupervisedimageclassification_imageclassification_00001">1</a>.</div><div class="toc2"><b>Image</b>&nbsp;&nbsp;</div><div class="toc3"><b>Compression</b>&nbsp;&nbsp;<a href="howcanireduceanimagefilesizewithoutlosingquality_imagecompression_00002">1</a>.</div><div class="toc1">J</div><div class="toc2"><b>JAIStuff</b>&nbsp;&nbsp;<a href="aboutthisebook_jaistuff_00001">1</a>.</div><div class="toc2"><b>JAI</b>&nbsp;&nbsp;</div><div class="toc3"><b>Mailing List</b>&nbsp;&nbsp;<a href="aboutthisebook_jaimailinglist_00002">1</a>.</div><div class="toc1">L</div><div class="toc2"><b>License</b>&nbsp;&nbsp;<a href="aboutthisebook_license_00004">1</a>.</div><div class="toc1">M</div><div class="toc2"><b>Mailing List</b>&nbsp;&nbsp;</div><div class="toc3"><b>JAI</b>&nbsp;&nbsp;<a href="aboutthisebook_mailinglistjai_00003">1</a>.</div> 


</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20160419015715/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20160419015715/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20160419015715/https://ssl." : "/web/20160419015715/http://www.");
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
     FILE ARCHIVED ON 1:57:15 Apr 19, 2016 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 0:44:05 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
