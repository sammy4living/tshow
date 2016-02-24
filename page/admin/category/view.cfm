<cfoutput>
	<cfif request.isLogin and request.user.r_Name eq 'Admin'>
		<cfset qCat  = application.tshow.category.getCategory()/>
	    <div class="page-title category-title">
	    <h1>Categories page</h1>
	    </div>
	    <a href="?pg=admin.category.new" class='btn btn-success'> Add</a>
	    <br>
		<table class='table table-hover'>
			<tr>
				<th>##</th>
				<th>Name</th>
				<th>Action</th>
			</tr>
			<cfloop query="#qCat#">
				<tr>
					<td>#currentrow#</td>
					<td>#Name#</td>
					<td>
						<a href="?pg=admin.category.edit&@#CategoryId#">Edit</a> &nbsp;
						<a href="?pg=admin.category.delete&@#CategoryId#" id='delete'>Delete</a> &nbsp;
					</td>
				</tr>
			</cfloop>
		</table>
		<cfelse>
			<cflocation addtoken="false" url="?pg=home"/>
	</cfif>
</cfoutput>
<script type="text/javascript">
	$(document).ready(function(){
		$('#delete').on('click',function(e){
			e.preventDefault();
			var t = confirm('Are you sure you want to delete this category ?');

			if(t == true){
				window.location = $(this).attr('href');
			}
		})
	})
</script>