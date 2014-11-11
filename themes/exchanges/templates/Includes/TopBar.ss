<div class="sticky show-for-large-up nav-container">
	<nav class="top-bar" role="navigation" data-topbar data-options="sticky_on: medium">
		
		<section class="top-bar-section">
			<%-- Left Nav Section --%>
			<ul class="right">
				<% loop Menu(1) %>
				<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %><% if $Children %> has-dropdown<% end_if %>">
					<a href="$Link" title="Go to the $Title.ATT">$MenuTitle</a>
					<% if $Children %>
					<ul class="dropdown">
						<li><label>$MenuTitle</label></li>
						<% loop $Children %>
						<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %><% if $Children %> has-dropdown<% end_if %>">
							<a href="$Link" title="Go to the $Title.ATT">$MenuTitle</a>
							<% if $Children %>
							<ul class="dropdown">
								<% loop $Children %>
								<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %>"><a href="$Link" title="Go to the $Title.ATT">$MenuTitle</a></li>
								<% end_loop %>
							</ul>
							<% end_if %>
						</li>
						<% end_loop %>
						<li><a href="$Link">See all &rarr;</a></li>
					</ul>
					<% end_if %>
				</li>
				<%--<% if not $Last %><li class="divider"></li><% end_if %>--%>
				<% end_loop %>
			</ul>
		</section>
	</nav>
</div>