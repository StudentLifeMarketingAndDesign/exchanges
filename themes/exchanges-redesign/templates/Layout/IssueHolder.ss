

<div class="container" id="content">
		$Form
		$PageComments
		<% include PageNav %>
	
		<div class="row">
		    
      		<div class="span8 column pastIssues">
                        
      		          <h1>Issues</h1>
      			<ul>
      				<% loop Children %>
      					<li><a href="{$Link}">$Title - $IssueDate</a></li>
      				<% end_loop %>
      			</ul>
      				
      			$Content

      		</div>
      
      		<div class="span4 column no-center">
      			<% include Submissions %>
      		</div>
      	
		</div>

    </div> <!-- /container -->