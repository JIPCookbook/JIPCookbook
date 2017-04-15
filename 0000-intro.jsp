



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>


<script type="text/javascript" src="/static/js/analytics.js"></script>
<script type="text/javascript">archive_analytics.values.server_name="wwwb-app13.us.archive.org";archive_analytics.values.server_ms=178;</script>
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
var wbCurrentUrl = "http://www.lac.inpe.br/JIPCookbook/0000-intro.jsp";

var firstYear = 1996;
var displayDay = "3";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb"><input type="text" name="url" id="wmtbURL" value="http://www.lac.inpe.br/JIPCookbook/0000-intro.jsp" style="width:400px;" onfocus="this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20150303221846" /><input type="submit" value="Go" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td class="n" rowspan="2">
           <table><tbody>
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr class="m">
           	<td class="b" nowrap="nowrap">
		
		    <a href="/web/20150101012239/http://www.lac.inpe.br/JIPCookbook/0000-intro.jsp" title="1 Jan 2015">JAN</a>
		
		</td>
		<td class="c" id="displayMonthEl" title="You are here: 22:18:46 Mar 3, 2015">MAR</td>
		<td class="f" nowrap="nowrap">
		
		    <a href="/web/20160124234834/http://www.lac.inpe.br/JIPCookbook/0000-intro.jsp" title="24 Jan 2016"><strong>JAN</strong></a>
		
                </td>
	    </tr>
           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr class="d">
               <td class="b" nowrap="nowrap">
               
                   <a href="/web/20150101012239/http://www.lac.inpe.br/JIPCookbook/0000-intro.jsp" title="1:22:39 Jan 1, 2015"><img src="/static/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
               
               </td>
               <td class="c" id="displayDayEl" style="width:34px;font-size:24px;" title="You are here: 22:18:46 Mar 3, 2015">3</td>
	       <td class="f" nowrap="nowrap">
               
		   <a href="/web/20160124234834/http://www.lac.inpe.br/JIPCookbook/0000-intro.jsp" title="23:48:34 Jan 24, 2016"><img src="/static/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0" /></a>
	       
	       </td>
           </tr>
           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr class="y">
	       <td class="b" nowrap="nowrap">
               
                   <a href="/web/20140210113422/http://www.lac.inpe.br/JIPCookbook/0000-intro.jsp" title="10 Feb 2014"><strong>2014</strong></a>
               
               </td>
               <td class="c" id="displayYearEl" title="You are here: 22:18:46 Mar 3, 2015">2015</td>
	       <td class="f" nowrap="nowrap">
               
                   2016
               
	       </td>
           </tr>
           </tbody></table>
       </td>
       </tr>
       <tr>
       <td class="s">
           <a class="t" href="/web/20150303221846*/http://www.lac.inpe.br/JIPCookbook/0000-intro.jsp" title="See a list of every capture for this URL">14 captures</a>
           <div class="r" title="Timespan for captures of this URL">1 Mar 10 - 24 Jan 16</div>
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
		 src="/web/jsp/graph.jsp?graphdata=550_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000000_2004:-1:000000000000_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:001100010011_2011:-1:000000001010_2012:-1:110000000000_2013:-1:000000000100_2014:-1:010000000000_2015:2:101000000000_2016:-1:100000000000_2017:-1:000000000000" />
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
<a href="/web/20150303221846/http://www.inpe.br/"><img width=74 height=60 border=0 src="Images/LogoInpe50.png" align=right hspace=5 vspace=0 alt="Logotipo INPE"></a>
<p class="title"><a href="index.jsp">Java Image Processing Cookbook</a></p>
<p class="author"><a href="/web/20150303221846/http://www.lac.inpe.br/~rafael.santos">Rafael Santos</a></p>
</div>
<!-- END LETTERHEAD -->
<div class="menu"><a href="index.jsp">Table of Contents</a> - 
<a href="lof.jsp">List of Figures</a> - 
<a href="lol.jsp">List of Listings</a> - 
<a href="loc.jsp">List of Classes</a> - 
<a href="iref.jsp">Index</a>
</div><div class="body">

<p class="chapter">About this e-book</p>
<div class="minitoc"><p class="minitoc">Table of Contents</p><div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookabout">About</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookdisclaimers">Disclaimers</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebooklicense">License</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookfaq">FAQ</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookotherresources">Other resources</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookacknowledgementsandthanks">Acknowledgements and Thanks</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookgettinghelp">Getting Help</a>
</div>
<div class="toc3"><a href="0000-intro.jsp#introductionaboutthisebookstatistics">Statistics</a>
</div>
</div>

<p class="section"><a name="introductionaboutthisebookabout"></a>About</p>

<p class="note">
I am <i>still</i> rewriting some pages and code examples from the JAIStuff site and 
from other sources to this new format. If you are interested in a particular code or document that was present 
in a previous version please <a href="/web/20150303221846/http://www.lac.inpe.br/~rafael.santos">let me know</a> and I will try and add it to the site sooner. <br>
<b>Chapters marked with three asterisks (***) are under construction and were included as placeholders (and will be completed as 
soon as possible).</b>
</p>

<p>This is a <b>free</b> e-book about digital image processing algorithms and functions with implementations in <a href="/web/20150303221846/http://java.sun.com/">Java</a>.
Some examples use the <a href="/web/20150303221846/https://java.sun.com/javase/technologies/desktop/media/jai">Java Advanced Imaging (JAI) API </a> --
 those are clearly marked so the reader can consider whether this API is really needed for his/her image processing task.</p>
<p>
 The purpose of the book is to serve as a code cookbook, with several chapters dedicated to specific image processing tasks or techniques
 instead of a structured, ordered book.</p>
 
<p>This e-book replaces both the <a href="/web/20150303221846/https://jaistuff.dev.java.net/">JAIStuff java.net site</a> (which will still be available but not maintained) 
 and other Java/JAI examples I used to host at my <a href="/web/20150303221846/http://www.lac.inpe.br/~rafael.santos">home page</a> (and which were removed).</p>

 

<p class="section"><a name="introductionaboutthisebookdisclaimers"></a>Disclaimers</p>


<ul class="b">
<li>All disclaimers apply: I don't work for Sun (or Oracle), this pages/code are not supported by Sun (or Oracle), 
    they cannot be held responsible, etc.</li>
<li>Some of the programs on this e-book may be copyrighted by <a href="/web/20150303221846/http://www.sun.com/">Sun</a>. 
    The copyright states that the code can be redistributed as long as the source copyright is maintained. 
    In those cases, I will only add comments for the code in order to make them clearer.</li>
<li>Some of the programs on this e-book have been copied (often with modifications) from code found on the 
    <a href="/web/20150303221846/https://jai.dev.java.net/servlets/ProjectMailingListList">Java Advanced Imaging mailing list</a>
    or in other publicly available resources. In these cases, links to the original sources will be provided 
    and all original copyright messages (if any) will be preserved.</li>
<li>English is not my first language, please point out spelling and grammar mistakes so I can make this a better resource.</li>
</ul>



<p class="section"><a name="introductionaboutthisebooklicense"></a>License</p>

<a rel="license" href="/web/20150303221846/http://creativecommons.org/licenses/by-nc-sa/3.0/"><img align="right" hspace="5" alt="Creative Commons License" style="border-width:0" src="Images/cc.png"></a>

<p>Except for the code copyrighted by others, all code and notes found here are subject to the 
  <a href="/web/20150303221846/http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons Attribution-Noncommercial-Share Alike 3.0 Unported License</a>.
  Commercial usage is possible, provided that
  <b>1)</b> Credit is given; 
  <b>2)</b> you let me know and add a reference to this e-book and 
  <b>3)</b> your usage does not restrict other possible (commercial or not) use of the contents of this e-book.</p>
  
<p>Software in this e-book (or from its previous versions) is used by:</p>
<ul class="b">
<li><b><a href="/web/20150303221846/http://www.genologics.com/">GenoLogics Life Sciences Software</a></b> in their products 
    <a href="/web/20150303221846/http://www.genologics.com/genomics">"Geneus"</a> and <a href="/web/20150303221846/http://www.genologics.com/proteomics">"Proteus"</a>. 
    Those software are helping life-science researchers find early cures for disease and novel solutions for the world's health problems, 
    and is in use at companies as diverse as Pfizer, Sanofi-Aventis, the Fred Hutch Cancer Research Center, Cancer Research UK, 
    the University of Texas, and many others (see full list at 
    <a href="/web/20150303221846/http://www.genologics.com/clients">http://www.genologics.com/clients</a>).</li>
<li><b><a href="/web/20150303221846/http://code.google.com/p/iqm/">Iqm</a></b>, an image processing application written in Java. 
    It is mainly constructed around the Java 
    JAI library and furthermore it incorporates the functionality of the popular ImageJ image processing 
    software. Single images, image sequences or an image stack can be processed in an interchangeable manner.
    Image processing settings can be easily adapted to a set of images by using an image manager. The final 
    processing of a stack of images can be done without any additional programming steps. The image manager 
    is a central part of Iqm’s architecture and allows a rapid comparison between different image processing 
    settings. Parallel processing of image sequences is supported.</li>
<li><b><a href="/web/20150303221846/http://www.bacteriacount.com/">Bacteria Count</a></b> is an online web-based application 
    that helps researchers count the bacteria in 
    bacteria culture images. Bacteria Count does this by semi-automatically identifying and visually 
    annotating the objects it finds in a bacteria culture image. The application is written in Java, 
    the user interface runs on Google App Engine and cpu-intensive image processing runs asynchronously 
    on scalable processors in the background. The image segmentation used by Bacteria Count is based on 
    the 2005 JAIstuff k-means cluster analysis. A preview version of Bacteria Count will be released 
    shortly at <a href="/web/20150303221846/http://www.bacteriacount.com/">www.bacteriacount.com</a>.</li>
</ul>

<p>If you use this e-book or code in your non-commercial project or if it helps you understand any image processing or Java/JAI
issue, <a href="/web/20150303221846/http://www.lac.inpe.br/~rafael.santos">please let me know</a>, it will help me justify the time spent on 
maintaining the e-book.</p>




<p class="section"><a name="introductionaboutthisebookfaq"></a>FAQ</p>

<ul class="b">
<li><i><b>Is there a printable or downloadable version of this book?</b></i><br>
    No. I eventually would like to do a PDF version of it, but since it will take a long time to write the book I decided not to have
    partial releases in a printable form.</li>
<li><i><b>I cannot compile the code!</b></i><br>
    Most of the code was compiled and tested in a laptop running Ubuntu 9.04, using version 1.6.0_16 of Sun's JDK and with JAI version 1.1.3.
    It should work with other operating systems and newer versions of Java and JAI.<br>
    In any case, please check the following:
    <ul class="b2">
      <li>Do you have the <a href="/web/20150303221846/https://java.sun.com/javase/technologies/desktop/media/jai">Java Advanced Imaging (JAI) API</a> installed? 
      Some of the classes require it -- search for a <tt>import javax.media.jai.*</tt> or similar statement in the class, if it is there, you will need
      to install JAI.</li>
      <li>Do you have the Java Development Kit version 6 or higher? Some of the classes uses features that are <b>not</b> compatible with previous 
      versions.</li>
      <li>Do you have all the classes that are required? Some applications uses classes from other sections of the book (e.g. 
      <tt>DisplayTwoSynchronizedImages</tt>). If this is the case, you will of course need to download also these classes. See the 
      <a href="lol.jsp">complete source code list</a> to locate any source code that is in this book.</li>
      <li>The compiler is your friend! If you get compiling error messages be sure to read (top to bottom) them to understand what is going on.  
      See the excellent <a href="/web/20150303221846/http://mindprod.com/jgloss/compileerrormessages.html">Java Glossary</a> for explanation on common compiler error messages.</li>
    </ul>
    </li>
</ul>



<p class="section"><a name="introductionaboutthisebookotherresources"></a>Other resources</p>

<ul class="b">
<li>A <a href="Resources/Docs/jaitutorial.pdf" title="Modificado em 22/10/13 15:12">tutorial (PDF, 417,2K)</a>
I gave on SIBGRAPI'04 (International Symposium on Computer Graphics, Image Processing and Vision, 2004) and 
published on the <a href="/web/20150303221846/http://www.inf.ufrgs.br/~revista"><i>Revista de Informática Teórica e Aplicada</i></a> 
(pp.93-123, Vol. 11, ISSN 01034308). Only some of the classes presented in these pages are on the PDF file.</li>
<li>See also the <a href="/web/20150303221846/https://jai.dev.java.net/servlets/ProjectMailingListList">Java Advanced Imaging mailing list</a> for much information on JAI.</li>
<li><a href="/web/20150303221846/http://www.lac.inpe.br/~rafael.santos/piapresentacoes.jsp">Some presentations</a> on JAI, image processing and other topics, <b>in portuguese</b>.</li> 
</ul>



 

<p class="section"><a name="introductionaboutthisebookacknowledgementsandthanks"></a>Acknowledgements and Thanks</p>

<p>Thanks to may of the people in the <a href="/web/20150303221846/https://jai.dev.java.net/servlets/ProjectMailingListList">Java Advanced Imaging mailing list</a> 
for answers <b>and</b> questions.</p>

<p>Some people had checked the code and pages for bugs and errors: 
 José Antonio Seoane Fernández, Zian Fanti Gutiérrez, Christian Danzmann, Li Li.</p>



<p class="section"><a name="introductionaboutthisebookgettinghelp"></a>Getting Help</p>

<p>Often I get e-mail messages with questions and requests for help in specific projects. Although I try to answer all these messages, 
it will make life easier for me and ensure a quicker response if you follow these basic rules:</p>
<ul class="b">
<li><b>Preferably post your question on the <a href="/web/20150303221846/https://jai.dev.java.net/servlets/ProjectMailingListList">JAI Mailing list</a></b>, which I read
       often. Other 
       people there will also be able and willing to help; and answers to the whole mailing list may be useful for other users too.</li>
<li><b>Let me know about the whole idea</b> instead of asking for help on some specific aspect of the project. 
       Is it a commercial project, a research project or a school/university assignment? Which are the exact requirements for your task?</li>
<li><b>Even if it <i>is</i> an assignment, let me know more about it.</b>
       I don't mind helping (even with assignments), but I need to know whether I should get 
       more information about the project before spending time trying to help on it, and I'd like to know whether you fully understand the problem you're 
       suppose to solve. <b>It does not mean that I will do it for you</b> -- so please don't send just the question expecting for the
       answer or for the code to solve a very specific problem.
       <br>Due to time restrictions I cannot help with code <b>and</b>
       with teaching basic image processing, which should be the responsibility of whoever gave you the task, anyway. 
       They are probably closer (and possibly more available) to you and have more knowledge about the task and expected results.
       Often they are also paid to teach or advise you, I wouldn't like to take the privilege and responsibility of advising away from them.</li>
<li><b>Show what you've already done.</b> It is <b><i>very</i></b> hard to answer generic questions without at least knowing what you've already implemented
       or tried.</li>
<li><b>Before asking me to send code,</b> browse or search the book! See if there is something similar to what you want to do by reading
       <a href="index.jsp">table of contents</a>, the <a href="loc.jsp">list of classes</a> and/or the <a href="iref.jsp">index</a>.
       </li>
<li><b>Make sure you understand enough about Java</b>, both to be able to implement suggestions as code (I won't do it for you unless I have
       a very good reason) or at least to try and identify possible problems with the code itself.<br> Several questions related to problems with
       the code on this book are due to lack of understanding of Java, class compilation, JAI installation and/or package naming.</li>       
<li><b>If you're having problems compiling the code,</b> <a href="#introductionaboutthisebookfaq">read the FAQ</a> first. If it seems to be a Java
       issue, try to find local help. If you're in an university or workplace with other programmers, ask them: they may give you faster answers than I.</li>
<li><b>Let me know if it worked</b>, and if possible send a note about the project so I can mention it here. This will make easier to justify the time I spend on this free e-book.</li>
</ul>
<p>Read also <a href="/web/20150303221846/http://www.catb.org/~esr/faqs/smart-questions.html">How To Ask Questions The Smart Way</a> on hints on how to get better answers by
asking smarter questions.</p>




<p class="section"><a name="introductionaboutthisebookstatistics"></a>Statistics</p>

<!--
<a href="/web/20150303221846/http://my.statcounter.com/project/standard/stats.php?project_id=3873086&amp;guest=1">
<img src="/web/20150303221846/http://www.statcounter.com/images/button2.gif" alt="View My Stats" hspace="5" align="right" style="border:0px;" title="Locations of visitors to this page"> 
</a>
-->

<p>There are <b>
24 
</b> chapters in this e-book, with a total of <b>
138 
</b> figures.</p>
<p>There are <b>
117
</b> complete Java classes in this e-book, with approximately <b>
13100
</b> lines of code.</p>




<div class="navigation"><table class="navigation"><tr><td class="navigation2">&nbsp;</td><td class="navigation1">&nbsp;</td><td class="navigation0"><a href="0000-intro.jsp"><img class="navigation" src="Images/top.png" alt="top"></a><br><a href="0000-intro.jsp">About this e-book</a></td><td class="navigation1"><a href="1100-create-bw.jsp"><img class="navigation" src="Images/next.png" alt="next"></a><br><a href="1100-create-bw.jsp">Creating Black-and-White Images</a></td><td class="navigation2"><a href="1200-create-gl.jsp"><img class="navigation" src="Images/nextnext.png" alt="next next"></a><br><a href="1200-create-gl.jsp">Creating Gray-Level Images</a></td></tr></table></div>



</div><div class="spacer"></div>
<!-- VALIDATE -->
 <table>
  <tr>
  <td><a href="/web/20150303221846/http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px" src="Images/valid-html40.png" alt="Valid HTML 4.0 Transitional"></a></td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td><a href="/web/20150303221846/http://jigsaw.w3.org/css-validator/validator?uri=http://www.lac.inpe.br/~rafael.santos">
  <img style="border:0;width:88px;height:31px" src="Images/vcss.png" alt="Valid CSS!"></a></td>
  </tr>
  </table>
 </center>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "/web/20150303221846/https://ssl." : "/web/20150303221846/http://www.");
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
     FILE ARCHIVED ON 22:18:46 Mar 3, 2015 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 0:45:34 Apr 13, 2017.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
