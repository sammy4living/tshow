<cfoutput>
    <div class="padding-s">
        <cfset qP = application.tshow.product.getByCategory(#val(listlast(cgi.query_string,'@'))#)/>
    <cfset qCat = application.tshow.category.getCategoryByURL()/>
    <cfif structKeyExists(url, "limit") AND url.limit neq 0>
        <cfset qPro = application.tshow.product.getProductCategoryByURL(val(url.limit)) />
        <cfelse>
            <cfset qPro = application.tshow.product.getProductCategoryByURL(6)/>
    </cfif>
    <div class="page-title category-title">
    <h1>#qCat.Name#</h1>
    </div>
    <div class="category-products">
    <div class="toolbar">
    <div class="pager">
    <p class="amount">
    <strong>#qP.recordcount# Item(s)</strong>
    </p>
    <div class="limiter">
    <label>Show</label>
    <select onchange="setLocation(this.value)">

        <option value="?pg=category&limit=6&@#qPro.CategoryId#" <cfif val(url.limit) eq 6 >selected</cfif>>
    6 </option>
    <option value="?pg=category&limit=12&@#qPro.CategoryId#" <cfif val(url.limit) eq 12 >selected</cfif>>
    12 </option>
    <option value="?pg=category&limit=24&@#qPro.CategoryId#"  <cfif val(url.limit) eq 24 >selected</cfif>>
    24 </option>
    </select> </div>
    </div>
    <div class="sorter">
    <p class="view-mode">
    <label>View as:</label>
    <strong title="Grid" class="grid">Grid</strong>&nbsp;
    <a href="http://livedemo00.template-help.com/magento_53175/antivirus-security.html?mode=list" title="List" class="list">List</a>&nbsp;
    </p>
    </div>
    </div>
    <ul class="products-grid row first odd">
        <cfset c = 0 />
        <cfloop query="qPro">
            <cfset c++/>
            <li class="item first col-xs-12 col-sm-4" itemscope="" itemtype="http://schema.org/product">
                <div class="wrapper-hover">
                    <a href="http://livedemo00.template-help.com/magento_53175/avg-anti-virus-2014-1-pc.html" title="AVG Anti-Virus 2014 - 1 PC" class="product-image" itemprop="url">
                        <img data-src="#imgURL#" width="268" height="268" class="lazy" alt="AVG Anti-Virus 2014 - 1 PC" src="#imgURL#" style="opacity: 1;">
                    </a>
                    <div class="product-shop">
                        <div class="price-box" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
                            <span class="regular-price" itemprop="price" id="product-price-1">
                            <span class="price">$#Price#</span> </span>
                        </div>
                        <h2 class="product-name">
                            <a href="?pg=product&@#ProductId#" title="AVG Anti-Virus 2014 - 1 PC" itemprop="name">#left(Name,30)#</a>
                        </h2>
                        <div class="desc_grid" itemprop="description">
                           #left(Description,40)#
                        </div>
                        <div class="actions">
                            <button type="button" title="Add to Cart" class="button btn-cart" onclick="return false;" data="http://livedemo00.template-help.com/magento_53175/checkout/cart/add/uenc/aHR0cDovL2xpdmVkZW1vMDAudGVtcGxhdGUtaGVscC5jb20vbWFnZW50b181MzE3NS9hbnRpdmlydXMtc2VjdXJpdHkuaHRtbD9tb2RlPWdyaWQ,/product/1/form_key/SJ4Ykvba2De8qllH/"><i class="fa fa-shopping-cart">
                                <b></b></i><span><span>Download</span></span>
                            </button>
                        </div>
                    </div>
                    <div class="label-product"></div>
                </div>
            </li>
            <cfif c gt 4>
                <hr>
                <br><br><br>
                <cfset c = 0 />
                <cfelse>

            </cfif>
        </cfloop>

    </ul>

    </div>
    <div id="map-popup" class="map-popup" style="display:none;">
    <a href="##" class="map-popup-close" id="map-popup-close">x</a>
    <div class="map-popup-arrow"></div>
    <div class="map-popup-heading"><h2 id="map-popup-heading"></h2></div>
    <div class="map-popup-content" id="map-popup-content">
    <div class="map-popup-msrp" id="map-popup-msrp-box"><strong>Price:</strong> <span style="text-decoration:line-through;" id="map-popup-msrp"></span></div>
    <div class="map-popup-price" id="map-popup-price-box"><strong>Actual Price:</strong> <span id="map-popup-price"></span></div>
    <div class="map-popup-checkout">
    <form action="" method="POST" id="product_addtocart_form_from_popup">
    <input type="hidden" name="product" class="product_id" value="" id="map-popup-product-id">
    <div class="additional-addtocart-box">
    </div>
    <button type="button" title="Add to Cart" class="button btn-cart" id="map-popup-button"><span><span>Add to Cart</span></span></button>
    </form>
    </div>
    <script type="text/javascript">
            //<![CDATA[
                document.observe("dom:loaded", Catalog.Map.bindProductForm);
            //]]>
            </script>
    </div>
    <div class="map-popup-text" id="map-popup-text">Our price is lower than the manufacturer's "minimum advertised price." As a result, we cannot show you the price in catalog or the product page. <br><br> You have no obligation to purchase the product once you know the price. You can simply remove the item from your cart.</div>
    <div class="map-popup-text" id="map-popup-text-what-this">Our price is lower than the manufacturer's "minimum advertised price." As a result, we cannot show you the price in catalog or the product page. <br><br> You have no obligation to purchase the product once you know the price. You can simply remove the item from your cart.</div>
    </div>
    </div>
</cfoutput>