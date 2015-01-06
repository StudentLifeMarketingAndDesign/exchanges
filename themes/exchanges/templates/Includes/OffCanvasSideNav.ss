<aside class="left-off-canvas-menu show-for-small-up hide-for-large-up">
		<ul class="off-canvas-list side-nav">
			<li class="title-nav">
				<ul id="title-nav-menu">
					<li class="">
					<a href="{$BaseHref}" class="nav-deets" id="home" >Home</a></li><li>
					<a href="about" class="nav-deets" >About</a></li><li>
					<a href="submissions" class="nav-deets" >Submit</a></li><li>
					<span href="#!" class="nav-deets moreissues" >Past Issues &#x25BC;</span></li>
				</ul>
			</li>
			<li class="pastissues">
				<section class="nav-li-content">
					<ul>
						<% loop $AllIssues.Sort(Sort DESC) %>
							<li><a href="$Link">$IssueNumber $Title <span class="nav-deets">$IssueDate</span></a></li>
						<% end_loop %>
							<li><a href="{$BaseHref}/issues-archive/">Older Issues</a></li>
					</ul>
				</section>
			</li>
			<%--
			<section class="">
				<a href="$CurrentIssue.Link" class="tiny button radius split">$CurrentIssue.Title.LimitCharacters(15)<span data-dropdown="drop"></span></a>
				<br> 
				<ul id="drop" class="f-dropdown" data-dropdown-content> 
					<% loop $AllIssues %>
					<li><a href="$Link">$IssueNumber $Title <span class="nav-deets">$IssueDate</span></a></li> 
					<% end_loop %>
				</ul>
			</section>
			--%>
		<% with $getCurrentIssue %>
			<% loop Articles() %>
				$IssueNumber
				<% include SideNavMenuItem %>
			<% end_loop %>
		<% end_with %>
		</ul>
</aside> 