<cfoutput>
    <cfif structKeyExists(form, "register")>
        <cfparam name="form.password" type="numeric" default="#randRange(9999,1111)#"/>
        <cfset qUser = application.tshow.user.register(form)/>
        <cfif qUser>
            <cfmail from="sammy4living1@outlook.com" username="sammy4living1@outlook.com" password="1q2w3e4r5t1990" server="smtp.live.com" usetls="true" port="587"   to="#form.email#" subject="Waya access details" type="html">
                Hello #form.name# ,  below is your access details to login to TShow Software.  <br><a href="" target="_blank">Click here to login</a> to  tshow.com<br>

                =================================================<br>
                Email : #form.email#<br>
                Password : #form.password# <br>
                =================================================
                <br>
                <h6>Thanks.</h6>
            </cfmail>
        </cfif>
    </cfif>
    <cfif structKeyExists(form, "login")>
        <cfset qLogin = application.tshow.user.UserLogin(form)/>
    </cfif>
</cfoutput>
<div class="account-login">
<div class="page-title">
<h1>Login or Create an Account</h1>
</div>
<form  method="post" class='form-horizontal'>
<input name="form_key" type="hidden" value="36XgctjvNJCqmTAg"/>
<div class="col2-set">
<div class="wrapper">
<div class="registered-users-wrapper">
<div class="col-2 registered-users">
<div class="content">
<h2>Registered Customers</h2>
<p>If you have an account with us, please log in.</p>
<ul class="form-list">
<li>
<label for="email" class="required"><em>*</em>Email Address</label>
<div class="input-box">
<input type="email" name="email" value="" required  class="input-text required-entry validate-email" title="Email Address"/>
</div>
</li>
<li>
<label for="pass" class="required"><em>*</em>Password</label>
<div class="input-box">
<input type="password" name="password" required class="input-text required-entry validate-password" title="Password"/>
</div>
</li>
</ul>
<div id="window-overlay" class="window-overlay" style="display:none;"></div>
<div id="remember-me-popup" class="remember-me-popup" style="display:none;">
<div class="remember-me-popup-head">
<h3>What's this?</h3>
<a href="#" class="remember-me-popup-close" title="Close">Close</a>
</div>
<div class="remember-me-popup-body">
<p>Checking &quot;Remember Me&quot; will let you access your shopping cart on this computer when you are logged out</p>
<div class="remember-me-popup-close-button a-right">
<a href="#" class="remember-me-popup-close button" title="Close"><span>Close</span></a>
</div>
</div>
</div>
<script type="text/javascript">
//<![CDATA[
    function toggleRememberMepopup(event){
        if($('remember-me-popup')){
            var viewportHeight = document.viewport.getHeight(),
                docHeight      = $$('body')[0].getHeight(),
                height         = docHeight > viewportHeight ? docHeight : viewportHeight;
            $('remember-me-popup').toggle();
            $('window-overlay').setStyle({ height: height + 'px' }).toggle();
        }
        Event.stop(event);
    }

    document.observe("dom:loaded", function() {
        new Insertion.Bottom($$('body')[0], $('window-overlay'));
        new Insertion.Bottom($$('body')[0], $('remember-me-popup'));

        $$('.remember-me-popup-close').each(function(element){
            Event.observe(element, 'click', toggleRememberMepopup);
        })
        $$('#remember-me-box a').each(function(element) {
            Event.observe(element, 'click', toggleRememberMepopup);
        });
    });
//]]>
</script>
<p class="required">* Required Fields</p>
<div class="buttons-set">
<a href="?pg=forget" class="f-left">Forgot Your Password?</a>
<button type="submit" class="button" title="Login" name="login"><span><span>Login</span></span></button>
</div>
</div>
</form>
</div>
</div>
<div class="new-users-wrapper">
<div class="col-1 new-users">
<div class="content">
<h2>New Customers</h2>
<form method='post'>
	<ul class="form-list">
		<li>
		<label for="email" class="required"><em>*</em>Full Name</label>
		<div class="input-box">
		<input type="text" name="name"  class="input-text required-entry validate-email" title="Full Name"/>
		</div>
		</li>
		<li>
		<label for="email" class="required"><em>*</em>Phone Number</label>
		<div class="input-box">
		<input type="text" name="phone" class="input-text required-entry validate-email" title="Phone number"/>
		</div>
		</li>
		<li>
		<label for="pass" class="required"><em>*</em>Email</label>
		<div class="input-box">
		<input type="email" name="email" class="input-text required-entry validate-password" id="pass" title="Email Address"/>
		</div>
		</li>
	</ul>
<div class="buttons-set">
<button type="submit" title="Create an Account" class="button" name='register'><span><span>Create an Account</span></span></button>
</div>
</div>
</div>
</div>
</div>
</div>
</form>
<script type="text/javascript">
    //<![CDATA[
        var dataForm = new VarienForm('login-form', true);
    //]]>
    </script>
</div>

