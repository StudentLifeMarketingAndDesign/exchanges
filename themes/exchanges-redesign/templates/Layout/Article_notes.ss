

<div class="container" id="content">
		<div class="row" id="backto">

			<a href="{$Link}">
			<div>
				<span>$Title</span>
			</div>
			</a>

		</div>
		<div class="row">
		
      		<div class="span12 column">
      			<h1>Notes on Translation</h1>
      				$TranslatorNote
      				<br />
      				-<% loop Translators %><% if Last %> & <% else %><% if not First %>, <% end_if %><% end_if %>$Name<% end_loop %>
      		</div>

		</div>

    </div> <!-- /container -->