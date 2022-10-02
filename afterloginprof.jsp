<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="msapplication-tap-highlight" content="no" />
  <meta name="description" content="" />
  <title>Bien mobilier-Prof</title>
  <link
   href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"
   rel="stylesheet"
  />
  <link
   href="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/jqvmap.css?v=16275756370585718435"
   rel="stylesheet"
  />
  <link
   href="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/flag-icon.min.css?v=10757425894848348376"
   rel="stylesheet"
  />
  <!-- Fullcalendar-->
  <link
   href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.7.0/fullcalendar.min.css"
   rel="stylesheet"
  />
  <!-- Materialize-->
  <link
   href="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/admin-materialize.min.css?v=8850535670742419153"
   rel="stylesheet"
  />
  <!-- Material Icons-->
  <link
   href="https://fonts.googleapis.com/icon?family=Material+Icons"
   rel="stylesheet"
  />
  

  <script>
   window.performance &&
    window.performance.mark &&
    window.performance.mark("shopify.content_for_header.start");
  </script>
  <meta
   id="shopify-digital-wallet"
   name="shopify-digital-wallet"
   content="/17758583/digital_wallets/dialog"
  />
  <meta
   name="shopify-checkout-api-token"
   content="6aacc581eb2b41d74f03c38d3c985dba"
  />
  <meta
   id="in-context-paypal-metadata"
   data-shop-id="17758583"
   data-venmo-supported="true"
   data-environment="production"
   data-locale="en_US"
   data-paypal-v4="true"
   data-currency="USD"
  />
  <style media="all">
   .additional-checkout-button {
    border: 0 !important;
    border-radius: 5px !important;
    display: inline-block;
    margin: 0 0 10px;
    padding: 0 24px !important;
    max-width: 100%;
    min-width: 150px !important;
    line-height: 44px !important;
    text-align: center !important;
   }
   .additional-checkout-button + .additional-checkout-button {
    margin-left: 10px;
   }
   .additional-checkout-button:last-child {
    margin-bottom: 0;
   }
   .additional-checkout-button span {
    font-size: 14px !important;
   }
   .additional-checkout-button img {
    display: inline-block !important;
    height: 1.3em !important;
    margin: 0 !important;
    vertical-align: middle !important;
    width: auto !important;
   }
   @media (max-width: 500px) {
    .additional-checkout-button {
     display: block;
     margin-left: 0 !important;
     padding: 0 10px !important;
     width: 100%;
    }
   }
   .additional-checkout-button--apple-pay {
    background-color: #000 !important;
    color: #fff !important;
    display: none;
    font-family: -apple-system, Helvetica Neue, sans-serif !important;
    min-width: 150px !important;
    white-space: nowrap !important;
   }
   .additional-checkout-button--apple-pay:hover,
   .additional-checkout-button--apple-pay:active,
   .additional-checkout-button--apple-pay:visited {
    color: #fff !important;
    text-decoration: none !important;
   }
   .additional-checkout-button--apple-pay .additional-checkout-button__logo {
    background: -webkit-named-image(apple-pay-logo-white) center center
     no-repeat !important;
    background-size: auto 100% !important;
    display: inline-block !important;
    vertical-align: middle !important;
    width: 3em !important;
    height: 1.3em !important;
   }
   @media (max-width: 500px) {
    .additional-checkout-button--apple-pay {
     display: none;
    }
   }
   .additional-checkout-button--google-pay {
    line-height: 0 !important;
    padding: 0 !important;
    border-radius: unset !important;
    width: 80px !important;
   }
   @media (max-width: 500px) {
    .additional-checkout-button--google-pay {
     width: 100% !important;
    }
   }
   .gpay-iframe {
    height: 44px !important;
    width: 100% !important;
    cursor: pointer;
    vertical-align: middle !important;
   }
   .additional-checkout-button--paypal-express {
    background-color: #ffc439 !important;
   }
   .additional-checkout-button--paypal,
   .additional-checkout-button--venmo {
    vertical-align: top;
    line-height: 0 !important;
    padding: 0 !important;
   }
   .additional-checkout-button--amazon {
    background-color: #fad676 !important;
    position: relative !important;
   }
   .additional-checkout-button--amazon .additional-checkout-button__logo {
    -webkit-transform: translateY(4px) !important;
    transform: translateY(4px) !important;
   }
   .additional-checkout-button--amazon .alt-payment-list-amazon-button-image {
    max-height: none !important;
    opacity: 0 !important;
    position: absolute !important;
    top: 0 !important;
    left: 0 !important;
    width: 100% !important;
    height: 100% !important;
   }
   .additional-checkout-button-visually-hidden {
    border: 0 !important;
    clip: rect(0, 0, 0, 0) !important;
    clip: rect(0 0 0 0) !important;
    width: 1px !important;
    height: 1px !important;
    margin: -2px !important;
    overflow: hidden !important;
    padding: 0 !important;
    position: absolute !important;
   }
  </style>
  <script id="apple-pay-shop-capabilities" type="application/json">
   {
    "shopId": 17758583,
    "countryCode": "US",
    "currencyCode": "USD",
    "merchantCapabilities": ["supports3DS"],
    "merchantId": "gid:\/\/shopify\/Shop\/17758583",
    "merchantName": "Materialize Themes",
    "requiredBillingContactFields": ["postalAddress", "email"],
    "requiredShippingContactFields": ["postalAddress", "email"],
    "shippingType": "shipping",
    "supportedNetworks": ["visa", "masterCard", "amex", "discover"],
    "total": {
     "type": "pending",
     "label": "Materialize Themes",
     "amount": "1.00"
    }
   }
  </script>
  <script id="shopify-features" type="application/json">
   {
    "accessToken": "6aacc581eb2b41d74f03c38d3c985dba",
    "betas": [],
    "domain": "themes.materializecss.com",
    "predictiveSearch": true,
    "shopId": 17758583,
    "smart_payment_buttons_url": "https:\/\/cdn.shopify.com\/shopifycloud\/payment-sheet\/assets\/latest\/spb.en.js",
    "dynamic_checkout_cart_url": "https:\/\/cdn.shopify.com\/shopifycloud\/payment-sheet\/assets\/latest\/dynamic-checkout-cart.en.js",
    "locale": "en"
   }
  </script>
  <script>
   var Shopify = Shopify || {};
   Shopify.shop = "materialize-themes.myshopify.com";
   Shopify.currency = { active: "USD", rate: "1.0" };
   Shopify.theme = {
    name: "debut",
    id: 133945025,
    theme_store_id: 796,
    role: "main"
   };
   Shopify.theme.handle = "null";
   Shopify.theme.style = { id: null, handle: null };
  </script>
  <script type="module">
   !(function(o) {
    (o.Shopify = o.Shopify || {}).modules = !0;
   })(window);
  </script>
  <script>
   !(function(o) {
    function n() {
     var o = [];
     function n() {
      o.push(Array.prototype.slice.apply(arguments));
     }
     return (n.q = o), n;
    }
    var t = (o.Shopify = o.Shopify || {});
    (t.loadFeatures = n()), (t.autoloadFeatures = n());
   })(window);
  </script>
  <script>
   window.ShopifyPay = window.ShopifyPay || {};
   window.ShopifyPay.apiHost = "pay.shopify.com";
  </script>
  <script id="__st">
   var __st = {
    a: 17758583,
    offset: -28800,
    reqid: "cc8a3d57-b539-4e9f-8045-ab854a4aa56a",
    pageurl: "themes.materializecss.com\/pages\/admin-dashboard",
    s: "pages-18649776217",
    u: "c2023a5bc889",
    p: "page",
    rtyp: "page",
    rid: 18649776217
   };
  </script>
  <script>
   window.ShopifyPaypalV4VisibilityTracking = true;
  </script>
  <script>
   window.ShopifyAnalytics = window.ShopifyAnalytics || {};
   window.ShopifyAnalytics.meta = window.ShopifyAnalytics.meta || {};
   window.ShopifyAnalytics.meta.currency = "USD";
   var meta = {
    page: { pageType: "page", resourceType: "page", resourceId: 18649776217 }
   };
   for (var attr in meta) {
    window.ShopifyAnalytics.meta[attr] = meta[attr];
   }
  </script>
  <script>
   window.ShopifyAnalytics.merchantGoogleAnalytics = function() {};
  </script>
  <script class="analytics">
   (window.gaDevIds = window.gaDevIds || []).push("BwiEti");

   (function() {
    var customDocumentWrite = function(content) {
     var jquery = null;

     if (window.jQuery) {
      jquery = window.jQuery;
     } else if (window.Checkout && window.Checkout.$) {
      jquery = window.Checkout.$;
     }

     if (jquery) {
      jquery("body").append(content);
     }
    };

    var isDuplicatedThankYouPageView = function() {
     return (
      document.cookie.indexOf(
       "loggedConversion=" + window.location.pathname
      ) !== -1
     );
    };

    var setCookieIfThankYouPage = function() {
     if (
      window.location.pathname.indexOf("/checkouts") !== -1 &&
      window.location.pathname.indexOf("/thank_you") !== -1
     ) {
      var twoMonthsFromNow = new Date(Date.now());
      twoMonthsFromNow.setMonth(twoMonthsFromNow.getMonth() + 2);

      document.cookie =
       "loggedConversion=" +
       window.location.pathname +
       "; expires=" +
       twoMonthsFromNow;
     }
    };

    var trekkie = (window.ShopifyAnalytics.lib = window.trekkie =
     window.trekkie || []);
    if (trekkie.integrations) {
     return;
    }
    trekkie.methods = [
     "identify",
     "page",
     "ready",
     "track",
     "trackForm",
     "trackLink"
    ];
    trekkie.factory = function(method) {
     return function() {
      var args = Array.prototype.slice.call(arguments);
      args.unshift(method);
      trekkie.push(args);
      return trekkie;
     };
    };
    for (var i = 0; i < trekkie.methods.length; i++) {
     var key = trekkie.methods[i];
     trekkie[key] = trekkie.factory(key);
    }
    trekkie.load = function(config) {
     trekkie.config = config;
     var script = document.createElement("script");
     script.type = "text/javascript";
     script.onerror = function(e) {
      new Image().src =
       "//v.shopify.com/internal_errors/track?error=trekkie_load";
     };
     script.async = true;
     script.src =
      "https://cdn.shopify.com/s/javascripts/tricorder/trekkie.storefront.min.js?v=2019.11.04.1";
     var first = document.getElementsByTagName("script")[0];
     first.parentNode.insertBefore(script, first);
    };
    trekkie.load({
     Trekkie: {
      appName: "storefront",
      development: false,
      defaultAttributes: {
       shopId: 17758583,
       isMerchantRequest: null,
       themeId: 133945025,
       themeCityHash: "1670185919760860438",
       contentLanguage: "en",
       currency: "USD"
      }
     },
     Performance: {
      navigationTimingApiMeasurementsEnabled: true,
      navigationTimingApiMeasurementsSampleRate: 1
     },
     "Google Analytics": {
      trackingId: "UA-56218128-1",
      domain: "auto",
      siteSpeedSampleRate: "10",
      enhancedEcommerce: true,
      doubleClick: true,
      includeSearch: true
     },
     "Session Attribution": {}
    });

    var loaded = false;
    trekkie.ready(function() {
     if (loaded) return;
     loaded = true;

     window.ShopifyAnalytics.lib = window.trekkie;

     ga("require", "linker");
     function addListener(element, type, callback) {
      if (element.addEventListener) {
       element.addEventListener(type, callback);
      } else if (element.attachEvent) {
       element.attachEvent("on" + type, callback);
      }
     }
     function decorate(event) {
      event = event || window.event;
      var target = event.target || event.srcElement;
      if (
       target &&
       (target.getAttribute("action") || target.getAttribute("href"))
      ) {
       ga(function(tracker) {
        var linkerParam = tracker.get("linkerParam");
        document.cookie = "_shopify_ga=" + linkerParam + "; " + "path=/";
       });
      }
     }
     addListener(window, "load", function() {
      for (var i = 0; i < document.forms.length; i++) {
       var action = document.forms[i].getAttribute("action");
       if (action && action.indexOf("/cart") >= 0) {
        addListener(document.forms[i], "submit", decorate);
       }
      }
      for (var i = 0; i < document.links.length; i++) {
       var href = document.links[i].getAttribute("href");
       if (href && href.indexOf("/checkout") >= 0) {
        addListener(document.links[i], "click", decorate);
       }
      }
     });

     var originalDocumentWrite = document.write;
     document.write = customDocumentWrite;
     try {
      window.ShopifyAnalytics.merchantGoogleAnalytics.call(this);
     } catch (error) {}
     document.write = originalDocumentWrite;
     (function() {
      if (
       window.BOOMR &&
       (window.BOOMR.version || window.BOOMR.snippetExecuted)
      ) {
       return;
      }
      window.BOOMR = window.BOOMR || {};
      window.BOOMR.snippetStart = new Date().getTime();
      window.BOOMR.snippetExecuted = true;
      window.BOOMR.snippetVersion = 12;
      window.BOOMR.shopId = 17758583;
      window.BOOMR.themeId = 133945025;
      window.BOOMR.url =
       "https://cdn.shopify.com/shopifycloud/boomerang/shopify-boomerang-1.0.0.min.js";
      var where =
       document.currentScript || document.getElementsByTagName("script")[0];
      var parentNode = where.parentNode;
      var promoted = false;
      var LOADER_TIMEOUT = 3000;
      function promote() {
       if (promoted) {
        return;
       }
       var script = document.createElement("script");
       script.id = "boomr-scr-as";
       script.src = window.BOOMR.url;
       script.async = true;
       parentNode.appendChild(script);
       promoted = true;
      }
      function iframeLoader(wasFallback) {
       promoted = true;
       var dom, bootstrap, iframe, iframeStyle;
       var doc = document;
       var win = window;
       window.BOOMR.snippetMethod = wasFallback ? "if" : "i";
       bootstrap = function(parent, scriptId) {
        var script = doc.createElement("script");
        script.id = scriptId || "boomr-if-as";
        script.src = window.BOOMR.url;
        BOOMR_lstart = new Date().getTime();
        parent = parent || doc.body;
        parent.appendChild(script);
       };
       if (
        !window.addEventListener &&
        window.attachEvent &&
        navigator.userAgent.match(/MSIE [67]./)
       ) {
        window.BOOMR.snippetMethod = "s";
        bootstrap(parentNode, "boomr-async");
        return;
       }
       iframe = document.createElement("IFRAME");
       iframe.src = "about:blank";
       iframe.title = "";
       iframe.role = "presentation";
       iframe.loading = "eager";
       iframeStyle = (iframe.frameElement || iframe).style;
       iframeStyle.width = 0;
       iframeStyle.height = 0;
       iframeStyle.border = 0;
       iframeStyle.display = "none";
       parentNode.appendChild(iframe);
       try {
        win = iframe.contentWindow;
        doc = win.document.open();
       } catch (e) {
        dom = document.domain;
        iframe.src =
         "javascript:var d=document.open();d.domain='" + dom + "';void(0);";
        win = iframe.contentWindow;
        doc = win.document.open();
       }
       if (dom) {
        doc._boomrl = function() {
         this.domain = dom;
         bootstrap();
        };
        doc.write("<body onload='document._boomrl();'>");
       } else {
        win._boomrl = function() {
         bootstrap();
        };
        if (win.addEventListener) {
         win.addEventListener("load", win._boomrl, false);
        } else if (win.attachEvent) {
         win.attachEvent("onload", win._boomrl);
        }
       }
       doc.close();
      }
      var link = document.createElement("link");
      if (
       link.relList &&
       typeof link.relList.supports === "function" &&
       link.relList.supports("preload") &&
       "as" in link
      ) {
       window.BOOMR.snippetMethod = "p";
       link.href = window.BOOMR.url;
       link.rel = "preload";
       link.as = "script";
       link.addEventListener("load", promote);
       link.addEventListener("error", function() {
        iframeLoader(true);
       });
       setTimeout(function() {
        if (!promoted) {
         iframeLoader(true);
        }
       }, LOADER_TIMEOUT);
       BOOMR_lstart = new Date().getTime();
       parentNode.appendChild(link);
      } else {
       iframeLoader(false);
      }
      function boomerangSaveLoadTime(e) {
       window.BOOMR_onload = (e && e.timeStamp) || new Date().getTime();
      }
      if (window.addEventListener) {
       window.addEventListener("load", boomerangSaveLoadTime, false);
      } else if (window.attachEvent) {
       window.attachEvent("onload", boomerangSaveLoadTime);
      }
      if (document.addEventListener) {
       document.addEventListener("onBoomerangLoaded", function(e) {
        e.detail.BOOMR.init({});
        e.detail.BOOMR.t_end = new Date().getTime();
       });
      } else if (document.attachEvent) {
       document.attachEvent("onpropertychange", function(e) {
        if (!e) e = event;
        if (e.propertyName === "onBoomerangLoaded") {
         e.detail.BOOMR.init({});
         e.detail.BOOMR.t_end = new Date().getTime();
        }
       });
      }
     })();

     if (!isDuplicatedThankYouPageView()) {
      setCookieIfThankYouPage();

      window.ShopifyAnalytics.lib.page(null, {
       pageType: "page",
       resourceType: "page",
       resourceId: 18649776217
      });
     }
    });

    var eventsListenerScript = document.createElement("script");
    eventsListenerScript.async = true;
    eventsListenerScript.src =
     "//cdn.shopify.com/s/assets/shop_events_listener-09875a9a2b286acf534498184c24b199675a6097a941992d0979e5295d2cf9e9.js";
    document.getElementsByTagName("head")[0].appendChild(eventsListenerScript);
   })();
  </script>
  <script
   integrity="sha256-mO+GKBT+KVLtCJOxhHda/n8GRk8f8i7hhza2QxpsYxc="
   crossorigin="anonymous"
   data-source-attribution="shopify.loadfeatures"
   defer="defer"
   src="//cdn.shopify.com/s/assets/storefront/load_feature-98ef862814fe2952ed0893b184775afe7f06464f1ff22ee18736b6431a6c6317.js"
  ></script>
  <script
   crossorigin="anonymous"
   defer="defer"
   src="//cdn.shopify.com/s/assets/shopify_pay/storefront-f95c62afca18778ed8677facd32818c864b5e4938cba1769e8d8ba0b541d41dc.js?v=20190107"
  ></script>
  <script
   integrity="sha256-QhO9bRGdM3QYSbs6SNVRsFMjGC8vxxXkRhwgt2BijtI="
   data-source-attribution="shopify.dynamic-checkout"
   defer="defer"
   src="//cdn.shopify.com/s/assets/storefront/features-4213bd6d119d33741849bb3a48d551b05323182f2fc715e4461c20b760628ed2.js"
   crossorigin="anonymous"
  ></script>
  <script
   defer="defer"
   src="//cdn.shopify.com/s/assets/themes_support/ga_urchin_forms-99e991855b3d8ddc69e625c68ab0579dd9927b611c2ec4943d396c72e3af0849.js"
  ></script>

  <style id="shopify-dynamic-checkout-cart">
   @media screen and (min-width: 750px) {
    #dynamic-checkout-cart {
     min-height: 50px;
    }
   }

   @media screen and (max-width: 750px) {
    #dynamic-checkout-cart {
     min-height: 240px;
    }
   }
  </style>
  <script>
   window.performance &&
    window.performance.mark &&
    window.performance.mark("shopify.content_for_header.end");
  </script>
  <link
   rel="canonical"
   href="https://themes.materializecss.com/pages/admin-dashboard"
  />
 </head>
 <body class="has-fixed-sidenav">
  <header>
   <div class="navbar-fixed">
    <nav class="navbar white">
     <div class="nav-wrapper">
      <a href="#!" class="brand-logo grey-text text-darken-4">ESPACE PROFESSEUR</a>
      <ul id="nav-mobile" class="right">
       <li class="hide-on-med-and-down">
        <a href="/projet/logout"><img alt="" src="https://img.icons8.com/external-sbts2018-blue-sbts2018/2x/external-logout-social-media-basic-1-sbts2018-blue-sbts2018.png" height="50px" width="40px"></a>
       </li>
       <li class="hide-on-med-and-down">
        <a
         href="#!"
         data-target="dropdown1"
         class="dropdown-trigger waves-effect"
         ><i class="material-icons">notifications</i></a
        >
       </li>
       <li>
        <a
         href="#!"
         data-target="chat-dropdown"
         class="dropdown-trigger waves-effect"
         ><i class="material-icons">settings</i></a
        >
       </li>
      </ul>
      <a href="#!" data-target="sidenav-left" class="sidenav-trigger left"
       ><i class="material-icons black-text">menu</i></a
      >
     </div>
    </nav>
   </div>
   <ul id="sidenav-left" class="sidenav sidenav-fixed">
    <li>
     <a href="/pages/admin-dashboard" class="logo-container"
      >Professeur<i class="material-icons left">spa</i></a
     >
    </li>
    <li class="no-padding">
     <ul class="collapsible collapsible-accordion">
      <li class="bold waves-effect active">
       <a class="collapsible-header"
        >Reserver Les Biens<i class="material-icons chevron">chevron_left</i></a
       >
       <div class="collapsible-body">
        <ul>
         <li>
          <a href="/projet/listUser" class="waves-effect active"
           >les Nouveaux Bien<i class="material-icons">web</i></a
          >
         </li>
         <li>
          <a href="http://localhost:8080/projet/professeurbien-list.jsp" class="waves-effect"
           >tous les biens mobilier<i class="material-icons">list</i></a
          >
         </li>
        
         
        </ul>
       </div>
      </li>
     
      <li class="bold waves-effect">
       <a class="collapsible-header"
        >Contact<i class="material-icons chevron">chevron_left</i></a>
    
 
     

   <div id="dropdown1" class="dropdown-content notifications">
    <div class="notifications-title">notifications</div>
    <div class="card">
     <div class="card-content">
      <span class="card-title">Joe Smith made a purchase</span>
      <p>Content</p>
     </div>
     <div class="card-action">
      <a href="#!">view</a><a href="#!">dismiss</a>
     </div>
    </div>
    <div class="card">
     <div class="card-content">
      <span class="card-title">Daily Traffic Update</span>
      <p>Content</p>
     </div>
     <div class="card-action">
      <a href="#!">view</a><a href="#!">dismiss</a>
     </div>
    </div>
    <div class="card">
     <div class="card-content">
      <span class="card-title">New User Joined</span>
      <p>Content</p>
     </div>
     <div class="card-action">
      <a href="#!">view</a><a href="#!">dismiss</a>
     </div>
    </div>
   </div>
   <div id="chat-dropdown" class="dropdown-content dropdown-tabbed">
    <ul class="tabs tabs-fixed-width">
     <li class="tab col s3"><a href="#settings">Settings</a></li>
     <li class="tab col s3"><a href="#friends" class="active">Friends</a></li>
    </ul>
    <div id="settings" class="col s12">
     <div class="settings-group">
      <div class="setting">
       Night Mode
       <div class="switch right">
        <label> <input type="checkbox" /><span class="lever"></span> </label>
       </div>
      </div>
      <div class="setting">
       Beta Testing
       <label class="right"> <input type="checkbox" /><span></span> </label>
      </div>
     </div>
    </div>
    <div id="friends" class="col s12">
     <ul class="collection flush">
      <li class="collection-item avatar">
       <div class="badged-circle online">
        <img
         src="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/portrait1.jpg?v=1218798423999129079"
         alt="avatar"
         class="circle"
        />
       </div>
       <span class="title">Jane Doe</span>
       <p class="truncate">Lo-fi you probably haven't heard of them</p>
      </li>
      <li class="collection-item avatar">
       <div class="badged-circle">
        <img
         src="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/portrait2.jpg?v=15342908036415923195"
         alt="avatar"
         class="circle"
        />
       </div>
       <span class="title">John Chang</span>
       <p class="truncate">
        etsy leggings raclette kickstarter four dollar toast
       </p>
      </li>
      <li class="collection-item avatar">
       <div class="badged-circle">
        <img
         src="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/portrait3.jpg?v=4679613373594475586"
         alt="avatar"
         class="circle"
        />
       </div>
       <span class="title">Lisa Simpson</span>
       <p class="truncate">
        Raw denim fingerstache food truck chia health goth synth
       </p>
      </li>
     </ul>
    </div>
   </div>
  </header>
  
        <!-- <tfoot>
            <tr>
              <th>Name</th>
              <th>Position</th>
              <th>Office</th>
              <th>Age</th>
              <th>Start date</th>
              <th>Salary</th>
            </tr>
          </tfoot> -->
       <img
       class="materialize-logo"
       src="https://i.ytimg.com/vi/9MDrpu1NnAI/maxresdefault.jpg"
       alt="Materialize"
      />
  <footer class="page-footer">
   <div class="container">
    <div class="row">
     <div class="col s6 m3">
      <img
       class="materialize-logo"
       src="data:image/jpeg;base64,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"
       alt="Materialize"
       height="250" width="250"
      />
      <p>Made with love by Materialize.</p>
     </div>
     <div class="col s6 m3">
      <img alt="" src="https://www.stevenson.edu/sebin/v/r/biomed-2.jpg"height="250" width="250">
     
     </div>
     <div class="col s6 m3">
      <img alt="" src="https://studieren.univie.ac.at/fileadmin/_processed_/csm_05_informatik_02_BA_MA_05-2017_329c295bea.jpg" height="250" width="250">
     </div>
     <div class="col s6 m3">
      <img alt="" src="https://www.aachener-zeitung.de/imgs/48/3/0/6/6/2/6/8/7/tok_b7a5b18e1903e8f89a2222b884710462/w1500_h998_x750_y499_235966f73c61d0eb.jpg" height="250" width="250">
     </div>
    </div>
   </div>
  </footer>
  <!-- Scripts -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.2/moment.min.js"></script>

  <!-- External libraries -->

  <!-- jqvmap -->
  <script
   type="text/javascript"
   src="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/jquery.vmap.min.js?v=16312383892908448454"
  ></script>
  <script
   type="text/javascript"
   src="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/jquery.vmap.world.js?v=7251365059269487148"
   charset="utf-8"
  ></script>
  <script
   type="text/javascript"
   src="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/jquery.vmap.sampledata.js?v=8702362987075556685"
  ></script>

  <!-- ChartJS -->
  <script
   type="text/javascript"
   src="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/Chart.js?v=2884891905158527706"
  ></script>
  <script
   type="text/javascript"
   src="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/Chart.Financial.js?v=3464499164675255295"
  ></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.7.0/fullcalendar.min.js"></script>
  <script
   type="text/javascript"
   src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"
  ></script>
  <script src="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/imagesloaded.pkgd.min.js?v=5881977179676351054"></script>
  <script src="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/masonry.pkgd.min.js?v=18031290468259756901"></script>

  <!-- Initialization script -->
  <script src="//cdn.shopify.com/s/files/1/1775/8583/t/1/assets/dashboard.min.js?v=481680883062710906"></script>
 </body>
</html>
