<div class="container-fluid" id="header">	
	<div class="row">
		<a href="{$BaseHref}">
			<div id="logo">
			<span id="exchanges">exchanges</span>
			<span id="subtitle">a journal of literary translation</span>
			</div>
		</a>
	</div><!-- end row -->
</div><!-- end header -->
<div class="nav-background">
	<div class="container">
		<div class="navbar exchanges">
		  <div class="navbar-inner">
		    <div class="container">
		    	<div class="mobile-subnav">
			    	<a href="{$BaseHref}">Home</a>
		    	</div>
		      <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
		      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </a>
		      <!-- Everything you want hidden at 940px or less, place within here -->
		      <div class="nav-collapse collapse">
				<ul class="nav">
					<% loop Menu(1) %>
					  <li <% if $LinkingMode = "current" %>class="active"<% end_if %>>
					    <a href="$Link" <% if First %>class="hidden-phone hidden-tablet"<% end_if %>>$MenuTitle</a>
					  </li>
					<% end_loop %>
				</ul><!-- end nav-->
		      </div><!-- end nav-collapse -->
		    </div><!-- end container -->
		  </div><!-- end navbar-inner -->
		</div><!-- end navbar exchanges -->
	</div> <!-- end container -->
</div> 	<!-- end nav-background -->
