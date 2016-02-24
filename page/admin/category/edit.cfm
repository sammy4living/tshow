<cfoutput>
	<cfif request.IsLogin AND request.user.r_Name eq 'Admin'>
		<cfif structKeyExists(form, "update")>
			<cfset qC = application.tshow.category.updateCategoryByURL(form)/>
		</cfif>
		<cfset qCat  = application.tshow.category.getCategoryByURL()/>
	    <div class="page-title category-title">
	    	<h1>Categories page</h1>
	    </div>
	    <form class='form-horizontal' method='post'>
	    	<div class='form-group' >
	    		<label class='col-sm-2 control-label'>Name</label>
	    		<div class='col-sm-6'>
	    			<input type='text' name='name' class='form-control' value='#qCat.name#' >
	    		</div>
	    	</div>
	    	<input type='hidden' name='CategoryId' value='#qCat.CategoryId#'>
	    	<button type='submit' name='update' class='btn btn-secondary'>Update</button>
	    </form>
		<cfelse>
			<cflocation addtoken="false" url="?pg=home"/>
	</cfif>
</cfoutput>