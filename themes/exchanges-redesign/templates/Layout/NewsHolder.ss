<div class="container" id="content">

	<div class="row">
	
  		<div class="span8 column">
  			$Breadcrumbs
  			<% loop getNewsItems %>
  				<div class="blog_post">
	      			<div class="postheader">
	      				<h1><a href="$Link">$Title</a></h1>
	      				<span class="postdate">$Date.NiceUs</span>
	      			</div>
	      				<p>$Content.Summary(100)</p>
	      				<a href="{$Link}">Read More</a>
	      		</div>
	      	<% end_loop %>
  			
      		<% if getNewsItems.MoreThanOnePage %>
			    <% if getNewsItems.NotFirstPage %>
			        <a class="prev" href="$getNewsItems.PrevLink">Prev</a>
			    <% end_if %>
			    <% loop getNewsItems.Pages %>
			        <% if CurrentBool %>
			            $PageNum
			        <% else %>
			            <% if Link %>
			                <a href="$Link">$PageNum</a>
			            <% else %>
			                ...
			            <% end_if %>
			        <% end_if %>
			        <% end_loop %>
			    <% if getNewsItems.NotLastPage %>
			        <a class="next" href="$getNewsItems.NextLink">Next</a>
			    <% end_if %>
			 <% end_if %>
      		
      		
      		
  		</div>
  	 <div class="span4 column">
  		<% include PastIssues %>
  		<% include Submissions %>
  	</div>
  		
	</div>
	
	

</div> <!-- /container -->
	    
	    