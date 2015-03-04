<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><link href='http://fonts.googleapis.com/css?family=Josefin+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="styles.css" />
<link rel="shortcut icon" href="/favicon.ico">
<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<% require themedCSS(layout) %> 

</head>

<body class="$ClassName">

	<div id="header">
    	<a class="uilogo" href="http://uiowa.edu">The University of Iowa</a>
        <h1><a href="/">Powwow</a></h1>
        <p class="purpose">Celebrating and honoring American Indian dance, food, culture and tradition with the Iowa 
        	community</p>
    </div>
    
   	
    <div id="nav">
		<% include Navigation %>
	</div>
    
   <div id="content-wrapper">
   $Layout
   </div>
  
    <div id="footer">
    <p>&copy; <a href="http://www.uiowa.edu">The University of Iowa</a> {$Now.Year}. All rights reserved.</p>
    <% include Navigation %>
    <p>Individuals with disabilities are encouraged to attend all University of Iowa-sponsored events. If you are a person with a disability who requires an accomodation in order to participate in this program, please contact CSIL in advance at (319) 335-3059 or <a href="mailto:studorg-ui-nasa@uiowa.edu">studorg-ui-nasa@uiowa.edu</a></p>
    </div>
   
</body>
</html>
