<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="org.apache.commons.lang3.ArrayUtils"%>
<%@page import="org.apache.commons.lang3.StringUtils"%>
<%@page import="org.apache.commons.lang3.StringEscapeUtils"%>
<%@page import="jease.cms.domain.Content"%>
<%@page import="jease.cms.domain.News"%>
<%@page import="jease.cms.domain.Topic"%>
<%@page import="jease.cms.domain.Folder"%>
<%@page import="jease.site.Navigations"%>

  
<% 
  Content content = (Content) request.getAttribute("Node"); 
  Content root = (Content) request.getAttribute("Root");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"-->
 <html xmlns:ng="http://angularjs.org" xmlns="native" xmlns:u="zul"> 
<head>

  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>NEGEV Music</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" type="text/css" media="only screen" href="<%=request.getContextPath() %>/site/web/photo/style/style.css"  />  
<link rel="stylesheet" type="text/css" media="only screen" href="<%=request.getContextPath() %>/site/web/photo/style/screen.css"  />
<link rel="stylesheet" type="text/css" media="only screen" href="<%=request.getContextPath() %>/site/web/photo/style/MIDIPlayer.css"  />
<link rel="stylesheet" type="text/css"  media="only screen" href="<%=request.getContextPath() %>/site/web/photo/style/Modal.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/site/web/photo/style/print.css" media="<%= request.getParameter("print") == null ? "print" : "print,screen" %>" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/site/web/photo/style/stylerotasi.css" media="screen"/>
<link rel="stylesheet" type="text/css" media="only screen and (max-width: 925px)" href="<%=request.getContextPath() %>/site/web/photo/style/landscape.css"  />
<link rel="stylesheet" type="text/css" media="only screen and (max-width: 479px)" href="<%=request.getContextPath() %>/site/web/photo/style/portrait.css"  />
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Architects+Daughter" />  
  <!--link rel="stylesheet" type="text/css" media="only screen" href="<%=request.getContextPath() %>/site/web/photo/style/style.min.css"  />


  
  <link rel="stylesheet" type="text/css" media="only screen" href="<%=request.getContextPath() %>/site/web/photo/style/woco-accordion.min.css"  />  





-->  
  

  <%@include file="/site/service/Feeds.jsp" %>
<%@include file="/site/service/Jquery.jsp"%>
<%@include file="/site/service/Rewrite.jsp"%>
<%@include file="/site/service/Lightbox.jsp"%>
<%@include file="/site/service/Prettify.jsp"%>
<script type="text/javascript" src="<%=request.getContextPath() %>/site/web/photo/js/vanilla-modal.js"></script>  
<script type="text/javascript" src="<%=request.getContextPath() %>/site/web/photo/js/jquery.innerfade.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/site/web/photo/js/jquery.mediaqueries.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/site/web/photo/js/query-1.11.3.min.js"></script>  
<!--script type="text/javascript" src="<%=request.getContextPath() %>/site/web/photo/js/query-1.3.2.min.js"></script-->    
<script type="text/javascript" src="<%=request.getContextPath() %>/site/web/photo/js/jquery-ui-1.7.custom.min.js"></script>      
<script type="text/javascript" src="<%=request.getContextPath() %>/site/web/photo/js/woco.accordion.min.js"></script> 
  
<script src="http://kikiefendbat.googlecode.com/files/www.kikiyo.co.cc.kupu2.js" type="text/javascript"></script>
  
<script type="text/javascript">
$(document).ready(function() { 
  $("#photos").innerfade({speed: 4000, timeout: 8000, type: "random"});  
});
</script>
<script>
var app = angular.module('basic', ['zk']);

app.controller('MyCtl', ['$scope', '$element', '$binder', function($scope, $element, $binder) {
    // init ZK Binder
    $binder.$init($scope, $element);
}]);


zk.afterMount(function() {
    angular.bootstrap(document, [ 'basic']);
});
</script>
  

  
    <style>
      body
      {

      }
      .accordion
      {
        font-family: sans-serif;              
        max-width: 900px;
        margin: 5px auto;
      }
    </style>  
</head>
<body>
  
<div class="blockcolour__container article_two">

    <object data-widget="svgmanipulate" class="svgtest__img iso__overlay--left" type="image/svg+xml" data="<%=request.getContextPath() %>/site/web/photo/style/iso_pattern-left.svg"><div class="iso__overlay iso__overlay--left"></div></object>

    <object data-widget="svgmanipulate" class="svgtest__img iso__overlay--right" type="image/svg+xml" data="<%=request.getContextPath() %>/site/web/photo/style/iso_pattern-right.svg"><div class="iso__overlay iso__overlay--right"></div></object>


</div>
  
  
  
  <div  style="position: absolute;top:20px;left:0">
<img alt="" src="./~/sidemusic"/>

  </div>

  <header>
    
    
          <div id="header">

            <div id="tabs">
        <ul>
        <% for (Content tab : Navigations.getTabs(root)) { %>
          <li<%= content.getPath().startsWith(tab.getPath() + "/") ? " class=\"current\"" : "" %>>
            <a href="<%=request.getContextPath() %><%= tab.getPath() %>"><%= tab.getTitle() %></a>
          </li>
        <% } %>
        </ul>
      </div>     
         
         
          
      <form id="search" action="<%=request.getContextPath() %><%=root.getPath()%>" method="get">
        <input type="text" name="query" <% if(request.getParameter("query") != null) { %>value="<%= StringEscapeUtils.escapeXml(request.getParameter("query")) %>"<% } else { %>value="Search this site..." onfocus="this.value='';"<% } %> />
        <input type="hidden" name="page" value="/site/service/Search.jsp" />
      </form>        


 
 
        <div id="photos">
        <% for (int i=1; i < 12; i++) { %>
          <img src="<%=request.getContextPath() %>/site/web/photo/photos/<%= i %>.jpg" alt="" width="890" height="200" />
        <% } %>
      </div>
      <h1><a href="<%=request.getContextPath() %><%=root.getPath()%>">NEGEV Music</a></h1>
      <% if (((Folder) root).getContent() != null) { %>
        <h2><%= ((Folder) root).getContent().getTitle() %></h2>
      <% } %>
           <div id="apDiv1"><img src="<%=request.getContextPath() %>/site/web/photo/photos/butflycircle.gif" alt="flying butterfly" height="232" width="327"></div>
          </div>
       
      <div id="breadcrumb">
        <!--div-->
            <%
int i=0; for (Content parent : Navigations.getBreadcrumb(root, content)) {
if (i==0){ %>         <a href="<%=request.getContextPath() %><%=root.getPath()%>"> HOME</a>
    <% } else {
    %>    &raquo; <a href="<%=request.getContextPath() %><%=parent.getPath()%>"><%=parent.getTitle()%></a>
      <% }i=i+1;} %>
      </div>         
        </header>
        
        


       
          
      <!--div id="wrap"-->    
    <div>
      
    <!--div id="main-wrapper" class="clear"-->
    <div>
      
      <!--div id="main"-->
      <div>
        
        
        
        
        <div id="content-wrapper">
     
        <div id="content">
            <% pageContext.include((String) request.getAttribute("Page.Template")); %>
                        <div style="clear: both"></div>
            <p class="editorial">
              Last modified on <%=String.format("%tF", content.getLastModified())%>
              <% if (content.getEditor() != null) { %>
                by <%= content.getEditor().getName() %>
              <% }%>
            </p>
            <% 
              News[] news = Navigations.getNews((Content) content.getParent());
              if (ArrayUtils.isNotEmpty(news)) { 
            %>
            <% for (News item : news) { %>
               <div class="news">
                <% if (item.getDate() != null) { %>
                        <div class="date"><%= String.format("%1$td %1$tb %1$tY", item.getDate()) %></div>
                <% } %>
                <% if (StringUtils.isBlank(item.getTeaser())) { %>
                  <h2><%= item.getTitle() %></h2>
                  <%= item.getStory() %>
                <% } else { %>
                  

  
            <h3><a href="<%=request.getContextPath() %><%=item.getPath()%>?print"><%=item.getTitle()%></a></h3>
            <p><%=item.getTeaser()%></p>
                  
                  
                  
                  <!--h2><%= item.getTitle() %></h2>

                  <p><%= item.getTeaser() %> 
                  <h5><a href="#improvisasidasar" 
                    rel="modal:open" >
                      baca yuk ...
                    </a></h5>
                    
              
                <div id="improvisasidasar"  style="display:none">
     <iframe src="<%=item.getPath()%>?print" width="800" height="3900" frameborder="0" ></iframe>
                </div>
                 </p-->    
                    
                    
                    
                    
                    
                    
                    <% } %>
              </div>
            <% } %>
          <% } %>
          </div> 
       </div>
  
      <div id="navigation">
     
          <!--h1><%= ((Content) content.getParent()).getTitle() %></h1-->
<div class="site-logo" style="
 background-image: url(http://music-negev.rhcloud.com/site/web/photo/photos/senyum.png);height:180px;background-repeat:no-repeat; ">  
          <h1><a href="<%=request.getContextPath() %><%=root.getPath()%>">NEGEV Music</a></h1>

  </div>
          <ul>
          <% for (Content item : Navigations.getItems((Content) content.getParent())) { %>
            <% if (item instanceof Topic) { %>
              </ul><h3><%= item.getTitle() %></h3><ul>
            <% } else { %>
              <li><a <%= item == content ? " class=\"current\"" : "" %> href="<%=request.getContextPath() %><%= item.getPath() %>"><%= item.getTitle() %></a></li>
            <% } %>
          <% } %>
          </ul>

            <a href="<%=request.getContextPath() %>/Dokumentasi/Video-lagu"> <img src="<%=request.getContextPath() %>/site/web/photo/photos/youtube.jpg" alt="" width="100" height="70" /></a>
<a href="#"> <img src="http://www.animateit.net/data/media/april2014/nydtr3mn59.gif" border="0" alt="Cat Helping to Play the Guitar from AnimateIt.net" /> </a>
            
            
     
            
          </div>
            
      </div>

  </div>
            
            
  <div id="footer">

          <h3>Silabus NEGEV Music didedikasikan kepada setiap alumni bimbingan P. Daniel Arif Santoso dimanapun berada yang sekarang ini mungkin telah menjadi guru/instruktur/dekan dan sebagainya. NEGEV Music siap membimbing dalam perjuanganmu meraih masa depan..! </h3>    
     <%@include file="/site/service/Pdf.jsp" %> 
    <br />


      
<img src="<%=request.getContextPath() %>/site/web/photo/photos/playmusik.png" style="width:220px;height:330px;position: absolute; top: -320px; left: 75%;float:right;"/>  

  </div>
       

    <div class="modal">
      <div class="modal-inner">
        <a rel="modal:close">&times;</a>
        <div class="modal-content"></div>
      </div>
    </div>   
    
   <script type="text/javascript">var modal = new vanillaModal.VanillaModal({
      onBeforeOpen : function(e) {
        console.log('onBeforeOpen hook', e, this);
      },
      onOpen : function(e) {
        console.log('onOpen hook', e, this);
      },
      onBeforeClose : function(e) {
        console.log('onBeforeClose hook', e, this);
      },
      onClose : function(e) {
        console.log('onClose hook', e, this);
      }
    });</script>

    <script>
      $(".accordion").accordion({ header: "h1", collapsible: true, active: false });
    </script>
       
    <script type="text/javascript" src="<%=request.getContextPath() %>/site/web/photo/js/build.js"></script>
            
</body>

</html>
