
<link rel="shortcut icon" href="/favicon.ico">
	
<div id="content">
    <div id="leftcolumn" class="<% if not $Content2 %>leftcolumn--no-rightcolumn<% end_if %>">
     $Form
       $Content1
    </div>
	<% if $Content2 %>
    <div id="rightcolumn">
        $Content2
    </div>
    <% end_if %>
    <div class="clear"></div>
</div>