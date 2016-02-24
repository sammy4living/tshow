<cfoutput>
    <cfset qPro = application.tshow.product.getProduct()/>
    <div class="std"><div class="clear"></div>
    <script src="assets/js/camera.js"> </script>
    <script>
    jQuery(function(){
        jQuery('##camera_wrap').camera({
            alignmen: 'topCenter',
            height: '45.85%',
            minHeight: '100px',
            loader : false,
            navigation: false,
            fx: 'simpleFade',
            navigationHover:false,       
            thumbnails: false,
            playPause: false,
            pagination:true,
        });
    });
    </script>
    <div class="fluid_container_wrap">
    <div class="fluid_container">
    <div class="camera_wrap camera_orange_skin" id="camera_wrap" style="display: block; margin-bottom: 0px; height: 398px;"><div class="camera_fakehover"><div class="camera_src camerastarted hovered paused">
    <div data-src="assets/img/slide1.jpg">

    </div>
    <div data-src="assets/img/slide2.jpg">

    </div>
    <div data-src="assets/img/slide3.jpg">

    </div>
    </div><div class="camera_target"><div class="cameraCont"><div class="cameraSlide cameraSlide_0" style="visibility: visible; display: none; z-index: 1;"><img src="assets/img/slide1.jpg" class="imgLoaded" data-alignment="" data-portrait="" width="868" height="398" style="visibility: visible; height: 398px; margin-left: 0px; margin-top: 0px; position: absolute; width: 868px;"><div class="camerarelative" style="width: 868px; height: 398px;"></div></div><div class="cameraSlide cameraSlide_1 cameracurrent" style="display: block; z-index: 999;"><img src="assets/img/slide2.jpg" class="imgLoaded" style="visibility: visible; height: 398px; margin-top: 0px; position: absolute;"><div class="camerarelative" style="width: 868px; height: 398px;"></div></div><div class="cameraSlide cameraSlide_2 cameranext" style="display: none; z-index: 1;"><img src="assets/img/slide3.jpg" class="imgLoaded" style="visibility: visible; height: 398px; margin-top: 0px; position: absolute;"><div class="camerarelative" style="width: 868px; height: 398px;"></div></div><div class="cameraSlide cameraSlide_3 cameranext" style="z-index: 1; display: none;"><div class="camerarelative" style="width: 868px; height: 398px;"></div></div></div></div><div class="camera_overlayer"></div><div class="camera_target_content"><div class="cameraContents"><div class="cameraContent" style="display: none;"><div class="camera_caption fadeFromRight" style="visibility: hidden; opacity: 1; left: 0px; right: auto;"><div>
    <div class="lof_camera_title">Windows <span>8 PRO</span></div>
    <div class="lof_camera_desc">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt.</div>
    <div class="lof_camera_price">From <span>$589.99</span></div>
    <a class="camera-link" href="http://livedemo00.template-help.com/magento_53175/graphics-art-design/graphics-illustration.html">Shop now!</a>
    </div></div></div><div class="cameraContent cameracurrent" style="display: block;"><div class="camera_caption fadeFromRight" style="visibility: visible; opacity: 1; left: 0px; right: auto;"><div>
    <div class="lof_camera_title">Microsoft <span>Office </span></div>
    <div class="lof_camera_desc">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt.</div>
    <div class="lof_camera_price">From <span>$289.99</span></div>
    <a class="camera-link" href="http://livedemo00.template-help.com/magento_53175/office-productivity.html">Shop now!</a>
    </div></div></div><div class="cameraContent" style="display: none;"><div class="camera_caption fadeFromRight" style="visibility: hidden; opacity: 1; left: 0px; right: auto;"><div>
    <div class="lof_camera_title">Adobe <span>CS6</span></div>
    <div class="lof_camera_desc">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt.</div>
    <div class="lof_camera_price">From <span>$389.99</span></div>
    <a class="camera-link" href="http://livedemo00.template-help.com/magento_53175/graphics-art-design/graphics-illustration.html">Shop now!</a>
    </div></div></div></div></div><div class="camera_bar" style="display: none; top: auto; height: 7px;"><span class="camera_bar_cont" style="opacity: 0.8; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px; background-color: rgb(34, 34, 34);"><span id="pie_0" style="opacity: 0.8; position: absolute; left: 0px; right: 0px; top: 2px; bottom: 2px; display: none; background-color: rgb(238, 238, 238);"></span></span></div></div><div class="camera_pag"><ul class="camera_pag_ul"><li class="pag_nav_0" style="position:relative; z-index:1002"><span><span>0</span></span></li><li class="pag_nav_1 cameracurrent" style="position:relative; z-index:1002"><span><span>1</span></span></li><li class="pag_nav_2" style="position:relative; z-index:1002"><span><span>2</span></span></li></ul></div><div class="camera_loader" style="display: none; visibility: visible;"></div></div>
    </div>
    </div>
    </div>
    <br>
    <div class="page-title category-title">
    <h1>New Products</h1>
    </div>
    <ul class="products-grid row first odd">
        <cfloop query="qPro">
            <li class="item col-xs-4 first" itemscope="" itemtype="http://schema.org/product">
            <div class="wrapper-hover">
            <a href="http://livedemo00.template-help.com/magento_53175/office-365-personal.html" title="Office 365 Personal" class="product-image" itemprop="url"><img data-src="#imgURL#" width="270" height="270" class="lazy" alt="Office 365 Personal" src="#imgURL#"></a>
            <div class="product-shop">
            <div class="price-box" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
            <span class="regular-price" itemprop="price" id="product-price-33-new">
            <span class="price">$#Price#</span> </span>
            </div>
            <h3 class="product-name"><a href="http://livedemo00.template-help.com/magento_53175/office-365-personal.html" title="Office 365 Personal" itemprop="name">#Name#</a></h3>
            <div class="desc_grid">
                #left(Description,60)#
            </div>
            <div class="actions">
            <button type="button" title="Add to Cart" class="button btn-cart" onclick="return false;" data="http://livedemo00.template-help.com/magento_53175/checkout/cart/add/uenc/aHR0cDovL2xpdmVkZW1vMDAudGVtcGxhdGUtaGVscC5jb20vbWFnZW50b181MzE3NS8,/product/33/form_key/wZrLrtvTZ6SLkaAJ/"><i class="fa fa-shopping-cart"><b></b></i><span><span>Download</span></span></button>
            </div>
            </div>
            <div class="label-product">
            </div>
            </div>
            </li>
    </cfloop>
    </ul>
</cfoutput>