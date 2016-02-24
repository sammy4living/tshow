/**
*
* @file  /C/remote/lucee/webapps/www/tshow/com/User.cfc
* @author  
* @description
*
*/

component output="false" displayname="" extends="com.shopping.User"  {

	public function init(){
		return this;
	}

	public query function UserLogin(required struct f){

		var qLogin = "";
		transaction{
			query name="qLogin"{
				echo("SELECT u.*,r.*,r.Name AS r_Name FROM user u
					INNER JOIN role r ON u.RoleId = r.RoleId
					WHERE u.Email = '#arguments.f.email#' AND
				u.Password = '#hash(arguments.f.password,'MD5')#' ");
			}
		}
		if(qLogin.recordcount){
			lock scope="session" type="exclusive" timeout="5"{
				session.user  = qLogin ;
				session.IsLogin = true;
			}
			lock scope="session" type="readonly" timeout="5"{
				request.user = session.user ;
			}

			if(structKeyExists(form, "h_referer")){
				switch(arguments.f.h_referer){
					case  'comment':
					location url="?pg=comment" addtoken="false";
					break;

					case  'cart':
					location url="?pg=cart" addtoken="false";
					break;

					default :
					location url="?pg=home" addtoken="false";
					break;
				}
			}else{
				location url="?pg=home" addtoken="false";
			}
		}

		else{
			lock scope="session" type="exclusive" timeout="5"{
				session.IsLogin = false;
			}
			writeoutput("<div class='alert alert-danger'>
            <a class='close' data-dismiss='alert' href='' aria-hidden='true'>×</a>
            <strong>Oh snap!</strong> Wrong username or password, pls try again
          </div>");
		}
		return qLogin;
	}
}