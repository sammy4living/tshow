<cfoutput>
	<cfif request.IsLogin AND request.user.r_Name eq 'Admin'>
		<cfif structKeyExists(form, "add")>
			<cfset qC = application.tshow.category.addCategory(form.name)/>
		</cfif>
	    <div class="page-title category-title">
	    	<h1>Categories page</h1>
	    </div>
	    <form class='form-horizontal' method='post'>
	    	<div class='form-group' >
	    		<label class='col-sm-2 control-label'>Name</label>
	    		<div class='col-sm-6'>
	    			<input type='text' name='name' class='form-control' >
	    		</div>
	    	</div>
	    	<button type='submit' name='add' class='btn btn-secondary'>Save</button>
	    </form>
		<cfelse>
			<cflocation addtoken="false" url="?pg=home"/>
	</cfif>
</cfoutput>