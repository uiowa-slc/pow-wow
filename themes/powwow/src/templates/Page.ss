<!doctype html>
<html class="no-js" lang="$ContentLocale.ATT" dir="$i18nScriptDirection.ATT">
<head>
    $GlobalAnalytics
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Josefin+Sans' rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="/favicon.ico">
<% base_tag %>
		<title><% if URLSegment != "home" %>$Title | <% end_if %>$SiteConfig.Title | The University of Iowa</title>
		$MetaTags(false)
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="{$ThemeDir}/dist/css/main.css" />
    <% if $URLSegment == "home" %>
      <meta property="og:title" content="$SiteConfig.Title" />
      <meta property="og:description" content="$Event.Plain" />
    <% else %>
      <meta property="og:title" content="$Title.ATT" />
      <meta property="og:description" content="$Content1.Plain" />
    <% end_if %>
    <meta property="og:url" content="$AbsoluteLink" />


    <meta property="og:image" content="{$absoluteBaseURL}resources/themes/powwow/dist/images/og-image.jpg" />
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
    <div id="footer" class="footer">
    <p class="footer__copy">&copy; $Now.Year <a href="http://www.uiowa.edu">The University of Iowa</a> {$Now.Year}. All rights reserved. <a href="http://www.uiowa.edu/homepage/online-privacy-information" class="footer__bar-link" target="_blank" rel="noopener">Privacy Information</a> <a href="https://opsmanual.uiowa.edu/community-policies/nondiscrimination-statement" class="footer__bar-link" target="_blank" rel="noopener">Nondiscrimination Statement</a> <a href="https://uiowa.edu/accessibility" target="_blank" class="footer__bar-link" >Accessibility</a> Created by <a href="https://slc.studentlife.uiowa.edu/" target="_blank" rel="noopener">Student Life Communications</a></p>
    <% include Navigation %>
    <p>Individuals with disabilities are encouraged to attend all University of Iowa-sponsored events. If you are a person with a disability who requires an accommodation in order to participate in this program, please contact NASA in advance at (319) 335-8298 or <a href="mailto:studorg-ui-nasa@uiowa.edu">studorg-ui-nasa@uiowa.edu</a></p>
    </div>
   $Analytics
</body>
</html>
