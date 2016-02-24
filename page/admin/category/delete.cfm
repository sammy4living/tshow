<cfoutput>
	<cfif request.isLogin and request.user.r_Name eq 'Admin'>
		<cfscript>
			qDelete  = application.tshow.category.deleteCategoryByURL();
			location url='?pg=admin.category.view' addtoken='false';
		</cfscript>
		<cfelse>
			<cflocation url="?pg=home" addtoken="false"/>
	</cfif>
</cfoutput>