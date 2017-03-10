<div class="generic-content-wrapper">
	<div class="section-title-wrapper">
		<div class="dropdown pull-right">
			<button type="button" class="btn btn-primary btn-sm" onclick="openClose('contacts-search-form');">
				<i class="fa fa-search"></i>&nbsp;{{$label}}
			</button>
			<button type="button" class="btn btn-outline-secondary btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" title="{{$sort}}">
				<i class="fa fa-sort"></i>
			</button>
			<ul class="dropdown-menu">
				{{foreach $tabs as $menu}}
				<li><a href="{{$menu.url}}">{{$menu.label}}</a></li>
				{{/foreach}}
			</ul>
		</div>
		{{if $finding}}<h2>{{$finding}}</h2>{{else}}<h2>{{$header}}{{if $total}} ({{$total}}){{/if}}</h2>{{/if}}
	</div>
	<div id="contacts-search-form" class="section-content-tools-wrapper">
		<form action="{{$cmd}}" method="get" >
			<div class="input-group form-group">
				<input type="text" name="search" id="contacts-search" class="form-control input-sm" onfocus="this.select();" value="{{$search}}" placeholder="{{$desc}}" />
				<div class="input-group-btn">
					<button id="contacts-search-submit" class="btn btn-outline-secondary btn-sm" type="submit" name="submit" value="{{$submit}}"><i class="fa fa-fw fa-search"></i></button>
				</div>
			</div>
		</form>
	</div>
	<div id="connections-wrapper">
		{{foreach $contacts as $contact}}
			{{include file="connection_template.tpl"}}
		{{/foreach}}
		<div id="page-end"></div>
	</div>
</div>
<script>$(document).ready(function() { loadingPage = false;});</script>
<div id="page-spinner"></div>
