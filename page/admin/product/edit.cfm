<cfoutput>
	<cfif request.IsLogin AND request.user.r_Name eq 'Admin'>
		<cfif structKeyExists(form, "update")>
			<cfset qC = application.tshow.product.updateProductByURL(form)/>
		</cfif>
		<cfset qCat  = application.tshow.category.getCategory()/>
		<cfset qP  = application.tshow.product.getProductByURL()/>
	    <div class="page-title category-title">
	    	<h1>Update product page</h1>
	    </div>
	    <form class='form-horizontal' method='post'>
	    	<div class='form-group' >
	    		<label class='col-sm-2 control-label'>Category</label>
	    		<div class='col-sm-6'>
	    			<select name='CategoryId' class='form-control' required>
	    				<cfloop query="#qCat#">
	    					<option value='#CategoryId#' <cfif #Name# eq '#qP.c_Name#'>selected</cfif>>#Name#</option>
	    				</cfloop>
	    			</select>
	    		</div>
	    	</div>
	    	<div class='form-group' >
	    		<label class='col-sm-2 control-label'>Name</label>
	    		<div class='col-sm-6'>
	    			<input type='text' name='product_name' class='form-control' value='#qP.Name#' required>
	    		</div>
	    	</div>
	    	<div class='form-group' >
	    		<label class='col-sm-2 control-label'>Price</label>
	    		<div class='col-sm-6'>
	    			<input type='text' name='price' class='form-control' value='#qP.Price#' required>
	    		</div>
	    	</div>
	    	<div class='form-group' >
	    		<label class='col-sm-2 control-label'>Description</label>
	    		<div class='col-sm-6'>
	    			<textarea rows='10' name='description' class='form-control'>#qP.Description#</textarea>
	    		</div>
	    	</div>
	    	<div class='form-group' >
	    		<label class='col-sm-2 control-label'>Image</label>
	    		<div class='col-sm-6'>
	    			<input type='text' name='img' required class='form-control' value='#qP.imgURL#' required>
	    		</div>
	    	</div>
	    	<button type='submit' name='update' class='btn btn-secondary'>Save</button>
	    </form>
		<cfelse>
			<cflocation addtoken="false" url="?pg=home"/>
	</cfif>
</cfoutput>