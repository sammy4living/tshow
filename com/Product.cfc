/**
*
* @file  /C/remote/lucee/webapps/www/tshow/com/Product.cfc
* @author  
* @description
*
*/

component output="false" displayname="" extends="com.shopping.Product"  {

	public function init(){
		return this;
	}

	public query function getProductCategoryByURL(required numeric limit){

			query name='qP'{
				echo('
					select * from product 
					where CategoryId =#listlast(cgi.query_string,"@")#

					LIMIT 0,#arguments.limit#
				');
			}

		return qP;
	}

	public query function getProduct(){

			query name='qP'{
				echo('
					select * from product 
					LIMIT 0,6
				');
			}

		return qP;
	}

	public query function getProductByURL(){

		query name='qP'{
			echo('
				select p.*,c.*,c.Name AS c_Name from product p 
				inner join category c ON c.CategoryId = p.CategoryId
				where ProductId =#listlast(cgi.query_string,'@')#
				');
		}

		return qP;
	}

	public void function updateProductByURL(required struct f){

		query name='qP'{
			echo('
				update product set				
						CategoryId = "#arguments.f.categoryId#",
						Name = "#arguments.f.product_name#",
						imgURL = "#arguments.f.img#",
						Price = "#arguments.f.price#",
						Description = "#arguments.f.description#"
						where ProductId =#listlast(cgi.query_string,'@')#
				');
		}

		writeoutput("<div class='alert alert-success'>
			         <a class='close' data-dismiss='alert' href='' aria-hidden='true'>×</a>
			         <strong></strong> Product successfully updated</div>");

	}

	public void function addProduct(required struct f){

		transaction{
			query name="qModel"{
				echo('SELECT * FROM product
				  Where Name = "#arguments.f.product_name#"
				  ' );
			}
		}
		if(qModel.recordcount){
			writeoutput("<div class='alert alert-danger'>
			            <a class='close' data-dismiss='alert' href='' aria-hidden='true'>×</a>
			            Product &quot;#arguments.f.product_name#&quot; already exits</div>");
		}else{
			transaction action="begin"{
				query{
					echo('INSERT INTO product SET
						CategoryId = "#arguments.f.categoryId#",
						Name = "#arguments.f.product_name#",
						imgURL = "#arguments.f.img#",
						Price = "#arguments.f.price#",
						Description = "#arguments.f.description#"
						');
				}
			}
			writeoutput("<div class='alert alert-success'>
			            <a class='close' data-dismiss='alert' href='' aria-hidden='true'>×</a>
			            <strong></strong> Product successfully save</div>");
		}
	}
}