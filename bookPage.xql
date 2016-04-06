(:bookPage.xql
  Description: This xql program will convert the xml file "asin.xml" in to a HTML document that can be 
  viewed in a browser. 
  Output: If the command is like ./saxon.sh bookPage.xql, the result is show at the terminal.
		  If want an output html file, run as ./saxon.sh bookPage.xql > output.html:)

let $book := doc('asin.xml')
let $open-curly := '&#123;' (: for { :)
let $closed-curly := '&#125;' (: for } :)
let $space := '&#32;' (: space :)
let $tab := '&#9;' (: tab :)
let $ampersand := '&#38;' (: ampersand :)
let $zwsp := ' ' (: zero width space :)
let $nbsp := '&#160;'(: nbsp :)

return
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>{data($book/asin/Title)}: {data($book/asin/Author)} :{data($book/asin/store)}</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" ></link>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" ></link>
        <link href="css/amazon.css" rel="stylesheet" ></link>
        <script src="js/jquery-2.1.0.min.js" type="text/javascript">{$zwsp}</script>
        <script src="js/bootstrap.min.js" type="text/javascript">{$zwsp}</script>
    </head>
    <body>
        <header id="navbar">
            <div id="nav-logo">
                <a href="http://www.amazon.com/" class="nav-logo-link">
                    <span class="nav-logo-base nav-sprite">Amazon</span>
                </a>
                <a href="/gp/product/B00DBYBNEE/ref=gno_joinprmlogo" class="nav-logo-tagline">Try Prime</a>
            </div>
            <div id="welcomeRowTable">
                <div id="navSwmHoliday" style="background-image: url(images/TRAFFIC_mothers-day_swms_300x50_v2-2._V339040361_.jpg); width: 300px; height: 50px; overflow: hidden;"><img alt="Mother's Day Savings" src="images/transparent-pixel._V386942464_.gif" border="0" width="300px" height="50px" usemap="#nav-swm-holiday-map" /></div>
            </div>
            <div class="clearbox">{$zwsp}</div>
            <div id="nav-logo-borderfade"><div class="nav-fade-mask">{$zwsp}</div><div class="nav-fade nav-sprite">{$zwsp}</div>{$zwsp}</div>
            <div id="nav-bar-inner" class="nav-sprite" role="navigation">
                <div id="nav-bar-left">
                    <a id="nav-shop-all-button" href="https://www.amazon.com/gp/site-directory/ref=topnav_sad" class="nav_a nav-button-outer nav-menu-active" alt="Shop By Department">
                        <span class="nav-button-title nav-button-line1">Shop by</span>
                        <span class="nav-button-title nav-button-line2">Department<span class="nav-down-arrow">{$zwsp}</span></span>
                    </a>
                </div>
                <div id="nav-bar-right">
                    <a id="nav-your-account" href="https://www.amazon.com/gp/css/homepage.html/ref=gno_yam_ya" class="nav_a nav-button-outer nav-button-ellipsis nav-menu-active" alt="Your Account">
                        <span id="nav-signin-title" class="nav-button-title nav-button-line1">
                            Hello,
                            <span id="nav-signin-text" class="nav-button-em">Elaine</span>
                        </span>
                        <span class="nav-button-title nav-button-line2">Your Account<span class="nav-down-arrow">{$zwsp}</span>{$zwsp}</span>
                    </a>

                    <span class="nav-divider">{$zwsp}</span>
                    <a id="nav-your-prime" href="https://www.amazon.com//gp/product/B00DBYBNEE/ref=nav_prime_join" class="nav_a nav-button-outer nav-menu-active" alt="Try Prime">
                        <span class="nav-button-title nav-button-line1">Try</span>
                        <span class="nav-button-title nav-button-line2">Prime<span class="nav-down-arrow">{$zwsp}</span></span>
                    </a>

                    <span class="nav-divider">{$zwsp}</span>
                    <a id="nav-cart" href="https://www.amazon.com//gp/cart/view.html/ref=gno_cart" class="nav_a nav-button-outer nav-menu-active" alt="Shopping Cart">
                        <span class="nav-button-title nav-button-line1"> {$zwsp}</span>
                        <span class="nav-button-title nav-button-line2">Cart<span class="nav-down-arrow">{$zwsp}</span>{$zwsp}</span>
                        <span class="nav-cart-button nav-sprite">{$zwsp}</span>
                        <span id="nav-cart-count" class="nav-cart-0">0</span>
                    </a>

                    <span class="nav-divider"></span>
                    <a id="nav-wishlist" href="https://www.amazon.com//gp/registry/wishlist/ref=wish_list" class="nav_a nav-button-outer nav-menu-active" alt="Wish List">
                        <span class="nav-button-title nav-button-line1">Wish</span>
                        <span class="nav-button-title nav-button-line2">List<span class="nav-down-arrow"></span></span>
                    </a>
                </div>
                <div id="nav-bar-middle">
                    <label id="nav-search-label" for="twotabsearchtextbox">
                        Search
                    </label>
                    <form id="nav-searchbar" action="https://www.amazon.com/s/ref=nb_sb_noss" method="get" name="site-search" role="search" class="nav-searchbar-inner">


                        <div class="nav-submit-button nav-sprite">
                            <input type="submit" value="Go" class="nav-submit-input" title="Go"/>
                        </div>

                        <span id="nav-search-in" class="nav-sprite nav-facade-active">
                            <span id="nav-search-in-content" data-value="search-alias=aps">
                                All
                            </span>
                            <span class="nav-down-arrow">{$zwsp}</span>
                            <select data-nav-digest="OgkXoCU07zgXItPPW0eWIPUJu/k" data-nav-selected="0" name="url" id="searchDropdownBox" class="searchSelect" title="Search in" style="top: 3px;"><option value="search-alias=aps" selected="selected">All Departments</option><option value="search-alias=instant-video">Amazon Instant Video</option><option value="search-alias=appliances">Appliances</option><option value="search-alias=mobile-apps">Apps for Android</option><option value="search-alias=arts-crafts">Arts, Crafts {$ampersand} Sewing</option><option value="search-alias=automotive">Automotive</option><option value="search-alias=baby-products">Baby</option><option value="search-alias=beauty">Beauty</option><option value="search-alias=stripbooks">Books</option><option value="search-alias=mobile">Cell Phones {$ampersand} Accessories</option><option value="search-alias=apparel">Clothing {$ampersand} Accessories</option><option value="search-alias=collectibles">Collectibles {$ampersand} Fine Art</option><option value="search-alias=computers">Computers</option><option value="search-alias=electronics">Electronics</option><option value="search-alias=financial">Credit Cards</option><option value="search-alias=gift-cards">Gift Cards Store</option><option value="search-alias=grocery">Grocery {$ampersand} Gourmet Food</option><option value="search-alias=hpc">Health {$ampersand} Personal Care</option><option value="search-alias=garden">Home {$ampersand} Kitchen</option><option value="search-alias=industrial">Industrial {$ampersand} Scientific</option><option value="search-alias=jewelry">Jewelry</option><option value="search-alias=digital-text">Kindle Store</option><option value="search-alias=magazines">Magazine Subscriptions</option><option value="search-alias=movies-tv">Movies {$ampersand} TV</option><option value="search-alias=digital-music">MP3 Music</option><option value="search-alias=popular">Music</option><option value="search-alias=mi">Musical Instruments</option><option value="search-alias=office-products">Office Products</option><option value="search-alias=lawngarden">Patio, Lawn {$ampersand} Garden</option><option value="search-alias=pets">Pet Supplies</option><option value="search-alias=shoes">Shoes</option><option value="search-alias=software">Software</option><option value="search-alias=sporting">Sports {$ampersand} Outdoors</option><option value="search-alias=tools">Tools {$ampersand} Home Improvement</option><option value="search-alias=toys-and-games">Toys {$ampersand} Games</option><option value="search-alias=videogames">Video Games</option><option value="search-alias=watches">Watches</option><option value="search-alias=wine">Wine</option></select>
                        </span>

                        <div class="nav-searchfield-width">
                            <div id="nav-iss-attach">
                                <input type="text" id="twotabsearchtextbox" title="Search For" value="" name="field-keywords" autocomplete="off"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div id="nav-subnav-container">
                <ul id="nav-subnav" data-category="books" data-digest="UZ7ZWXsNJVr19Y9kOH86ePCIZYY">
                    <li class="nav-subnav-item nav-category-button"><a href="/books-used-books-textbooks/b/ref=topnav_storetab_b?ie=UTF8{$ampersand}node=283155" class="nav_a">Books</a></li>
                    <li class="nav-subnav-item"><a href="https://www.amazon.com/Advanced-Search-Books/b/ref=sv_b_0?ie=UTF8{$ampersand}node=241582011" class="nav_a">Advanced Search</a></li>
                    <li class="nav-subnav-item"><a href="https://www.amazon.com/gp/new-releases/books/ref=sv_b_1" class="nav_a">New Releases</a></li>
                    <li class="nav-subnav-item"><a href="https://www.amazon.com/gp/bestsellers/books/ref=sv_b_2" class="nav_a">Best Sellers</a></li>
                    <li class="nav-subnav-item"><a href="https://www.amazon.com/Books/b/ref=sv_b_3?ie=UTF8{$ampersand}node=549028" class="nav_a">The{$nbsp}New{$nbsp}York Times{$nbsp}Best{$nbsp}Sellers</a></li>
                    <li class="nav-subnav-item"><a href="https://www.amazon.com/Childrens-Books/b/ref=sv_b_4?ie=UTF8{$ampersand}node=4" class="nav_a">Children's Books</a></li>
                    <li class="nav-subnav-item"><a href="https://www.amazon.com/New-Used-Textbooks-Books/b/ref=sv_b_5?ie=UTF8{$ampersand}node=465600" class="nav_a">Textbooks</a></li>
                    <li class="nav-subnav-item"><a href="https://www.amazon.com/b/ref=sv_b_6?ie=UTF8{$ampersand}node=5657188011" class="nav_a">Textbook Rentals</a></li>
                    <li class="nav-subnav-item"><a href="https://www.amazon.com/Sell-Books/b/ref=sv_b_7?ie=UTF8{$ampersand}node=2205237011" class="nav_a">Sell{$nbsp}Us Your{$nbsp}Books</a></li>
                    <li class="nav-subnav-item"><a href="https://www.amazon.com/Best-Books-of-the-Month/b/ref=sv_b_8?ie=UTF8{$ampersand}node=390919011" class="nav_a">Best{$nbsp}Books of{$nbsp}the{$nbsp}Month</a></li>
                    <li class="nav-subnav-item"><a href="https://www.amazon.com/Bargain-Books/b/ref=sv_b_9?ie=UTF8{$ampersand}node=45" class="nav_a">Deals in{$nbsp}Books</a></li>
                </ul>
            </div>
        </header>
        <div class="clearbox">{$zwsp}</div>
        <div class="container">
            <div class="bookInfo">
                <div style="width:{xs:int($book/asin/LargeImage_Width) + 20}px;float:left;">
                    <div id="main-image-widget">
                        <div id="main-image-content">
                            <div id="main-image-relative-container" style="position:relative">
                                <img id="main-image" src="{data($book/asin/LargeImage_URL)}" alt="" rel="" style="display: inline; cursor: pointer;" width="{$book/asin/LargeImage_Width}" height="{$book/asin/LargeImage_Height}"/>
                            </div>
                        </div>
                    </div>
                </div> 
                <div class="col-lg-6 col-md-7 col-xs-12">
                    <div class="buying">
                        <h1 class="parseasinTitle">
                            <span id="btAsinTitle">{data($book/asin/Title)}
                                <span style="text-transform: capitalize; font-size: 16px;">[{data($book/asin/Binding)}]</span>
                            </span>
                        </h1>
                        <span>by {data($book/asin/Author)}</span>
                    </div>
                    <span class="swSprite s_star_4_5 " title="4.4 out of 5 stars"><span>4.4 out of 5 stars</span></span>
                    <hr id="product-title-divider" size="1"></hr>
                    <div id="rentalPriceBlockGrid">
                        <div class="rentalPriceLabel">Buy New</div>
                        <span class="rentPrice">{data($book/asin/ListPrice_FormattedPrice)}</span>
                        <span class="actualPriceExtraMessaging">
                            {$nbsp}{$ampersand}{$nbsp} <b>FREE Shipping</b> on orders over $35.
                            <a href="http://www.amazon.com/gp/help/customer/display.html/ref=mk_sss_dp_1?ie=UTF8{$ampersand}nodeId=527692{$ampersand}pop-up=1" target="AmazonHelp">Details</a>
                        </span>
                        <div id="newItemAvailability">
                            <div class="buying">
                                <span class="availGreen">In Stock.</span><br /> Ships from and sold by <b>Amazon.com</b>. Gift-wrap available.
                            </div>
                        </div>
                        <div style="margin-top:20px;">
                            <a href="http://www.amazon.com//gp/redirect.html/ref=as_txbdp_pa?location=http://www.amazon.com/gp/student/signup/info{$ampersand}token=3A0F170E7CEFE27BDC730D3D7344512BC1296B83{$ampersand}pf_rd_m=ATVPDKIKX0DER{$ampersand}pf_rd_s=product-alert{$ampersand}pf_rd_r=1DQCDAKKHJ7X9GGWQ9HZ{$ampersand}pf_rd_t=201{$ampersand}pf_rd_p=1753959642{$ampersand}pf_rd_i=0321559673"><img src="images/Product-Alert-image.png" width="398" align="left" alt="Free Two-Day Shipping for College Students with Amazon Student" height="50" border="0"/></a>
                        </div>
                        
                    </div>

                </div>
            </div>
            <div class="clearbox">{$zwsp}</div>
            <hr class="bucketDivider" size="1"></hr>
            <div class="book-content">
                <h2>Book Description</h2>
                <div class="buying"><span class="byLinePipe">Publication Date: </span><span style="font-weight: bold;">{data($book/asin/PublicationDate)}</span> <span class="byLinePipe"> | ISBN-10:</span><span style="font-weight: bold;"> {substring(data($book/asin/@ISBN), 1, 10)} </span> <span class="byLinePipe"> | ISBN-13:</span><span style="font-weight: bold;"> {substring(data($book/asin/@ISBN), 12, 3)}-{substring(data($book/asin/@ISBN), 15)}</span> <span class="byLinePipe"> | Edition: </span><span style="font-weight: bold;">{$book/asin/Edition}</span>  </div>
                <div class="content">
                    <div id="SUM_display">{data($book/asin/EditorialReview_Content)}</div>
                </div>
            </div>
            <hr class="bucketDivider" size="1"></hr>
            <div class="product-detail">
                <h2>Product Details</h2>
                <div class="product-detail-list">
                    <ul>
                        <li><b>Paperback:</b> {data($book/asin/NumberOfPages)} pages</li>
                        <li><b>Publisher:</b> {data($book/asin/Publisher)} ({data($book/asin/PublicationDate)})</li>
                        <li><b>Language:</b> English</li>
                        <li><b>ISBN-10:</b> {substring(data($book/asin/@ISBN), 1, 10)}</li>
                        <li><b>ISBN-13:</b> {substring(data($book/asin/@ISBN), 12, 3)}-{substring(data($book/asin/@ISBN), 15)}</li>
                        <li>
                            <b>
                                Product Dimensions:
                            </b>
                            {xs:int($book/asin/PackageDimensions_Height) div 100.0 } x {xs:int($book/asin/PackageDimensions_Width) div 100.0 } x {xs:int($book/asin/PackageDimensions_Length) div 100.0 } inches
                        </li>
                        <li><b>Shipping Weight:</b> {xs:int($book/asin/PackageDimensions_Weight) div 100.0} pounds (<a href="http://www.amazon.com/gp/help/seller/shipping.html/ref=dp_pd_shipping?ie=UTF8{$ampersand}asin=0321559673{$ampersand}seller=ATVPDKIKX0DER">View shipping rates and policies</a>)</li>
                        <li id="SalesRank">
                            <b>Amazon Best Sellers Rank:</b>
                            #{data($book/asin/SalesRank)} in Books (<a href="http://www.amazon.com/best-sellers-books-Amazon/zgbs/books/ref=pd_dp_ts_b_1">See Top 100 in Books</a>)
                        </li>
                    </ul>
                    <div class="bucket">
                        {$nbsp}Would you like to <b><a href="https://www.amazon.com/gp/gfix/welcome.html/ref=gfix-product-detail-catalog?ie=UTF8{$ampersand}ASIN=0321559673{$ampersand}merchantID=ATVPDKIKX0DER{$ampersand}storeID=books">update product info</a></b>, <b><a href="https://www.amazon.com/gp/gfix/imageCorrection.html/ref=gfix-product-detail-image?ie=UTF8{$ampersand}ASIN=0321559673{$ampersand}merchantID=ATVPDKIKX0DER{$ampersand}storeID=books">give feedback on images</a></b>, or <b><a href="#">tell us about a lower price</a></b>?
                    </div>
                </div>
            </div>
            <hr class="bucketDivider" size="1"></hr>
        </div>
        <footer id="navFooter" role="contentinfo">

                <table class="navFooterVerticalColumn" cellspacing="0" align="center"><tbody><tr><td class="navFooterLinkCol"><div class="navFooterColHead">Get to Know Us</div><ul><li class="nav_first"><a href="http://amazon.jobs/?ref=gw_m_b_careers" class="nav_a">Careers</a></li><li><a href="https://www.amazon.com/gp/redirect.html/ref=gw_m_b_ir?_encoding=UTF8{$ampersand}location=http%3A%2F%2Fphx.corporate-ir.net%2Fphoenix.zhtml%3Fc%3D97664%26p%3Dirol-irhome{$ampersand}token=F9CAD8A11D4336B5E0B3C3B089FA066D0A467C1C" class="nav_a">Investor Relations</a></li><li><a href="https://www.amazon.com/gp/redirect.html/ref=gw_m_b_pr?_encoding=UTF8{$ampersand}location=http%3A%2F%2Fphx.corporate-ir.net%2Fphoenix.zhtml%3Fc%3D176060%26p%3Dirol-mediaHome{$ampersand}token=F9CAD8A11D4336B5E0B3C3B089FA066D0A467C1C" class="nav_a">Press Releases</a></li><li><a href="https://www.amazon.com/b/ref=gw_m_b_corpres?ie=UTF8{$ampersand}node=13786321" class="nav_a">Amazon and Our Planet</a></li><li><a href="https://www.amazon.com/b/ref=gw_m_b_ourcomm?ie=UTF8{$ampersand}node=13786411" class="nav_a">Amazon in the Community</a></li><li class="nav_last"><a href="http://www.amazon.com/Streaming-Internet-Media-Player/oc/Fire-TV" class="nav_a">Fire TV - Amazon's Media Player</a></li></ul></td><td class="navFooterColSpacerInner"></td><td class="navFooterLinkCol"><div class="navFooterColHead">Make Money with Us</div><ul><li class="nav_first"><a href="https://www.amazon.com/gp/redirect.html/ref=footer_soa?_encoding=UTF8{$ampersand}location=http%3A%2F%2Fwww.amazonservices.com%2Fcontent%2Fsell-on-amazon.htm%2Fref%3Dfooter_soa%3Fld%3DAZFSSOA{$ampersand}token=1E60AB4AC0ECCA00151B45353E21782E539DC601" class="nav_a">Sell on Amazon</a></li><li><a href="https://affiliate-program.amazon.com" class="nav_a">Become an Affiliate</a></li><li><a href="http://services.amazon.com/content/product-ads-on-amazon.htm/ref=footer_pads?ld=AZPADSFooter" class="nav_a">Advertise Your Products</a></li><li><a href="https://www.amazon.com/gp/seller-account/mm-summary-page.html?ie=UTF8{$ampersand}ld=AZFooterSelfPublish{$ampersand}topic=200260520" class="nav_a">Independently Publish with Us</a></li><li><a href="https://www.amazon.com/gp/seller-account/mm-landing.html/ref=footer_seeall?ie=UTF8{$ampersand}ld=AZSOAviewallMakeM" class="nav_a">See all</a></li></ul></td><td class="navFooterColSpacerInner"></td><td class="navFooterLinkCol"><div class="navFooterColHead">Amazon Payment Products</div><ul><li class="nav_first"><a href="https://www.amazon.com/gp/cobrandcard/marketing.html/ref=footer_cbcc?ie=UTF8{$ampersand}place=camp{$ampersand}plattr=CBFOOT{$ampersand}pr=con321" class="nav_a">Amazon.com Rewards Visa Card</a></li><li><a href="https://www.amazon.com/gp/cobrandcard/marketing.html/ref=footer_plcc?ie=UTF8{$ampersand}place=camp{$ampersand}plattr=PLCCFOOT{$ampersand}pr=conplcc" class="nav_a">Amazon.com Store Card</a></li><li><a href="https://www.amazon.com/earn-spend-rewards-points/b/ref=footer_swp?ie=UTF8{$ampersand}node=2634438011" class="nav_a">Shop with Points</a></li><li><a href="https://www.amazon.com/compare-credit-card-offers/b/ref=footer_ccmp?ie=UTF8{$ampersand}node=3561432011" class="nav_a">Credit Card Marketplace</a></li><li class="nav_last"><a href="https://www.amazon.com/Currency-Converter/b/ref=footer_tfx?ie=UTF8{$ampersand}node=388305011" class="nav_a">Amazon Currency Converter</a></li></ul></td><td class="navFooterColSpacerInner"></td><td class="navFooterLinkCol"><div class="navFooterColHead">Let Us Help You</div><ul><li class="nav_first"><a href="https://www.amazon.com/gp/css/homepage.html/ref=footer_ya" class="nav_a">Your Account</a></li><li><a href="https://www.amazon.com/gp/help/customer/display.html/ref=footer_shiprates?ie=UTF8{$ampersand}nodeId=468520" class="nav_a">Shipping Rates {$ampersand} Policies</a></li><li><a href="https://www.amazon.com/gp/prime/ref=footer_prime" class="nav_a">Amazon Prime</a></li><li><a href="https://www.amazon.com/gp/css/returns/homepage.html/ref=hy_f_4" class="nav_a">Returns {$ampersand} Replacements</a></li><li><a href="https://www.amazon.com/gp/digital/fiona/manage/ref=footer_myk" class="nav_a">Manage Your Kindle</a></li><li class="nav_last"><a href="https://www.amazon.com/gp/help/customer/display.html/ref=gw_m_b_he?ie=UTF8{$ampersand}nodeId=508510" class="nav_a">Help</a></li></ul></td></tr></tbody></table>

                <div class="navFooterLine navFooterLogoLine"><a href="/ref=footer_logo"><img src="images/navAmazonLogoFooter.gif" width="126" alt="amazon.com" height="24" border="0"/></a></div>

                <div class="navFooterLine navFooterLinkLine navFooterPadItemLine"><ul><li class="nav_first"><a href="http://www.amazon.com.au" class="nav_a">Australia</a></li><li><a href="http://www.amazon.com.br" class="nav_a">Brazil</a></li><li><a href="http://www.amazon.ca/" class="nav_a">Canada</a></li><li><a href="http://www.amazon.cn/" class="nav_a">China</a></li><li><a href="http://www.amazon.fr/" class="nav_a">France</a></li><li><a href="http://www.amazon.de/" class="nav_a">Germany</a></li><li><a href="http://www.amazon.in/" class="nav_a">India</a></li><li><a href="http://www.amazon.it/" class="nav_a">Italy</a></li><li><a href="http://www.amazon.co.jp/" class="nav_a">Japan</a></li><li><a href="http://www.amazon.com.mx/" class="nav_a">Mexico</a></li><li><a href="http://www.amazon.es/" class="nav_a">Spain</a></li><li class="nav_last"><a href="http://www.amazon.co.uk/" class="nav_a">United Kingdom</a></li></ul></div>

                <div class="navFooterLine navFooterLinkLine navFooterDescLine">
                    <table cellspacing="0">
                        <tbody>
                            <tr>
                                <td class="navFooterDescSpacer" style="width: 36.0%"></td>
                                <td class="navFooterDescItem"><a href="http://www.6pm.com/" class="nav_a">6pm<br/> <span class="navFooterDescText">Score deals<br/> on fashion brands</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.abebooks.com/" class="nav_a">AbeBooks<br/> <span class="navFooterDescText">Rare Books<br/> {$ampersand} Textbooks</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.afterschool.com/" class="nav_a">AfterSchool.com<br/> <span class="navFooterDescText">Kids’ Sports, Outdoor<br/> {$ampersand} Dance Gear</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.alexa.com/" class="nav_a">Alexa<br/> <span class="navFooterDescText">Actionable Analytics<br/> for the Web</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://fresh.amazon.com" class="nav_a">AmazonFresh<br/> <span class="navFooterDescText">Groceries {$ampersand} More<br/> Right To Your Door</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://amazonlocal.com/" class="nav_a">Amazon Local<br/> <span class="navFooterDescText">Great Local Deals<br/> in Your City</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.amazonsupply.com/" class="nav_a">AmazonSupply<br/> <span class="navFooterDescText">Business, Industrial<br/> {$ampersand} Scientific Supplies</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://aws.amazon.com/what-is-cloud-computing/?sc_channel=EL{$ampersand}sc_campaign=amazonfooter" class="nav_a">Amazon Web Services<br/> <span class="navFooterDescText">Scalable Cloud<br/> Computing Services</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 36.0%"></td>
                            </tr>
                            <tr><td>{$nbsp}</td></tr>
                            <tr>
                                <td class="navFooterDescSpacer" style="width: 36.0%"></td>
                                <td class="navFooterDescItem"><a href="http://www.audible.com/" class="nav_a">Audible<br/> <span class="navFooterDescText">Download<br/> Audio Books</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.beautybar.com/" class="nav_a">BeautyBar.com<br/> <span class="navFooterDescText">Prestige Beauty<br/> Delivered</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.bookdepository.com/" class="nav_a">Book Depository<br/> <span class="navFooterDescText">Books With Free<br/> Delivery Worldwide</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.bookworm.com" class="nav_a">Bookworm.com<br/> <span class="navFooterDescText">Books For Children<br/> Of All Ages</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.casa.com/" class="nav_a">Casa.com<br/> <span class="navFooterDescText">Kitchen, Storage<br/> {$ampersand} Everything Home</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.createspace.com/" class="nav_a">CreateSpace<br/> <span class="navFooterDescText">Indie Print Publishing<br/> Made Easy</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.diapers.com/" class="nav_a">Diapers.com<br/> <span class="navFooterDescText">Everything<br/> But The Baby</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.dpreview.com/" class="nav_a">DPReview<br/> <span class="navFooterDescText">Digital<br/> Photography</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 36.0%"></td>
                            </tr>
                            <tr><td>{$nbsp}</td></tr>
                            <tr>
                                <td class="navFooterDescSpacer" style="width: 36.0%"></td>
                                <td class="navFooterDescItem"><a href="http://www.eastdane.com/welcome" class="nav_a">East Dane<br/> <span class="navFooterDescText">Designer Men's<br/> Fashion</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.fabric.com/" class="nav_a">Fabric<br/> <span class="navFooterDescText">Sewing, Quilting<br/> {$ampersand} Knitting</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.imdb.com/" class="nav_a">IMDb<br/> <span class="navFooterDescText">Movies, TV<br/> {$ampersand} Celebrities</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.junglee.com/" class="nav_a">Junglee.com<br/> <span class="navFooterDescText">Shop Online<br/> in India</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem">
                                    <a href="http://kdp.amazon.com/" class="nav_a">
                                        Kindle Direct Publishing<br/> <span class="navFooterDescText">
                                            Indie Digital Publishing<br/> Made Easy
                                        </span>
                                    </a>
                                </td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.look.com/" class="nav_a">Look.com<br/> <span class="navFooterDescText">Kids' Clothing<br/> {$ampersand} Shoes</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.myhabit.com/" class="nav_a">MYHABIT<br/> <span class="navFooterDescText">Private Fashion<br/> Designer Sales</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.shopbop.com/welcome" class="nav_a">Shopbop<br/> <span class="navFooterDescText">Designer<br/> Fashion Brands</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 36.0%"></td>
                            </tr>
                            <tr><td>{$nbsp}</td></tr>
                            <tr>
                                <td class="navFooterDescSpacer" style="width: 36.0%"></td>
                                <td class="navFooterDescItem"><a href="http://www.soap.com/" class="nav_a">Soap.com<br/> <span class="navFooterDescText">Health, Beauty {$ampersand}<br/> Home Essentials</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.tenmarks.com/" class="nav_a">TenMarks.com<br/> <span class="navFooterDescText">Math Activities<br/> for Kids {$ampersand} Schools</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.vine.com/" class="nav_a">Vine.com<br/> <span class="navFooterDescText">Everything<br/> to Live Life Green</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.wag.com/" class="nav_a">Wag.com<br/> <span class="navFooterDescText">Everything<br/> For Your Pet</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="/b/ref=footer_wrhsdls?ie=UTF8{$ampersand}node=1267877011" class="nav_a">Warehouse Deals<br/> <span class="navFooterDescText">Open-Box<br/> Discounts</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.woot.com/" class="nav_a">Woot!<br/> <span class="navFooterDescText">Discounts and <br/> Shenanigans</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.yoyo.com/" class="nav_a">Yoyo.com<br/> <span class="navFooterDescText">A Happy Place<br/> To Shop For Toys</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 4%"></td>
                                <td class="navFooterDescItem"><a href="http://www.zappos.com/c/top-searches" class="nav_a">Zappos<br/> <span class="navFooterDescText">Shoes {$ampersand}<br/> Clothing</span></a></td>
                                <td class="navFooterDescSpacer" style="width: 36.0%"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="navFooterLine navFooterLinkLine navFooterPadItemLine"><ul><li class="nav_first"><a href="https://www.amazon.com/gp/help/customer/display.html/ref=footer_cou?ie=UTF8{$ampersand}nodeId=508088" class="nav_a">Conditions of Use</a></li><li><a href="https://www.amazon.com/gp/help/customer/display.html/ref=footer_privacy?ie=UTF8{$ampersand}nodeId=468496" class="nav_a">Privacy Notice</a></li><li><a href="https://www.amazon.com/interestbasedads" class="nav_a">Interest-Based Ads</a></li><li class="nav_last">© 1996-2014, Amazon.com, Inc. or its affiliates</li></ul></div>
        </footer>
    </body>
</html>