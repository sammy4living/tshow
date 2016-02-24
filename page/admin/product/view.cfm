<cfoutput>
	<cfif request.IsLogin AND request.user.r_Name eq 'Admin'>
		<cfset qPro  = application.tshow.product.getProduct()/>
	    <div class="page-title category-title">
	    <h1>Product page</h1>
	    </div>
	    <a href="?pg=admin.product.new" class='btn btn-success'> Add</a>
	    <br><br>
		<table class='table table-hover'>
			<tr>
				<th>##</th>
				<th>Name</th>
				<th>Category</th>
				<th>Description</th>
				<th>Price</th>
				<th>Action</th>
			</tr>
			<cfloop query="#qPro#">
				<tr>
					<td>#currentrow#</td>
					<td>#Name#</td>
					<td>#c_Name#</td>
					<td>#left(Description,40)#...</td>
					<td>#Price#</td>
					<td>
						<a href="?pg=admin.product.edit&@#ProductId#">Edit</a> &nbsp;
						<a href="?pg=admin.product.delete&@#ProductId#">Delete</a> &nbsp;
					</td>
				</tr>
			</cfloop>
		</table>
		<cfelse>
			<cflocation addtoken="false" url="?pg=home"/>
	</cfif>
</cfoutput>