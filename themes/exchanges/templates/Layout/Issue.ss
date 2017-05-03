<div class="row">
	<div class="large-12 columns">
		<h2 class="banner text-center">In this Issue:</h2>
		<ul class="text-center card-list card-list--two">
			<% loop $Children %>
			<li class="card-list__item">
				<a href="$Link" class="card-list__link card-list__link--large" style="background-image: url('{$BannerImage.CroppedFocusedImage(690,440).URL}')">
					<%-- <img class="card-list__img" src="$BannerImage.CroppedFocusedImage(690,440).URL"> --%>
					<div class="card-list__overlay card-list__overlay--always-visible"></div>
		
              			<div class="card-list__text card-list__text--always-visible card-list__text--large">
              				<h2 class="card-list__header card-list__header--large">$Title</h2>
	              			<p class="card-list__byline">$TranslatorByline(false)</p>
              			</div>
          		
				</a>
			</li>
			<% end_loop %>
		</ul>
		<p class="text-center"><a href="$Children.First.Link" class="button large">Start reading &rarr;</a></p>
		<h2>Other issues</h2>
		<ul class="issue-card-list">
			<% loop $Parent.Children.Sort("Created DESC") %>
				<% include IssueCard %>
			<% end_loop %>
		</ul>
	</div>
</div>


