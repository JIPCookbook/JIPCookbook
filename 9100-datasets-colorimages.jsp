


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app13.us.archive.org";archive_analytics.values.server_ms=417;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/9100-datasets-colorimages.jsp";

var firstYear = 1996;
var displayDay = "21";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/9100-datasets-colorimages.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150321204247" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20131208002752/http://www.lac.inpe.br/JIPCookbook/9100-datasets-colorimages.jsp" title="8 Dec 2013">DEC</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 20:42:47 Mar 21, 2015">MAR</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20160418164955/http://www.lac.inpe.br/JIPCookbook/9100-datasets-colorimages.jsp" title="18 Apr 2016"><strong>APR</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131208002752/http://www.lac.inpe.br/JIPCookbook/9100-datasets-colorimages.jsp" title="0:27:52 Dec 8, 2013"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 20:42:47 Mar 21, 2015">21</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20160418164955/http://www.lac.inpe.br/JIPCookbook/9100-datasets-colorimages.jsp" title="16:49:55 Apr 18, 2016"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20131208002752/http://www.lac.inpe.br/JIPCookbook/9100-datasets-colorimages.jsp" title="8 Dec 2013"><strong>2013</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 20:42:47 Mar 21, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
	           <a href="/web/20160418164955/http://www.lac.inpe.br/JIPCookbook/9100-datasets-colorimages.jsp" title="18 Apr 2016"><strong>2016</strong></a>
	       
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150321204247*/http://www.lac.inpe.br/JIPCookbook/9100-datasets-colorimages.jsp" title="See a list of every capture for this URL">13 captures</a>
           <div class="r" title="Timespan for captures of this URL">29 Jan 10 - 18 Apr 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:100000110010_2011:-1:010101010010_2012:-1:100000000000_2013:-1:000000000001_2014:-1:000000000000_2015:2:001000000000_2016:-1:000100000000_2017:-1:000000000000" />
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
<a href="/web/20150321204247/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150321204247/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">Color Images</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesintroduction">Introduction</a>
</div>
<div class="toc3"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesmapschartsetc">Maps, charts, etc.</a>
</div>
<div class="toc3"><a href="9100-datasets-colorimages.jsp#datasetscolorimagessceneswithobjects">Scenes (with objects)</a>
</div>
<div class="toc3"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesremotesensingaerialimages">Remote sensing/aerial images</a>
</div>
<div class="toc3"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesastronomicalimages">Astronomical images</a>
</div>
<div class="toc3"><a href="9100-datasets-colorimages.jsp#datasetscolorimagesdocuments">Documents</a>
</div>
</div>

<p class="section"><a name="datasetscolorimagesintroduction"></a>Introduction</p>

<p>This chapter contains some downloadable datasets (mostly images of different types). Some of those datasets were used in examples
throughout this book. Click on the image icons to download the datasets/images. Please note that some of those image and data files are <b>quite</b> large.</p>



<p class="section"><a name="datasetscolorimagesmapschartsetc"></a>Maps, charts, etc.</p>


<table class="simpletable">
<tr>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesmapschartsetcalandusetopographicmapofmorijapan">&nbsp;</a><a href="Resources/Datasets/mori-200.png"><img class="figure" src="Resources/Datasets/mori-200_icon.jpg" border=0 alt="A land use/topographic map of Mori, Japan."></a>
<p class="caption">A land use/topographic map of Mori, Japan.<br>Click on the icon for a larger image.<br>(PNG, 1122x854, 2.3M)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesmapschartsetcalandusetopographicmapoftakamorijapan">&nbsp;</a><a href="Resources/Datasets/takamori2-200.png"><img class="figure" src="Resources/Datasets/takamori2-200_icon.jpg" border=0 alt="A land use/topographic map of Takamori, Japan."></a>
<p class="caption">A land use/topographic map of Takamori, Japan.<br>Click on the icon for a larger image.<br>(PNG, 1650x1022, 4.2M)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesmapschartsetcalandusetopographicmapofyahogatakejapan">&nbsp;</a><a href="Resources/Datasets/yahogatake-200.png"><img class="figure" src="Resources/Datasets/yahogatake-200_icon.jpg" border=0 alt="A land use/topographic map of Yahogatake, Japan."></a>
<p class="caption">A land use/topographic map of Yahogatake, Japan.<br>Click on the icon for a larger image.<br>(PNG, 1372x1300, 4.3M)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesmapschartsetcanurbanlandusemapofkashiijapan">&nbsp;</a><a href="Resources/Datasets/kashii.tif"><img class="figure" src="Resources/Datasets/kashii_icon.jpg" border=0 alt="An urban/land use map of Kashii, Japan."></a>
<p class="caption">An urban/land use map of Kashii, Japan.<br>Click on the icon for a larger image.<br>(TIFF, 1280x1287, 3.6M)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesmapschartsetcanoldtopographicmapofsãojosédoscamposbrazil">&nbsp;</a><a href="Resources/Datasets/Sao_Jose_Campos_2769_1.tif"><img class="figure" src="Resources/Datasets/Sao_Jose_Campos_2769_1_icon.jpg" border=0 alt="An old topographic map of São José dos Campos, Brazil."></a>
<p class="caption">An old topographic map of São José dos Campos, Brazil.<br>Click on the icon for a larger image.<br>(TIFF, 1168x1495, 1.4M)</p>
<div class="spacer">&nbsp;</div>

  </td>
</tr>
</table>



<p class="section"><a name="datasetscolorimagessceneswithobjects"></a>Scenes (with objects)</p>


<table class="simpletable">
<tr>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagessceneswithobjectstoy1">&nbsp;</a><a href="Resources/Datasets/toy1.jpg"><img class="figure" src="Resources/Datasets/toy1_icon.jpg" border=0 alt="Toy 1."></a>
<p class="caption">Toy 1.<br>Click on the icon for a larger image.<br>(JPEG, 1536x1024, 197.7K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagessceneswithobjectstoy2">&nbsp;</a><a href="Resources/Datasets/toy2.jpg"><img class="figure" src="Resources/Datasets/toy2_icon.jpg" border=0 alt="Toy 2."></a>
<p class="caption">Toy 2.<br>Click on the icon for a larger image.<br>(JPEG, 1536x1024, 163.9K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagessceneswithobjectstoy3">&nbsp;</a><a href="Resources/Datasets/toy3.jpg"><img class="figure" src="Resources/Datasets/toy3_icon.jpg" border=0 alt="Toy 3."></a>
<p class="caption">Toy 3.<br>Click on the icon for a larger image.<br>(JPEG, 1024x768, 403.5K)</p>
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



<p class="section"><a name="datasetscolorimagesremotesensingaerialimages"></a>Remote sensing/aerial images</p>


<table class="simpletable">
<tr>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesremotesensingaerialimagessãojosédoscamposikonosimage1">&nbsp;</a><a href="Resources/Datasets/sjc_region.tif"><img class="figure" src="Resources/Datasets/sjc_region_icon.jpg" border=0 alt="São José dos Campos Ikonos image (1)."></a>
<p class="caption">São José dos Campos Ikonos image (1).<br>Click on the icon for a larger image.<br>(TIFF, 3000x2000, <span class="alert">11.4M</span>)<br>Image courtesy of Space Imaging of Brazil, Inc.</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesremotesensingaerialimagessãojosédoscamposikonosimage2">&nbsp;</a><a href="Resources/Datasets/sjc_area01.png"><img class="figure" src="Resources/Datasets/sjc_area01_icon.jpg" border=0 alt="São José dos Campos Ikonos image (2)."></a>
<p class="caption">São José dos Campos Ikonos image (2).<br>Click on the icon for a larger image.<br>(PNG, 1484x1806, 4.5M)<br>Image courtesy of Space Imaging of Brazil, Inc.</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
     &nbsp;
  </td>
  <td class="simpletable fivecolumns">
     &nbsp;
  </td>
  <td class="simpletable fivecolumns">
     &nbsp;
  </td>
</table>




<p class="section"><a name="datasetscolorimagesastronomicalimages"></a>Astronomical images</p>


<p>These Hubble Ultra Deep Field images are small regions of a much larger image which can be downloaded from the
<a href="/web/20150321204247/http://hubblesite.org/gallery/album/entire_collection/pr2004028b/">Hubblesite gallery</a>.</p>

<table class="simpletable">
<tr>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesastronomicalimageshubbleultradeepfielda">&nbsp;</a><a href="Resources/Datasets/deep_a.png"><img class="figure" src="Resources/Datasets/deep_a_icon.jpg" border=0 alt="Hubble Ultra Deep Field (A)."></a>
<p class="caption">Hubble Ultra Deep Field (A).<br>Click on the icon for a larger image.<br>(PNG, 1200x1200, 3.8M)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesastronomicalimageshubbleultradeepfieldb">&nbsp;</a><a href="Resources/Datasets/deep_b.png"><img class="figure" src="Resources/Datasets/deep_b_icon.jpg" border=0 alt="Hubble Ultra Deep Field (B)."></a>
<p class="caption">Hubble Ultra Deep Field (B).<br>Click on the icon for a larger image.<br>(PNG, 1200x1200, 3.8M)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesastronomicalimageshubbleultradeepfieldc">&nbsp;</a><a href="Resources/Datasets/deep_c.png"><img class="figure" src="Resources/Datasets/deep_c_icon.jpg" border=0 alt="Hubble Ultra Deep Field (C)."></a>
<p class="caption">Hubble Ultra Deep Field (C).<br>Click on the icon for a larger image.<br>(PNG, 1200x1200, 3.8M)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesastronomicalimageshubbleultradeepfieldd">&nbsp;</a><a href="Resources/Datasets/deep_d.png"><img class="figure" src="Resources/Datasets/deep_d_icon.jpg" border=0 alt="Hubble Ultra Deep Field (D)."></a>
<p class="caption">Hubble Ultra Deep Field (D).<br>Click on the icon for a larger image.<br>(PNG, 1200x1200, 3.9M)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesastronomicalimageshubbleultradeepfielde">&nbsp;</a><a href="Resources/Datasets/deep_e.png"><img class="figure" src="Resources/Datasets/deep_e_icon.jpg" border=0 alt="Hubble Ultra Deep Field (E)."></a>
<p class="caption">Hubble Ultra Deep Field (E).<br>Click on the icon for a larger image.<br>(PNG, 1200x1200, 3.9M)</p>
<div class="spacer">&nbsp;</div>

  </td>
</tr>
</table>





<p class="section"><a name="datasetscolorimagesdocuments"></a>Documents</p>


<table class="simpletable">
<tr>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesdocumentsbookcoverversion1">&nbsp;</a><a href="Resources/Datasets/page01_small.png"><img class="figure" src="Resources/Datasets/page01_small_icon.jpg" border=0 alt="Book cover (version 1)."></a>
<p class="caption">Book cover (version 1).<br>Click on the icon for a larger image.<br>(PNG, 343x481, 196.0K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesdocumentsbookcoverversion2">&nbsp;</a><a href="Resources/Datasets/page02_small.png"><img class="figure" src="Resources/Datasets/page02_small_icon.jpg" border=0 alt="Book cover (version 2)."></a>
<p class="caption">Book cover (version 2).<br>Click on the icon for a larger image.<br>(PNG, 383x489, 217.1K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesdocumentsbookcoverversion4">&nbsp;</a><a href="Resources/Datasets/page04_small.png"><img class="figure" src="Resources/Datasets/page04_small_icon.jpg" border=0 alt="Book cover (version 4)."></a>
<p class="caption">Book cover (version 4).<br>Click on the icon for a larger image.<br>(PNG, 474x544, 303.0K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesdocumentsbookcoverversion6">&nbsp;</a><a href="Resources/Datasets/page06_small.png"><img class="figure" src="Resources/Datasets/page06_small_icon.jpg" border=0 alt="Book cover (version 6)."></a>
<p class="caption">Book cover (version 6).<br>Click on the icon for a larger image.<br>(PNG, 510x431, 273.0K)</p>
<div class="spacer">&nbsp;</div>

  </td>
  <td class="simpletable fivecolumns">
    <a name="datasetscolorimagesdocumentsbookcoverversion8">&nbsp;</a><a href="Resources/Datasets/page08_small.png"><img class="figure" src="Resources/Datasets/page08_small_icon.jpg" border=0 alt="Book cover (version 8)."></a>
<p class="caption">Book cover (version 8).<br>Click on the icon for a larger image.<br>(PNG, 474x335, 194.2K)</p>
<div class="spacer">&nbsp;</div>

  </td>
</tr>
</table>






<div class="navigation"><table class="navigation"><tr><td class="navigation2"><a href="7020-tutorial-supervisedclassification.jsp"><img class="navigation" src="Images/prevprev.png" alt="prev prev"></a><br><a href="7020-tutorial-supervisedclassification.jsp">A Brief Tutorial on Supervised Image Classification</a></td><td class="navigation1"><a href="8000-jaistuff.jsp"><img class="navigation" src="Images/prev.png" alt="prev"></a><br><a href="8000-jaistuff.jsp">Old code from the JAIStuff Project</a></td><td class="navigation0"><a href="9100-datasets-colorimages.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="9100-datasets-colorimages.jsp">Color Images</a></td><td class="navigation1"><a href="9120-datasets-glimages.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="9120-datasets-glimages.jsp">Gray Level Images</a></td><td class="navigation2"><a href="9130-datasets-nonbyteimages.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="9130-datasets-nonbyteimages.jsp">Non-byte Images</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150321204247/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150321204247/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150321204247/https://ssl." : "/web/20150321204247/http://www.");
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
     FILE ARCHIVED ON 20:42:47 Mar 21, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 1:27:01 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
