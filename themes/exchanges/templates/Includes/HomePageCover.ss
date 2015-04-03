<%-- <div class="cover-container" style="background-image: url('$FeaturedIssue.Emblem.URL');"> --%>
<div class="cover-container b-lazy" data-src="http://lorempixel.com/1240/300/">

	<div class="cover-screen">
		<% include TopBar %>
		<div class="row issue-date">
			<div class="large-12 columns"><span>$FeaturedIssue.IssueDate</span></div>
		</div>
		<div class="row cover-content">
			<div class="large-12 columns">
				<img src="{$ThemeDir}/images/exchanges-logo.png" />
				<% with FeaturedIssue %>
					<span>Read our latest issue: <br /> <a class="issue-title" href="$Link">$Title</a></span>
				<% end_with %>
			</div>
		</div>
	</div>
</div>