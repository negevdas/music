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
<!--title><%=Navigations.getPageTitle(content) %></title-->
<title>NEGEV Music</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/site/web/photo/style/tabs.css" />    
   
  <!--link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine"-->
  <%@include file="/site/service/Feeds.jsp" %>
<%@include file="/site/service/Jquery.jsp"%>
<%@include file="/site/service/Rewrite.jsp"%>
<%@include file="/site/service/Lightbox.jsp"%>
<%@include file="/site/service/Prettify.jsp"%>

<script type="text/javascript" src="<%=request.getContextPath() %>/site/web/photo/js/query-1.3.2.min.js"></script>    
<script type="text/javascript" src="<%=request.getContextPath() %>/site/web/photo/js/jquery-ui-1.7.custom.min.js"></script>      


</head>
<body>

  <div id="page-wrap">
    
    <div id="tabs">
    
        <ul>
            <li><a href="#fragment-1">1</a></li>
            <li><a href="#fragment-2">2</a></li>
            <li><a href="#fragment-3">3</a></li>
            <li><a href="#fragment-4">4</a></li>
            <li><a href="#fragment-5">5</a></li>
            <li><a href="#fragment-6">6</a></li>
            <li><a href="#fragment-7">7</a></li>
            <li><a href="#fragment-8">8</a></li>
            <li><a href="#fragment-9">9</a></li>
            <li><a href="#fragment-10">10</a></li>
            <li><a href="#fragment-11">11</a></li>
            <li><a href="#fragment-12">12</a></li>
            <li><a href="#fragment-13">13</a></li>
            <li><a href="#fragment-14">14</a></li>
            <li><a href="#fragment-15">15</a></li>
         </ul>
  
          <div id="fragment-1" class="ui-tabs-panel">
                 <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
          </div>
          
          <div id="fragment-2" class="ui-tabs-panel ui-tabs-hide">
                    <p>Donec ultricies senectus tristique egestas vitae, et ac morbi habitant quam sit mi quam, malesuada leo. Vestibulum tempor Mauris tortor libero eget, egestas. eu vitae feugiat netus amet Pellentesque ante. amet, ultricies eleifend turpis sit placerat et semper. Aenean est. fames </p>
            </div>
            
          <div id="fragment-3" class="ui-tabs-panel ui-tabs-hide">
                <p>ante. Mauris Vestibulum est. fames egestas quam, leo. amet tristique sit libero egestas. ultricies mi turpis senectus Pellentesque habitant eu ac morbi netus eget, Aenean malesuada vitae, semper. eleifend et feugiat vitae amet, placerat Donec et tortor ultricies tempor quam sit </p>
            </div>
        
          <div id="fragment-4" class="ui-tabs-panel ui-tabs-hide">

          </div>
          
          <div id="fragment-5" class="ui-tabs-panel ui-tabs-hide">
                
          </div>
        
          <div id="fragment-6" class="ui-tabs-panel ui-tabs-hide">
        
          </div>
          
          <div id="fragment-7" class="ui-tabs-panel ui-tabs-hide">
        
          </div>
          
          <div id="fragment-8" class="ui-tabs-panel ui-tabs-hide">
        
          </div>
          
          <div id="fragment-9" class="ui-tabs-panel ui-tabs-hide">
        
          </div>
          
          <div id="fragment-10" class="ui-tabs-panel ui-tabs-hide">

          </div>
          
          <div id="fragment-11" class="ui-tabs-panel ui-tabs-hide">
        
          </div>
          
          <div id="fragment-12" class="ui-tabs-panel ui-tabs-hide">
        
          </div>
          
          <div id="fragment-13" class="ui-tabs-panel ui-tabs-hide">
        
          </div>
          
          <div id="fragment-14" class="ui-tabs-panel ui-tabs-hide">
        
          </div>
          
          <div id="fragment-15" class="ui-tabs-panel ui-tabs-hide">
            <p>The end.</p>
          </div>

        </div>
    
  </div>
  

</body>

</html>
