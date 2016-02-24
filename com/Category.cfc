/**
*
* @file  /C/remote/lucee/webapps/www/tshow/com/Category.cfc
* @author  
* @description
*
*/

component output="false" displayname=""  extends="com.shopping.Category" {

	public function init(){
		return this;
	}

	public query function getCategoryByURL(){

		query name='qCat'{
			echo('
					select * from category 
					where CategoryId = #listlast(cgi.query_string,"@")#
				');
		}

		return qCat;
	}

	public void function updateCategoryByURL(){

		query {
			echo('
					update  category set 
					Name = "#form.name#" 
					where CategoryId = #listlast(cgi.query_string,"@")#
				');
		}

	}

	public void function deleteCategoryByURL(){

		if(request.user.r_Name eq 'Admin'){
			query {
				echo('
						delete from  category 
						where CategoryId = #listlast(cgi.query_string,"@")#
					');
			}
		}else{
			location url='?pg=home' addtoken='false';
		}

	}

	public void function addCategory( required  string c_name){

			query name='qC'{
				echo('
					select * from category 
					where Name = "#arguments.c_name#"
					')
			}
			if(qC.recordcount){
				writeOutput("<div class='alert alert-danger'>
			            <a class='close' data-dismiss='alert' href='' aria-hidden='true'>×</a>
			            <strong>Oh snap!</strong> Category already exits in the category</div>");
				}else{
					query {
						echo('
								insert into   category  set
								Name  = "#arguments.c_name#"
							');
					}
					writeoutput("<div class='alert alert-success'>
						         <a class='close' data-dismiss='alert' href='' aria-hidden='true'>×</a>
						          <strong><i class='fa fa-floppy-o' style='position:relative;bottom:-5px'></i></strong>&nbsp;Category successfully save</div>");
				}

	}

}