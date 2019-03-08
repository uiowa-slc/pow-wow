<!doctype html>
<html class="no-js" lang="$ContentLocale.ATT" dir="$i18nScriptDirection.ATT">
<head><link href='https://fonts.googleapis.com/css?family=Josefin+Sans' rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="/favicon.ico">
<% base_tag %>
		<title><% if URLSegment != "home" %>$Title | <% end_if %>$SiteConfig.Title | The University of Iowa</title>
		$MetaTags(false)
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="{$ThemeDir}/dist/css/main.css" />
    <% if $URLSegment == "home" %>
      <meta property="og:title" content="$SiteConfig.Title" />
    <% else %>
      <meta property="og:title" content="$Title.ATT" />
    <% end_if %>
    <meta property="og:url" content="$AbsoluteLink" />
    
        <meta property="og:description" content="$Content1.Plain" />
    <meta property="og:image" content="{$absoluteBaseURL}{$ThemeDir}dist/images/og-image.jpg" />
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
</head>

<body class="$ClassName">
  <% include UiowaBar %>
  <div id="header-container">
    <div class="header-screen">
      	<div id="header">
          
              <h1><a href="{$baseURL}">Powwow</a></h1>
              <p class="purpose">Celebrating and honoring American Indian culture and tradition with the Iowa community</p>
              <div style="clear: both"></div>
          </div>
      
        
       	
        <div id="nav">
    		<% include Navigation %>
    	 </div>
    </div>
   <div class="bg-screen bg-screen--{$ClassName}">
     <div id="content-wrapper">
     $Layout
     </div>
  </div>
  </div>
    <div id="footer">
    <p>&copy; <a href="http://www.uiowa.edu">The University of Iowa</a> {$Now.Year}. All rights reserved.</p>
    <% include Navigation %>
    <p>Individuals with disabilities are encouraged to attend all University of Iowa-sponsored events. If you are a person with a disability who requires an accommodation in order to participate in this program, please contact NASA in advance at (319) 335-8298 or <a href="mailto:studorg-ui-nasa@uiowa.edu">studorg-ui-nasa@uiowa.edu</a></p>
    </div>
   $Analytics
</body>
</html>
