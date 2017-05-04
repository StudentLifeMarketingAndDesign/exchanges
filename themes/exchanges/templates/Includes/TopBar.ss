<div class="nav-container nav-container--{$ClassName} contain-to-grid contain-to-grid--{$ClassName}">
	<div class="nav-screen nav-screen--{$ClassName}">
		<nav class="top-bar top-bar--{$ClassName} has-dropshadow" data-topbar role="navigation" data-options="align:right">
			<ul class="title-area">
				<li class="name">
					<h1 class="show-for-large-up"><a href="{$baseUrl}">$SiteConfig.Title</a></h1>
					<h1 class="hide-for-large-up"><a href="{$BaseHref}">Exchanges</a></h1>
				</li>
				<li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
			</ul>
			<section class="top-bar-section">
				<%-- Left Nav Section --%>
				<ul class="right">
					<% loop Menu(1) %>
					<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %>">
						<a href="$Link" title="Go to the $Title.ATT">$MenuTitle</a>
					</li>
					<%--<% if not $Last %><li class="divider"></li><% end_if %>--%>
					<% end_loop %>
				</ul>
			</section>
		</nav>
	</div><!-- end nav-screen -->
</div><!-- end nav-container -->
