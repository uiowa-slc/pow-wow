<ul>
	<% control Menu(1) %>
		<% if isCurrent %>
			<li class="current"><a href="$Link">$MenuTitle</a></li>
			<% else %>
			<li><a href="$Link">$MenuTitle</a></li>
		<% end_if %>
	<% end_control %>
</ul>