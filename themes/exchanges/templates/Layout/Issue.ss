<div class="row content-page">
	<div class="medium-10 small-12 end columns">
	<h1>$Title</h1>
	<hr />
		<% if $LetterFromEditorCustomTitle %>
			<h2>$LetterFromEditorCustomTitle</h2>
		<% else %>
			<h2>Letter from the editor</h2>
		<% end_if %>
		$LetterFromEditor
		<hr />
		<% with $Children.First %><p><a href="$Link">Start with: $Title</a></p><% end_with %>
	</div>
</div> 

