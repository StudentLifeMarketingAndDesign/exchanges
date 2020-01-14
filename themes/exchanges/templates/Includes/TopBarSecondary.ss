<div class="nav-container nav-container--{$ClassName} contain-to-grid contain-to-grid--{$ClassName} <% if $BannerImage || $Emblem %>contain-to-grid--transparent<% end_if %>">
	<div class="nav-screen nav-screen--{$ClassName} <% if $BannerImage %>nav-screen--transparent<% else %>nav-screen--opaque<% end_if %>">
		<nav class="top-bar top-bar--{$ClassName} <% if $BannerImage %>top-bar--transparent<% end_if %> has-dropshadow" data-topbar role="navigation" data-options="align:right">
			<ul class="title-area">
				<li class="name">
					<h1 class="show-for-large-up"><a href="{$BaseURL}ancient-exchanges">Ancient Exchanges</a></h1>
					<h1 class="hide-for-large-up"><a href="{$BaseURL}ancient-exchanges">Ancient</a></h1>
				</li>
				<li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
				<section class="top-bar-section">
					<%-- Left Nav Section --%>
					<ul class="right">
						<% loop secChilds %>
							<li><a href="{$BaseURL}$URLSegment" title="Go to the $Title">$Title</a></li>
						<% end_loop %>
					</ul>
				</section>
			</ul>
		</nav>
	</div><!-- end nav-screen -->
</div><!-- end nav-container -->
