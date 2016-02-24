<cfoutput>
	<div class="breadcrumbs">
		<cfset qCatName = application.tshow.getCategory_().Name/>
		<ul>
			<li class="home">
				<a href="?pg=home" title="Go to Home Page">Home</a>
				<span>&gt;</span>
			</li>
			<li class="category3">
				<strong>#qCatName#</strong>
			</li>
		</ul>
	</div>
</cfoutput>