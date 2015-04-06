<div class="cover-container b-lazy" data-src="$FeaturedIssue.Emblem.URL">
	<div class="cover-screen">
		<% include TopBar %>
		<div class="row issue-date">
			<div class="large-12 columns"><span><a href="issues/">$FeaturedIssue.IssueDate</a></span></div>
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