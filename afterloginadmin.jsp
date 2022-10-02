<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">
 <head>
 <sql:setDataSource
        var="myDS"
        driver="com.mysql.cj.jdbc.Driver"
        url= "jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
        user="root" password="Khalil123@@"
 
    />
    <sql:query var="listBs" dataSource="${myDS}">
     SELECT * FROM projet.bonsortie ;         
    </sql:query>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="msapplication-tap-highlight" content="no" />
  <meta name="description" content="" />
  <title>Bien mobilier-Admin</title>
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
      <a href="#!" class="brand-logo grey-text text-darken-4">Home</a>
      <ul id="nav-mobile" class="right">
       <li class="hide-on-med-and-down">
        <a href="/projet/logout"><img alt="" src="https://img.icons8.com/external-sbts2018-blue-sbts2018/2x/external-logout-social-media-basic-1-sbts2018-blue-sbts2018.png" height="30px" width="40px"></a>
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
      >admin<i class="material-icons left">spa</i></a
     >
    </li>
    <li class="no-padding">
     <ul class="collapsible collapsible-accordion">
      <li class="bold waves-effect active">
       <a class="collapsible-header"
        >users<i class="material-icons chevron">chevron_left</i></a
       >
       <div class="collapsible-body">
        <ul>
         <li>
          <a href="/projet/listUser" class="waves-effect active"
           >list users<i class="material-icons">web</i></a
          >
         </li>
         <li>
          <a href="/projet/register" class="waves-effect"
           >add users<i class="material-icons">list</i></a
          >
         </li>
        
         
        </ul>
       </div>
      </li>
      <li class="bold waves-effect">
       <a class="collapsible-header"
        >bons<i class="material-icons chevron">chevron_left</i></a
       >
       <div class="collapsible-body">
        <ul>
         <li>
          <a href="http://localhost:8080/projet/registerBonde" class="waves-effect"
           >bon d entree<i class="material-icons">show_chart</i></a
          >
         </li>
         <li>
          <a href="http://localhost:8080/projet/listBE" class="waves-effect"
           >lister les bon d entree<i class="material-icons">show_chart</i></a
          >
         </li>
          <li>
          <a href="http://localhost:8080/projet/adminlistBien" class="waves-effect"
           >lister les biens mobiliers<i class="material-icons">multiline_chart</i></a
          >
         </li>
          <li>
          <a href="http://localhost:8080/projet/bienMobilier" class="waves-effect"
           >add les biens mobiliers<i class="material-icons">show_chart</i></a
          >
         </li>
         <li>
          <a href="http://localhost:8080/projet/addBonds.jsp" class="waves-effect"
           >Bon sortie<i class="material-icons">equalizer</i></a
          >
         </li>
         <li>
          <a href="http://localhost:8080/projet/adminInventaire.jsp" class="waves-effect"
           >Inventaire contrôle<i class="material-icons">multiline_chart</i></a
          >
         </li>
        
           <li>
          <a href="http://localhost:8080/projet/adminIventairPhysique.jsp" class="waves-effect"
           >Inventaire physique<i class="material-icons">equalizer</i></a
          >
         </li>
         
        </ul>
       </div>
      </li>
      <li class="bold waves-effect">
       <a class="collapsible-header"
        >famille<i class="material-icons chevron">chevron_left</i></a
       >
       <div class="collapsible-body">
        <ul>
         <li>
          <a href="/projet/register1" class="waves-effect"
           >ajouter famille<i class="material-icons">show_chart</i></a
          >
         </li>
         <li>
          <a href="/projet/listFam" class="waves-effect"
           >voir famille<i class="material-icons">settings</i></a
          >
         </li>
        </ul>
       </div>
      </li>
      <li class="bold waves-effect">
       <a class="collapsible-header"
        >Calendar<i class="material-icons chevron">chevron_left</i></a
       >
       <div class="collapsible-body">
        <ul>
         <li>
          <a href="/pages/admin-calendar" class="waves-effect"
           >Calendar<i class="material-icons">cloud</i></a
          >
         </li>
        </ul>
       </div>
      </li>
      <li class="bold waves-effect">
       <a class="collapsible-header"
        >Headers<i class="material-icons chevron">chevron_left</i></a
       >
       <div class="collapsible-body">
        <ul>
         <li>
          <a href="/pages/admin-header-tabbed" class="waves-effect"
           >Tabbed<i class="material-icons">tab</i></a
          >
         </li>
         <li>
          <a href="/pages/admin-header-metrics" class="waves-effect"
           >Metrics<i class="material-icons">web</i></a
          >
         </li>
         <li>
          <a href="/pages/admin-header-search" class="waves-effect"
           >Search<i class="material-icons">search</i></a
          >
         </li>
        </ul>
       </div>
      </li>
      <li class="bold waves-effect">
       <a class="collapsible-header"
        >Account<i class="material-icons chevron">chevron_left</i></a
       >
       <div class="collapsible-body">
        <ul>
         <li>
          <a href="/pages/admin-log-in" class="waves-effect"
           >Log In<i class="material-icons">person</i></a
          >
         </li>
         <li>
          <a href="/pages/admin-settings" class="waves-effect"
           >Settings<i class="material-icons">settings</i></a
          >
         </li>
        </ul>
       </div>
      </li>
     </ul>
    </li>
   </ul>

   <div id="dropdown1" class="dropdown-content notifications">
    <div class="notifications-title">reservation demander</div> 
    <c:forEach var="user" items="${listBs.rows}" varStatus="loop">
    <div class="card">
     <div class="card-content">
      <span class="card-title"><c:out value="${user.nomDemandeur}"/></span>
      <p>qteDem :<c:out value="${user.qteServie}  pour le:${user.dateBS}"/></p>
     </div>
     <div class="card-action">
      <a href="adminAccepterReservation?refBien=<c:out value='${user.refBien}' />">accepter</a>
     </div>
    </div>
   </c:forEach>
   
   <div id="chat-dropdown" class="dropdown-content dropdown-tabbed">
    <ul class="tabs tabs-fixed-width">
     <li class="tab col s3"><a href="#friends" class="active">BOITE DE MESSAGERIE</a></li>
    </ul>
    <div id="settings" class="col s12">
     <div class="settings-group">
      
      
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
       src="https://ouch-cdn2.icons8.com/2afKvxhzDlpjwSrkcuJPBvlzK1edGeTcYqfI8rvW3Qw/rs:fit:256:256/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNzY5/LzY1ZTQxZmZjLTg1/YWQtNDYyMi1hYzU0/LWQ3NDEzZmY2NGI1/YS5wbmc.png"
       alt="Materialize"
      />
      <p>Made with love by Materialize.</p>
     </div>
     <div class="col s6 m3">
      <img alt="" src="">
     
     </div>
     <div class="col s6 m3">
      <h5>Connect</h5>
      <ul>
       <li><a href="#!">Community</a></li>
       <li><a href="#!">Subscribe</a></li>
       <li><a href="#!">Email</a></li>
      </ul>
     </div>
     <div class="col s6 m3">
      <h5>Contact</h5>
      <ul>
       <li><a href="#!">Twitter</a></li>
       <li><a href="#!">Facebook</a></li>
       <li><a href="#!">Github</a></li>
      </ul>
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
