<% with Contributor %>
<article>
	<header>
		<h3>Works Contributed by $FirstName $LastName:</h3>
		<p>$Position</p>
	</header>
	<div class="row content-text">
		<div class="large-9 columns">
			$Content
				<ul>
					<% loop Articles %>
					<li><a href="$Link">$Title</a></li>
					<% end_loop %>
				</ul>
			$Form
		</div>
		<div class="large-3 columns">

		</div>
	</div>
	
</article>
<% end_with %>