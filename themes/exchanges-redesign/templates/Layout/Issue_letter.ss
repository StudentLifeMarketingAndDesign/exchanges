	<div class="container" id="content">
	
	
		
			<div class="row" id="backto">
				<a href="$Link">
					<div>
						<span>$Title</span>
					</div>
				</a>
			</div>
		
			<div class="row">
			
	      		<div class="span8 column">
	      		
	      		<h2><% if LetterFromEditorCustomTitle %>$LetterFromEditorCustomTitle <% else %>Letter from the Editors<% end_if %></h2>
	      			$LetterText
	
	      		</div>
	      		
	      		<div class="span4 column">
	      			<h1 class="band">Table Of Contents</h1>
	      			<% include TableOfContents %> 
	
	      		</div>
	      		
			</div>
			

	
	    </div> <!-- /container -->