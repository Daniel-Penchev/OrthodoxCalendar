
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Linux Installation Guide | Flutter</title>
    <link rel="icon" href="/assets/images/shared/brand/flutter/icon/64.png">
    <link rel="apple-touch-icon" href="/assets/images/shared/brand/flutter/logo/flutter-logomark-320px.png">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="theme-color" content="#ffffff">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <meta name="google-site-verification" content="HFqxhSbf9YA_0rBglNLzDiWnrHiK_w4cqDh2YD2GEY4">
      <script>
        (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-ND4LWWZ');
      </script>
      <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-67589403-1', 'auto');
        ga('send', 'pageview');
      </script>
    

    <meta name="description" content="Learn how to install Flutter on Linux.">
    <meta name="keywords" content="">

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@flutterdev">

    <meta property="og:title" content="Linux Installation Guide">
    <meta property="og:url" content="https://docs.flutter.dev/get-started/install/linux">
    <meta property="og:description" content="Learn how to install Flutter on Linux.">
    <meta property="og:image" content="https://docs.flutter.dev/assets/images/flutter-logo-sharing.png">

    <link href="https://fonts.googleapis.com/css2?family=Google+Sans:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Google+Sans+Text:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Google+Sans+Mono:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" rel="stylesheet" />
    <script>
      window.__CALLBACKS = [];
    </script>

    <link rel="stylesheet" href="/assets/css/main.css?v=1708630917">
    </head>
  <body>

    <section id="cookie-notice">
  <div class="container">
    <p>Google uses cookies to deliver its services, to personalize ads, and to 
      analyze traffic. You can adjust your privacy controls anytime in your 
      <a href="https://myaccount.google.com/data-and-personalization" target="_blank" rel="noopener">Google settings</a>. 
      <a href="https://policies.google.com/technologies/cookies" target="_blank" rel="noopener">Learn more</a>.
    </p>
    <button id="cookie-consent" class="btn btn-primary">Okay</button>
  </div>
</section>


    
      <noscript>
        <iframe
          src="https://www.googletagmanager.com/ns.html?id=GTM-ND4LWWZ"
          height="0" width="0" style="display:none;visibility:hidden">
        </iframe>
      </noscript>
    

    <div id="overlay-under-drawer"></div>

    

<header class="site-header">
  <nav class="navbar navbar-expand-md justify-content-start justify-content-md-between">
    <button
      class="navbar-toggler"
      type="button"
      data-toggle="collapse"
      data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation">
      <i class="material-symbols">menu</i>
    </button>

    <a class="navbar-brand" href="https://docs.flutter.dev">
      <img
        src='/assets/images/shared/brand/flutter/logo+text/horizontal/default.svg'
        alt='Flutter logo'
        height="37"
        width="129"
        class="align-middle">
    </a>

    <div
      id="navbarSupportedContent"
      class="collapse navbar-collapse flex-grow-0">
      <div
        class="site-header__sheet-bg"
        data-toggle="collapse"
        data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation">
      </div>
      <div class="site-header__sheet">
        <ul class="navbar-nav">
          <div class="site-sidebar site-sidebar--header d-md-none">
            <ul class="nav flex-column"><li class="nav-item">
          <a class="nav-link active collapsable" data-toggle="collapse" href="#header-sidenav-1" role="button"
             aria-expanded="true" aria-controls="header-sidenav-1"
          >Get started</a>
      
          <ul class="nav flex-column flex-nowrap collapse show" id="header-sidenav-1">
            <li class="nav-item">
    <a class="nav-link active" href="/get-started/install">Install Flutter</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/test-drive">Test drive</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/codelab">Write your first app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/learn-more">Learn more</a>
  </li>

<div class="dropdown-divider"></div>
<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-1-6"
      href="#header-sidenav-1-6" role="button"
      aria-expanded="false" aria-controls="header-sidenav-1-6"
    >From another platform?
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-1-6">
      <li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/android-devs">Flutter for Android devs</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/swiftui-devs">Flutter for SwiftUI devs</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/uikit-devs">Flutter for UIKit devs</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/react-native-devs">Flutter for React Native devs</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/web-devs">Flutter for web devs</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/xamarin-forms-devs">Flutter for Xamarin.Forms devs</a>
  </li>

<div class="dropdown-divider"></div><li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/declarative">Introduction to declarative UI</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/dart-swift-concurrency">Flutter versus Swift concurrency</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link" href="https://dart.dev/overview" target="_blank" rel="noopener">Dart language overview</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-2" role="button"
             aria-expanded="false" aria-controls="header-sidenav-2"
          >Stay up to date</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-2">
            <li class="nav-item">
    <a class="nav-link" href="/release/upgrade">Upgrade</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/release/archive">SDK archive</a>
  </li>

<div class="dropdown-divider"></div>
<li class="nav-item">
    <a class="nav-link" href="/release/whats-new">What's new</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/release/release-notes">Release notes</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/release/breaking-changes">Breaking changes</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/release/compatibility-policy">Compatibility policy</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-3" role="button"
             aria-expanded="false" aria-controls="header-sidenav-3"
          >Codelabs & samples</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-3">
            <li class="nav-item">
    <a class="nav-link" href="/codelabs">Codelabs</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook">Cookbook</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://flutter.github.io/samples/" target="_blank" rel="noopener">Samples and demos</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-4" role="button"
             aria-expanded="false" aria-controls="header-sidenav-4"
          >App solutions</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-4">
            <li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-4-1"
      href="#header-sidenav-4-1" role="button"
      aria-expanded="false" aria-controls="header-sidenav-4-1"
    >Games
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-4-1">
      <li class="nav-item">
    <a class="nav-link" href="/resources/games-toolkit">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/games/achievements-leaderboard">Add achievements and leaderboards</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/plugins/google-mobile-ads">Add advertising</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/games/firestore-multiplayer">Add multiplayer support</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://codelabs.developers.google.com/codelabs/flutter-in-app-purchases#0" target="_blank" rel="noopener">Add in-app purchases</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://firebase.google.com/codelabs/firebase-auth-in-flutter-apps#0" target="_blank" rel="noopener">Add user authentication</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://firebase.google.com/docs/crashlytics/get-started?platform=flutter" target="_blank" rel="noopener">Debug using Crashlytics</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-4-2"
      href="#header-sidenav-4-2" role="button"
      aria-expanded="false" aria-controls="header-sidenav-4-2"
    >News
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-4-2">
      <li class="nav-item">
    <a class="nav-link" href="/resources/news-toolkit">Build a news app</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-4-3"
      href="#header-sidenav-4-3" role="button"
      aria-expanded="false" aria-controls="header-sidenav-4-3"
    >Monetization
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-4-3">
      <li class="nav-item">
    <a class="nav-link" href="https://flutter.dev/monetization" target="_blank" rel="noopener">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://codelabs.developers.google.com/codelabs/flutter-in-app-purchases#0" target="_blank" rel="noopener">Add in-app purchases</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-4-4"
      href="#header-sidenav-4-4" role="button"
      aria-expanded="false" aria-controls="header-sidenav-4-4"
    >Maps
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-4-4">
      <li class="nav-item">
    <a class="nav-link" href="https://developers.google.com/maps/flutter-package" target="_blank" rel="noopener">Add maps to your app</a>
  </li>

</ul>
  </li>
</ul>
        </li><li aria-hidden="true"><div class="sidebar-primary-divider"></div></li>
    <li class="nav-header">User interface</li>
    <li class="nav-item">
          <a class=" nav-link" href="/ui">Introduction</a>
        </li>
      <li class="nav-item">
          <a class=" nav-link" href="/ui/widgets">Widget catalog</a>
        </li>
      <li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-9" role="button"
             aria-expanded="false" aria-controls="header-sidenav-9"
          >Layout</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-9">
            <li class="nav-item">
    <a class="nav-link" href="/ui/layout">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/layout/tutorial">Build a layout</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-9-3"
      href="/ui/layout/lists" role="button"
      aria-expanded="false" aria-controls="header-sidenav-9-3"
    >Lists & grids
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-9-3">
      <li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/basic-list">Create and use lists</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/horizontal-list">Create a horizontal list</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/grid-lists">Create a grid view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/mixed-list">Create lists with different types of items</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/spaced-items">Create lists with spaced items</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/long-lists">Work with long lists</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-9-4"
      href="/ui/layout/scrolling" role="button"
      aria-expanded="false" aria-controls="header-sidenav-9-4"
    >Scrolling
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-9-4">
      <li class="nav-item">
    <a class="nav-link" href="/ui/layout/scrolling">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/layout/scrolling/slivers">Use slivers to achieve fancy scrolling</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/floating-app-bar">Place a floating app bar above a list</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/effects/parallax-scrolling">Create a scrolling parallax effect</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-9-5"
      href="/ui/layout/responsive" role="button"
      aria-expanded="false" aria-controls="header-sidenav-9-5"
    >Adaptive design
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-9-5">
      <li class="nav-item">
    <a class="nav-link" href="/ui/layout/responsive/adaptive-responsive">Adaptive and responsive app design</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/layout/responsive/building-adaptive-apps">Build an adaptive app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/design/orientation">Update app UI based on orientation</a>
  </li>

</ul>
  </li>
</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-10" role="button"
             aria-expanded="false" aria-controls="header-sidenav-10"
          >Design & theming</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-10">
            <li class="nav-item">
    <a class="nav-link" href="/cookbook/design/themes">Share styles with themes</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/design/material">Material design</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/release/breaking-changes/material-3-migration">Migrate to Material 3</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-10-4"
      href="/ui/design/text" role="button"
      aria-expanded="false" aria-controls="header-sidenav-10-4"
    >Text
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-10-4">
      <li class="nav-item">
    <a class="nav-link" href="/ui/design/text/typography">Fonts & typography</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/design/fonts">Use a custom font</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/design/package-fonts">Export fonts from a package</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://pub.dev/packages/google_fonts" target="_blank" rel="noopener">Google Fonts package</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-10-5"
      href="/ui/design/graphics" role="button"
      aria-expanded="false" aria-controls="header-sidenav-10-5"
    >Custom graphics
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-10-5">
      <li class="nav-item">
    <a class="nav-link" href="/ui/design/graphics/fragment-shaders">Use custom fragment shaders</a>
  </li>

</ul>
  </li>
</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-11" role="button"
             aria-expanded="false" aria-controls="header-sidenav-11"
          >Interactivity</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-11">
            <li class="nav-item">
    <a class="nav-link" href="/ui/interactivity">Add interactivity to your app</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-11-2"
      href="/ui/interactivity/gestures" role="button"
      aria-expanded="false" aria-controls="header-sidenav-11-2"
    >Gestures
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-11-2">
      <li class="nav-item">
    <a class="nav-link" href="/ui/interactivity/gestures">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/gestures/handling-taps">Handle taps</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/interactivity/gestures/drag-outside">Drag an object outside an app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/effects/drag-a-widget">Drag a UI element within an app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/gestures/ripples">Add Material touch ripples</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/gestures/dismissible">Implement swipe to dismiss</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-11-3"
      href="/ui/interactivity/input" role="button"
      aria-expanded="false" aria-controls="header-sidenav-11-3"
    >Input & forms
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-11-3">
      <li class="nav-item">
    <a class="nav-link" href="/cookbook/forms/text-input">Create and style a text field</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/forms/retrieve-input">Retrieve the value of a text field</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/forms/text-field-changes">Handle changes to a text field</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/forms/focus">Manage focus in text fields</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/forms/validation">Build a form with validation</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link" href="/cookbook/design/snackbars">Display a snackbar</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/interactivity/actions-and-shortcuts">Implement actions & shortcuts</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/interactivity/focus">Manage keyboard focus</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-12" role="button"
             aria-expanded="false" aria-controls="header-sidenav-12"
          >Assets & media</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-12">
            <li class="nav-item">
    <a class="nav-link" href="/ui/assets/assets-and-images">Add assets and images</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/images/network-image">Display images from the internet</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/images/fading-in-images">Fade in images with a placeholder</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/plugins/play-video">Play and pause a video</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-13" role="button"
             aria-expanded="false" aria-controls="header-sidenav-13"
          >Navigation & routing</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-13">
            <li class="nav-item">
    <a class="nav-link" href="/ui/navigation">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/design/tabs">Add tabs to your app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/navigation/navigation-basics">Navigate to a new screen and back</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/navigation/passing-data">Send data to a new screen</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/navigation/returning-data">Return data from a screen</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/design/drawer">Add a drawer to a screen</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/navigation/deep-linking">Setup deep linking</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/navigation/set-up-app-links">Setup app links for Android</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/navigation/set-up-universal-links">Setup universal links for iOS</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/navigation/url-strategies">Configure web URL strategies</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-14" role="button"
             aria-expanded="false" aria-controls="header-sidenav-14"
          >Animations & transitions</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-14">
            <li class="nav-item">
    <a class="nav-link" href="/ui/animations">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/animations/tutorial">Tutorial</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/animations/implicit-animations">Implicit animations</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/animation/animated-container">Animate the properties of a container</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/animation/opacity-animation">Fade a widget in and out</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/animations/hero-animations">Hero animations</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/animation/page-route-animation">Animate a page route transition</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/animation/physics-simulation">Animate using a physic simulation</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/animations/staggered-animations">Staggered animations</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/effects/staggered-menu-animation">Create a staggered menu animation</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/animations/overview">API overview</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-15" role="button"
             aria-expanded="false" aria-controls="header-sidenav-15"
          >Accessibility & internationalization</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-15">
            <li class="nav-item">
    <a class="nav-link" href="/ui/accessibility-and-internationalization/accessibility">Accessibility</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/accessibility-and-internationalization/internationalization">Internationalization</a>
  </li>


</ul>
        </li><li aria-hidden="true"><div class="sidebar-primary-divider"></div></li>
    <li class="nav-header">Beyond UI</li>
    <li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-18" role="button"
             aria-expanded="false" aria-controls="header-sidenav-18"
          >Data & backend</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-18">
            <li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-18-1"
      href="/data-and-backend/state-mgmt" role="button"
      aria-expanded="false" aria-controls="header-sidenav-18-1"
    >State management
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-18-1">
      <li class="nav-item">
    <a class="nav-link" href="/data-and-backend/state-mgmt/intro">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/data-and-backend/state-mgmt/declarative">Think declaratively</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/data-and-backend/state-mgmt/ephemeral-vs-app">Ephemeral vs app state</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/data-and-backend/state-mgmt/simple">Simple app state management</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/data-and-backend/state-mgmt/options">Options</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-18-2"
      href="/data-and-backend/networking" role="button"
      aria-expanded="false" aria-controls="header-sidenav-18-2"
    >Networking & http
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-18-2">
      <li class="nav-item">
    <a class="nav-link" href="/data-and-backend/networking">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/fetch-data">Fetch data from the internet</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/authenticated-requests">Make authenticated requests</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/send-data">Send data to the internet</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/update-data">Update data over the internet</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/delete-data">Delete data on the internet</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/web-sockets">Communicate with WebSockets</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-18-3"
      href="/data-and-backend/serialization" role="button"
      aria-expanded="false" aria-controls="header-sidenav-18-3"
    >Serialization
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-18-3">
      <li class="nav-item">
    <a class="nav-link" href="/data-and-backend/serialization/json">JSON serialization</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/background-parsing">Parse JSON in the background</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-18-4"
      href="/data-and-backend/persistence" role="button"
      aria-expanded="false" aria-controls="header-sidenav-18-4"
    >Persistence
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-18-4">
      <li class="nav-item">
    <a class="nav-link" href="/cookbook/persistence/key-value">Store key-value data on disk</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/persistence/reading-writing-files">Read and write files</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/persistence/sqlite">Persist data with SQLite</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link" href="/data-and-backend/firebase">Firebase</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/data-and-backend/google-apis">Google APIs</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-19" role="button"
             aria-expanded="false" aria-controls="header-sidenav-19"
          >Platform integration</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-19">
            <li class="nav-item">
    <a class="nav-link" href="/reference/supported-platforms">Supported platforms</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/desktop">Build desktop apps with Flutter</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/platform-channels">Write platform-specific code</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/platform-adaptations">Automatic platform adaptations</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-19-5"
      href="/platform-integration/android" role="button"
      aria-expanded="false" aria-controls="header-sidenav-19-5"
    >Android
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-19-5">
      <li class="nav-item">
    <a class="nav-link" href="/platform-integration/android/splash-screen">Add a splash screen</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/android/c-interop">Bind to native code</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/android/platform-views">Host a native Android view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/android/restore-state-android">Restore state on Android</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/android/chromeos">Target ChromeOS with Android</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-19-6"
      href="/platform-integration/ios" role="button"
      aria-expanded="false" aria-controls="header-sidenav-19-6"
    >iOS
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-19-6">
      <li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/apple-frameworks">Leverage Apple's system libraries</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/launch-screen">Add a launch screen</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/ios-app-clip">Add iOS App Clip support</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/app-extensions">Add iOS app extensions</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/c-interop">Bind to native code</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/platform-views">Host a native iOS view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/ios-debugging">Enable debugging on iOS</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/restore-state-ios">Restore state on iOS</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-19-7"
      href="/platform-integration/linux" role="button"
      aria-expanded="false" aria-controls="header-sidenav-19-7"
    >Linux
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-19-7">
      <li class="nav-item">
    <a class="nav-link" href="/platform-integration/linux/building">Build a Linux app</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-19-8"
      href="/platform-integration/macos" role="button"
      aria-expanded="false" aria-controls="header-sidenav-19-8"
    >macOS
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-19-8">
      <li class="nav-item">
    <a class="nav-link" href="/platform-integration/macos/building">Build a macOS app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/macos/c-interop">C interop</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-19-9"
      href="/platform-integration/web" role="button"
      aria-expanded="false" aria-controls="header-sidenav-19-9"
    >Web
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-19-9">
      <li class="nav-item">
    <a class="nav-link" href="/platform-integration/web/building">Build a web app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/web/faq">Web FAQ</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/web/renderers">Web renderers</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/web/initialization">Custom app initialization</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/web/web-images">Displaying images on the web</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-19-10"
      href="/platform-integration/windows" role="button"
      aria-expanded="false" aria-controls="header-sidenav-19-10"
    >Windows
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-19-10">
      <li class="nav-item">
    <a class="nav-link" href="/platform-integration/windows/building">Build a Windows app</a>
  </li>

</ul>
  </li>
</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-20" role="button"
             aria-expanded="false" aria-controls="header-sidenav-20"
          >Packages & plugins</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-20">
            <li class="nav-item">
    <a class="nav-link" href="/packages-and-plugins/using-packages">Use packages & plugins</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/packages-and-plugins/developing-packages">Develop packages & plugins</a>
  </li>

<div class="dropdown-divider"></div>
<li class="nav-item">
    <a class="nav-link" href="/packages-and-plugins/favorites">Flutter Favorites</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://pub.dev/flutter" target="_blank" rel="noopener">Package repository</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-21" role="button"
             aria-expanded="false" aria-controls="header-sidenav-21"
          >Testing & debugging</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-21">
            <li class="nav-header">Testing</li><li class="nav-item">
    <a class="nav-link" href="/testing/overview">Testing overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-21-3"
      href="#header-sidenav-21-3" role="button"
      aria-expanded="false" aria-controls="header-sidenav-21-3"
    >Unit testing
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-21-3">
      <li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/unit/introduction">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/unit/mocking">Mock dependencies</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-21-4"
      href="#header-sidenav-21-4" role="button"
      aria-expanded="false" aria-controls="header-sidenav-21-4"
    >Widget testing
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-21-4">
      <li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/widget/introduction">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/widget/finders">Find widgets</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/widget/scrolling">Simulate scrolling</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/widget/tap-drag">Simulate user interaction</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-21-5"
      href="#header-sidenav-21-5" role="button"
      aria-expanded="false" aria-controls="header-sidenav-21-5"
    >Integration testing
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-21-5">
      <li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/integration/introduction">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/integration-tests">Write and run an integration test</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/integration/profiling">Profile an integration test</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link" href="/testing/testing-plugins">Test a plugin</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/plugins-in-tests">Handle plugin code in tests</a>
  </li>

<li class="nav-header">Debugging</li><li class="nav-item">
    <a class="nav-link" href="/testing/debugging">Debugging tools</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/code-debugging">Debug your app programmatically</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/native-debugging">Use a native language debugger</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/build-modes">Flutter's build modes</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/common-errors">Common Flutter errors</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/errors">Handle errors</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/maintenance/error-reporting">Report errors to a service</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-22" role="button"
             aria-expanded="false" aria-controls="header-sidenav-22"
          >Performance & optimization</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-22">
            <li class="nav-item">
    <a class="nav-link" href="/perf">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/impeller">Impeller</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/best-practices">Performance best practices</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/app-size">App size</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/deferred-components">Deferred components</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/rendering-performance">Rendering performance</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/ui-performance">Performance profiling</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/web-performance">Performance profiling for web</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/shader">Shader compilation jank</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/metrics">Performance metrics</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/isolates">Concurrency and isolates</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/faq">Performance FAQ</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/appendix">Appendix</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-23" role="button"
             aria-expanded="false" aria-controls="header-sidenav-23"
          >Deployment</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-23">
            <li class="nav-item">
    <a class="nav-link" href="/deployment/obfuscate">Obfuscate Dart code</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/flavors">Create flavors of an app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/android">Build and release an Android app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/ios">Build and release an iOS app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/macos">Build and release a macOS app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/linux">Build and release a Linux app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/windows">Build and release a Windows app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/web">Build and release a web app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/cd">Set up continuous deployment</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-24" role="button"
             aria-expanded="false" aria-controls="header-sidenav-24"
          >Add to an existing app</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-24">
            <li class="nav-item">
    <a class="nav-link" href="/add-to-app">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-24-2"
      href="/add-to-app/android" role="button"
      aria-expanded="false" aria-controls="header-sidenav-24-2"
    >Add to an Android app
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-24-2">
      <li class="nav-item">
    <a class="nav-link" href="/add-to-app/android/project-setup">Set up Android project</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/android/add-flutter-screen">Add a single Flutter screen</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/android/add-flutter-fragment">Add a Flutter Fragment</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/android/add-flutter-view">Add a Flutter View</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/android/plugin-setup">Use a Flutter plugin</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-24-3"
      href="/add-to-app/ios" role="button"
      aria-expanded="false" aria-controls="header-sidenav-24-3"
    >Add to an iOS app
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-24-3">
      <li class="nav-item">
    <a class="nav-link" href="/add-to-app/ios/project-setup">Set up iOS project</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/ios/add-flutter-screen">Add a single Flutter screen</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link" href="/add-to-app/debugging">Debug embedded Flutter module</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/multiple-flutters">Add multiple Flutter instances</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/performance">Loading sequence and performance</a>
  </li>


</ul>
        </li><li aria-hidden="true"><div class="sidebar-primary-divider"></div></li>
    <li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-26" role="button"
             aria-expanded="false" aria-controls="header-sidenav-26"
          >Tools & editors</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-26">
            <li class="nav-item">
    <a class="nav-link" href="/tools/android-studio">Android Studio & IntelliJ</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/vs-code">Visual Studio Code</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#header-sidenav-26-3"
      href="/tools/devtools" role="button"
      aria-expanded="false" aria-controls="header-sidenav-26-3"
    >DevTools
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-26-3">
      <li class="nav-item">
    <a class="nav-link" href="/tools/devtools/overview">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/android-studio">Install from Android Studio & IntelliJ</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/vscode">Install from VS Code</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/cli">Install from command line</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/inspector">Flutter inspector</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/performance">Performance view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/cpu-profiler">CPU Profiler view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/memory">Memory view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/console">Debug console view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/network">Network view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/debugger">Debugger</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/logging">Logging view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/app-size">App size tool</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/extensions">DevTools extensions</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/release-notes">Release notes</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link" href="/tools/sdk">SDK overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/pubspec">Flutter's pubspec options</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/flutter-fix">Automated fixes</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/formatting">Code formatting</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-27" role="button"
             aria-expanded="false" aria-controls="header-sidenav-27"
          >Flutter concepts</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-27">
            <li class="nav-item">
    <a class="nav-link" href="/resources/architectural-overview">Architectural overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/resources/inside-flutter">Inside Flutter</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/layout/constraints">Understanding constraints</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/build-modes">Flutter's build modes</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/hot-reload">Hot reload</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#header-sidenav-28" role="button"
             aria-expanded="false" aria-controls="header-sidenav-28"
          >Resources</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="header-sidenav-28">
            <li class="nav-header">Learning</li><li class="nav-item">
    <a class="nav-link" href="/resources/faq">FAQ</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/resources/books">Books</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/resources/videos">Videos</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/resources/courses">Courses</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/resources/bootstrap-into-dart">Learn Dart</a>
  </li>

<li class="nav-header">Contributing</li><li class="nav-item">
    <a class="nav-link" href="/resources/bug-reports">Create useful bug reports</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://github.com/flutter/flutter/blob/main/CONTRIBUTING.md" target="_blank" rel="noopener">Contribute to Flutter</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/resources/design-docs">Design documents</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link  collapsable" data-toggle="collapse" href="#header-sidenav-29" role="button"
             aria-expanded="true" aria-controls="header-sidenav-29"
          >Reference</a>
      
          <ul class="nav flex-column flex-nowrap collapse show" id="header-sidenav-29">
            <li class="nav-item">
    <a class="nav-link" href="/dash">Who is Dash?</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/reference/widgets">Widget index</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://api.flutter.dev" target="_blank" rel="noopener">API reference</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/reference/flutter-cli">flutter CLI reference</a>
  </li>


</ul>
        </li></ul>

          </div>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="platform-navbar-dropdown"
               href="https://flutter.dev/multi-platform"
               role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
               Multi-Platform
            </a>
            <div class="dropdown-menu" aria-labelledby="platform-navbar-dropdown">
              <a class="dropdown-item" href="https://flutter.dev/multi-platform/mobile">Mobile</a>
              <a class="dropdown-item" href="https://flutter.dev/multi-platform/web">Web</a>
              <a class="dropdown-item" href="https://flutter.dev/multi-platform/desktop">Desktop</a>
              <a class="dropdown-item" href="https://flutter.dev/multi-platform/embedded">Embedded</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="dev-navbar-dropdown"
               href="https://flutter.dev/"
               role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
               Development
            </a>
            <div class="dropdown-menu" aria-labelledby="dev-navbar-dropdown">
              <a class="dropdown-item" href="https://flutter.dev/learn">Learn</a>
              <a class="dropdown-item" href="https://pub.dev/flutter/favorites" target="_blank">Flutter Favorites</a>
              <a class="dropdown-item" href="https://pub.dev/" target="_blank">Packages</a>
              <a class="dropdown-item" href="https://flutter.dev/monetization">Monetization</a>
              <a class="dropdown-item" href="https://flutter.dev/games">Games</a>
              <a class="dropdown-item" href="https://flutter.dev/news">News</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="ecosystem-navbar-dropdown"
               href="https://flutter.dev/ecosystem"
               role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
               Ecosystem
            </a>
            <div class="dropdown-menu" aria-labelledby="ecosystem-navbar-dropdown">
              <a class="dropdown-item" href="https://flutter.dev/community">Community</a>
              <a class="dropdown-item" href="https://flutter.dev/events">Events</a>
              <a class="dropdown-item" href="https://flutter.dev/culture">Culture</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://flutter.dev/showcase">Showcase</a>
          </li>
          <li class="nav-item dropdown docs-item">
            <a class="nav-link dropdown-toggle"
               id="docs-navbar-dropdown"
               href="/"
               role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
               Docs
            </a>
            <div class="dropdown-menu" aria-labelledby="docs-navbar-dropdown">
              <a class="dropdown-item "
                 href="/release/whats-new">What's new</a>
              <a class="dropdown-item "
                 href="/get-started/editor">Editor support</a>
              <a class="dropdown-item "
                 href="/tools/hot-reload">Hot reload</a>
              <a class="dropdown-item "
                 href="/perf/ui-performance">Profiling</a>
              <a class="dropdown-item  active"
                 href="/get-started/install">Install Flutter</a>
              <a class="dropdown-item "
                 href="/tools/devtools/overview">DevTools</a>
              <a class="dropdown-item "
                 href="/cookbook">Cookbook</a>
              <a class="dropdown-item "
                 href="/codelabs">Codelabs</a>
            </div>
          </li>
        </ul>
        <form action="/search/" class="site-header__search form-inline">
          <input
            class="site-header__searchfield form-control"
            type="search" name="q" id="q" autocomplete="off"
            placeholder="Search" aria-label="Search">
        </form>
      </div>
    </div>
    <div class="site-header__social navbar-nav flex-row">
      <a
        class="nav-item nav-link nav-icon"
        href="https://twitter.com/FlutterDev"
        aria-label="Open Flutter's Twitter in a new tab"
        target="_blank" rel="noreferrer">
        <svg><use href="/assets/images/social/twitter.svg#twitter"></use></svg>
      </a>
      <a
        class="nav-item nav-link nav-icon"
        href="https://www.youtube.com/@flutterdev"
        aria-label="Open Flutter's YouTube in a new tab"
        target="_blank" rel="noreferrer">
        <svg><use href="/assets/images/social/youtube.svg#youtube"></use></svg>
      </a>
      <a
        class="nav-item nav-link nav-icon"
        href="https://medium.com/flutter"
        aria-label="Open Flutter's Medium blog in a new tab"
        target="_blank" rel="noreferrer">
        <svg><use href="/assets/images/social/medium.svg#medium"></use></svg>
      </a>
      <a
        class="nav-item nav-link nav-icon"
        href="https://github.com/flutter"
        aria-label="Open Flutter's GitHub in a new tab"
        target="_blank" rel="noreferrer">
        <svg><use href="/assets/images/social/github.svg#github"></use></svg>
      </a>
    </div>
    <a
        class="site-header__cta btn btn-primary"
        href="/get-started/install/">Get started
      </a>
    </nav>
</header>


    <div class="site-banner site-banner--default" role="alert">
  Flutter and Dart’s latest releases are helping to
  define the future of app development.
  <a href="https://medium.com/flutter/starting-2024-strong-with-flutter-and-dart-cae9845264fe">Read the blog</a> to learn more.
</div>


    <div class="container-fluid position-relative">
  <div class="row flex-xl-nowrap">
    <div class="fixed-col site-sidebar site-sidebar--fixed col-12 col-md-3 col-xl-2 d-none d-md-block" data-fixed-column>
      
      <ul class="nav flex-column"><li class="nav-item">
          <a class="nav-link active collapsable" data-toggle="collapse" href="#fixed-sidenav-1" role="button"
             aria-expanded="true" aria-controls="fixed-sidenav-1"
          >Get started</a>
      
          <ul class="nav flex-column flex-nowrap collapse show" id="fixed-sidenav-1">
            <li class="nav-item">
    <a class="nav-link active" href="/get-started/install">Install Flutter</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/test-drive">Test drive</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/codelab">Write your first app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/learn-more">Learn more</a>
  </li>

<div class="dropdown-divider"></div>
<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-1-6"
      href="#fixed-sidenav-1-6" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-1-6"
    >From another platform?
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-1-6">
      <li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/android-devs">Flutter for Android devs</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/swiftui-devs">Flutter for SwiftUI devs</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/uikit-devs">Flutter for UIKit devs</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/react-native-devs">Flutter for React Native devs</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/web-devs">Flutter for web devs</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/xamarin-forms-devs">Flutter for Xamarin.Forms devs</a>
  </li>

<div class="dropdown-divider"></div><li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/declarative">Introduction to declarative UI</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/get-started/flutter-for/dart-swift-concurrency">Flutter versus Swift concurrency</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link" href="https://dart.dev/overview" target="_blank" rel="noopener">Dart language overview</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-2" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-2"
          >Stay up to date</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-2">
            <li class="nav-item">
    <a class="nav-link" href="/release/upgrade">Upgrade</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/release/archive">SDK archive</a>
  </li>

<div class="dropdown-divider"></div>
<li class="nav-item">
    <a class="nav-link" href="/release/whats-new">What's new</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/release/release-notes">Release notes</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/release/breaking-changes">Breaking changes</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/release/compatibility-policy">Compatibility policy</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-3" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-3"
          >Codelabs & samples</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-3">
            <li class="nav-item">
    <a class="nav-link" href="/codelabs">Codelabs</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook">Cookbook</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://flutter.github.io/samples/" target="_blank" rel="noopener">Samples and demos</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-4" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-4"
          >App solutions</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-4">
            <li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-4-1"
      href="#fixed-sidenav-4-1" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-4-1"
    >Games
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-4-1">
      <li class="nav-item">
    <a class="nav-link" href="/resources/games-toolkit">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/games/achievements-leaderboard">Add achievements and leaderboards</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/plugins/google-mobile-ads">Add advertising</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/games/firestore-multiplayer">Add multiplayer support</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://codelabs.developers.google.com/codelabs/flutter-in-app-purchases#0" target="_blank" rel="noopener">Add in-app purchases</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://firebase.google.com/codelabs/firebase-auth-in-flutter-apps#0" target="_blank" rel="noopener">Add user authentication</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://firebase.google.com/docs/crashlytics/get-started?platform=flutter" target="_blank" rel="noopener">Debug using Crashlytics</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-4-2"
      href="#fixed-sidenav-4-2" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-4-2"
    >News
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-4-2">
      <li class="nav-item">
    <a class="nav-link" href="/resources/news-toolkit">Build a news app</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-4-3"
      href="#fixed-sidenav-4-3" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-4-3"
    >Monetization
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-4-3">
      <li class="nav-item">
    <a class="nav-link" href="https://flutter.dev/monetization" target="_blank" rel="noopener">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://codelabs.developers.google.com/codelabs/flutter-in-app-purchases#0" target="_blank" rel="noopener">Add in-app purchases</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-4-4"
      href="#fixed-sidenav-4-4" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-4-4"
    >Maps
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-4-4">
      <li class="nav-item">
    <a class="nav-link" href="https://developers.google.com/maps/flutter-package" target="_blank" rel="noopener">Add maps to your app</a>
  </li>

</ul>
  </li>
</ul>
        </li><li aria-hidden="true"><div class="sidebar-primary-divider"></div></li>
    <li class="nav-header">User interface</li>
    <li class="nav-item">
          <a class=" nav-link" href="/ui">Introduction</a>
        </li>
      <li class="nav-item">
          <a class=" nav-link" href="/ui/widgets">Widget catalog</a>
        </li>
      <li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-9" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-9"
          >Layout</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-9">
            <li class="nav-item">
    <a class="nav-link" href="/ui/layout">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/layout/tutorial">Build a layout</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-9-3"
      href="/ui/layout/lists" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-9-3"
    >Lists & grids
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-9-3">
      <li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/basic-list">Create and use lists</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/horizontal-list">Create a horizontal list</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/grid-lists">Create a grid view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/mixed-list">Create lists with different types of items</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/spaced-items">Create lists with spaced items</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/long-lists">Work with long lists</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-9-4"
      href="/ui/layout/scrolling" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-9-4"
    >Scrolling
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-9-4">
      <li class="nav-item">
    <a class="nav-link" href="/ui/layout/scrolling">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/layout/scrolling/slivers">Use slivers to achieve fancy scrolling</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/lists/floating-app-bar">Place a floating app bar above a list</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/effects/parallax-scrolling">Create a scrolling parallax effect</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-9-5"
      href="/ui/layout/responsive" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-9-5"
    >Adaptive design
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-9-5">
      <li class="nav-item">
    <a class="nav-link" href="/ui/layout/responsive/adaptive-responsive">Adaptive and responsive app design</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/layout/responsive/building-adaptive-apps">Build an adaptive app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/design/orientation">Update app UI based on orientation</a>
  </li>

</ul>
  </li>
</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-10" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-10"
          >Design & theming</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-10">
            <li class="nav-item">
    <a class="nav-link" href="/cookbook/design/themes">Share styles with themes</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/design/material">Material design</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/release/breaking-changes/material-3-migration">Migrate to Material 3</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-10-4"
      href="/ui/design/text" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-10-4"
    >Text
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-10-4">
      <li class="nav-item">
    <a class="nav-link" href="/ui/design/text/typography">Fonts & typography</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/design/fonts">Use a custom font</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/design/package-fonts">Export fonts from a package</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://pub.dev/packages/google_fonts" target="_blank" rel="noopener">Google Fonts package</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-10-5"
      href="/ui/design/graphics" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-10-5"
    >Custom graphics
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-10-5">
      <li class="nav-item">
    <a class="nav-link" href="/ui/design/graphics/fragment-shaders">Use custom fragment shaders</a>
  </li>

</ul>
  </li>
</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-11" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-11"
          >Interactivity</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-11">
            <li class="nav-item">
    <a class="nav-link" href="/ui/interactivity">Add interactivity to your app</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-11-2"
      href="/ui/interactivity/gestures" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-11-2"
    >Gestures
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-11-2">
      <li class="nav-item">
    <a class="nav-link" href="/ui/interactivity/gestures">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/gestures/handling-taps">Handle taps</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/interactivity/gestures/drag-outside">Drag an object outside an app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/effects/drag-a-widget">Drag a UI element within an app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/gestures/ripples">Add Material touch ripples</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/gestures/dismissible">Implement swipe to dismiss</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-11-3"
      href="/ui/interactivity/input" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-11-3"
    >Input & forms
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-11-3">
      <li class="nav-item">
    <a class="nav-link" href="/cookbook/forms/text-input">Create and style a text field</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/forms/retrieve-input">Retrieve the value of a text field</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/forms/text-field-changes">Handle changes to a text field</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/forms/focus">Manage focus in text fields</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/forms/validation">Build a form with validation</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link" href="/cookbook/design/snackbars">Display a snackbar</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/interactivity/actions-and-shortcuts">Implement actions & shortcuts</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/interactivity/focus">Manage keyboard focus</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-12" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-12"
          >Assets & media</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-12">
            <li class="nav-item">
    <a class="nav-link" href="/ui/assets/assets-and-images">Add assets and images</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/images/network-image">Display images from the internet</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/images/fading-in-images">Fade in images with a placeholder</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/plugins/play-video">Play and pause a video</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-13" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-13"
          >Navigation & routing</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-13">
            <li class="nav-item">
    <a class="nav-link" href="/ui/navigation">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/design/tabs">Add tabs to your app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/navigation/navigation-basics">Navigate to a new screen and back</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/navigation/passing-data">Send data to a new screen</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/navigation/returning-data">Return data from a screen</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/design/drawer">Add a drawer to a screen</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/navigation/deep-linking">Setup deep linking</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/navigation/set-up-app-links">Setup app links for Android</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/navigation/set-up-universal-links">Setup universal links for iOS</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/navigation/url-strategies">Configure web URL strategies</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-14" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-14"
          >Animations & transitions</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-14">
            <li class="nav-item">
    <a class="nav-link" href="/ui/animations">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/animations/tutorial">Tutorial</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/animations/implicit-animations">Implicit animations</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/animation/animated-container">Animate the properties of a container</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/animation/opacity-animation">Fade a widget in and out</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/animations/hero-animations">Hero animations</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/animation/page-route-animation">Animate a page route transition</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/animation/physics-simulation">Animate using a physic simulation</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/animations/staggered-animations">Staggered animations</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/effects/staggered-menu-animation">Create a staggered menu animation</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/animations/overview">API overview</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-15" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-15"
          >Accessibility & internationalization</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-15">
            <li class="nav-item">
    <a class="nav-link" href="/ui/accessibility-and-internationalization/accessibility">Accessibility</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/accessibility-and-internationalization/internationalization">Internationalization</a>
  </li>


</ul>
        </li><li aria-hidden="true"><div class="sidebar-primary-divider"></div></li>
    <li class="nav-header">Beyond UI</li>
    <li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-18" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-18"
          >Data & backend</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-18">
            <li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-18-1"
      href="/data-and-backend/state-mgmt" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-18-1"
    >State management
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-18-1">
      <li class="nav-item">
    <a class="nav-link" href="/data-and-backend/state-mgmt/intro">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/data-and-backend/state-mgmt/declarative">Think declaratively</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/data-and-backend/state-mgmt/ephemeral-vs-app">Ephemeral vs app state</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/data-and-backend/state-mgmt/simple">Simple app state management</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/data-and-backend/state-mgmt/options">Options</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-18-2"
      href="/data-and-backend/networking" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-18-2"
    >Networking & http
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-18-2">
      <li class="nav-item">
    <a class="nav-link" href="/data-and-backend/networking">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/fetch-data">Fetch data from the internet</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/authenticated-requests">Make authenticated requests</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/send-data">Send data to the internet</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/update-data">Update data over the internet</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/delete-data">Delete data on the internet</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/web-sockets">Communicate with WebSockets</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-18-3"
      href="/data-and-backend/serialization" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-18-3"
    >Serialization
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-18-3">
      <li class="nav-item">
    <a class="nav-link" href="/data-and-backend/serialization/json">JSON serialization</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/networking/background-parsing">Parse JSON in the background</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-18-4"
      href="/data-and-backend/persistence" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-18-4"
    >Persistence
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-18-4">
      <li class="nav-item">
    <a class="nav-link" href="/cookbook/persistence/key-value">Store key-value data on disk</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/persistence/reading-writing-files">Read and write files</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/persistence/sqlite">Persist data with SQLite</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link" href="/data-and-backend/firebase">Firebase</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/data-and-backend/google-apis">Google APIs</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-19" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-19"
          >Platform integration</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-19">
            <li class="nav-item">
    <a class="nav-link" href="/reference/supported-platforms">Supported platforms</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/desktop">Build desktop apps with Flutter</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/platform-channels">Write platform-specific code</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/platform-adaptations">Automatic platform adaptations</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-19-5"
      href="/platform-integration/android" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-19-5"
    >Android
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-19-5">
      <li class="nav-item">
    <a class="nav-link" href="/platform-integration/android/splash-screen">Add a splash screen</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/android/c-interop">Bind to native code</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/android/platform-views">Host a native Android view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/android/restore-state-android">Restore state on Android</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/android/chromeos">Target ChromeOS with Android</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-19-6"
      href="/platform-integration/ios" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-19-6"
    >iOS
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-19-6">
      <li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/apple-frameworks">Leverage Apple's system libraries</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/launch-screen">Add a launch screen</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/ios-app-clip">Add iOS App Clip support</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/app-extensions">Add iOS app extensions</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/c-interop">Bind to native code</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/platform-views">Host a native iOS view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/ios-debugging">Enable debugging on iOS</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/ios/restore-state-ios">Restore state on iOS</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-19-7"
      href="/platform-integration/linux" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-19-7"
    >Linux
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-19-7">
      <li class="nav-item">
    <a class="nav-link" href="/platform-integration/linux/building">Build a Linux app</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-19-8"
      href="/platform-integration/macos" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-19-8"
    >macOS
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-19-8">
      <li class="nav-item">
    <a class="nav-link" href="/platform-integration/macos/building">Build a macOS app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/macos/c-interop">C interop</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-19-9"
      href="/platform-integration/web" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-19-9"
    >Web
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-19-9">
      <li class="nav-item">
    <a class="nav-link" href="/platform-integration/web/building">Build a web app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/web/faq">Web FAQ</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/web/renderers">Web renderers</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/web/initialization">Custom app initialization</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/platform-integration/web/web-images">Displaying images on the web</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-19-10"
      href="/platform-integration/windows" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-19-10"
    >Windows
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-19-10">
      <li class="nav-item">
    <a class="nav-link" href="/platform-integration/windows/building">Build a Windows app</a>
  </li>

</ul>
  </li>
</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-20" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-20"
          >Packages & plugins</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-20">
            <li class="nav-item">
    <a class="nav-link" href="/packages-and-plugins/using-packages">Use packages & plugins</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/packages-and-plugins/developing-packages">Develop packages & plugins</a>
  </li>

<div class="dropdown-divider"></div>
<li class="nav-item">
    <a class="nav-link" href="/packages-and-plugins/favorites">Flutter Favorites</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://pub.dev/flutter" target="_blank" rel="noopener">Package repository</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-21" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-21"
          >Testing & debugging</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-21">
            <li class="nav-header">Testing</li><li class="nav-item">
    <a class="nav-link" href="/testing/overview">Testing overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-21-3"
      href="#fixed-sidenav-21-3" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-21-3"
    >Unit testing
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-21-3">
      <li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/unit/introduction">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/unit/mocking">Mock dependencies</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-21-4"
      href="#fixed-sidenav-21-4" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-21-4"
    >Widget testing
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-21-4">
      <li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/widget/introduction">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/widget/finders">Find widgets</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/widget/scrolling">Simulate scrolling</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/widget/tap-drag">Simulate user interaction</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-21-5"
      href="#fixed-sidenav-21-5" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-21-5"
    >Integration testing
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-21-5">
      <li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/integration/introduction">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/integration-tests">Write and run an integration test</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/testing/integration/profiling">Profile an integration test</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link" href="/testing/testing-plugins">Test a plugin</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/plugins-in-tests">Handle plugin code in tests</a>
  </li>

<li class="nav-header">Debugging</li><li class="nav-item">
    <a class="nav-link" href="/testing/debugging">Debugging tools</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/code-debugging">Debug your app programmatically</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/native-debugging">Use a native language debugger</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/build-modes">Flutter's build modes</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/common-errors">Common Flutter errors</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/errors">Handle errors</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/cookbook/maintenance/error-reporting">Report errors to a service</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-22" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-22"
          >Performance & optimization</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-22">
            <li class="nav-item">
    <a class="nav-link" href="/perf">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/impeller">Impeller</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/best-practices">Performance best practices</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/app-size">App size</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/deferred-components">Deferred components</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/rendering-performance">Rendering performance</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/ui-performance">Performance profiling</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/web-performance">Performance profiling for web</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/shader">Shader compilation jank</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/metrics">Performance metrics</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/isolates">Concurrency and isolates</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/faq">Performance FAQ</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/perf/appendix">Appendix</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-23" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-23"
          >Deployment</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-23">
            <li class="nav-item">
    <a class="nav-link" href="/deployment/obfuscate">Obfuscate Dart code</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/flavors">Create flavors of an app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/android">Build and release an Android app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/ios">Build and release an iOS app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/macos">Build and release a macOS app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/linux">Build and release a Linux app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/windows">Build and release a Windows app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/web">Build and release a web app</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/deployment/cd">Set up continuous deployment</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-24" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-24"
          >Add to an existing app</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-24">
            <li class="nav-item">
    <a class="nav-link" href="/add-to-app">Introduction</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-24-2"
      href="/add-to-app/android" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-24-2"
    >Add to an Android app
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-24-2">
      <li class="nav-item">
    <a class="nav-link" href="/add-to-app/android/project-setup">Set up Android project</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/android/add-flutter-screen">Add a single Flutter screen</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/android/add-flutter-fragment">Add a Flutter Fragment</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/android/add-flutter-view">Add a Flutter View</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/android/plugin-setup">Use a Flutter plugin</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-24-3"
      href="/add-to-app/ios" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-24-3"
    >Add to an iOS app
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-24-3">
      <li class="nav-item">
    <a class="nav-link" href="/add-to-app/ios/project-setup">Set up iOS project</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/ios/add-flutter-screen">Add a single Flutter screen</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link" href="/add-to-app/debugging">Debug embedded Flutter module</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/multiple-flutters">Add multiple Flutter instances</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/add-to-app/performance">Loading sequence and performance</a>
  </li>


</ul>
        </li><li aria-hidden="true"><div class="sidebar-primary-divider"></div></li>
    <li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-26" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-26"
          >Tools & editors</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-26">
            <li class="nav-item">
    <a class="nav-link" href="/tools/android-studio">Android Studio & IntelliJ</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/vs-code">Visual Studio Code</a>
  </li>

<li class="nav-item">
    <a class="nav-link collapsable collapsed"
      data-toggle="collapse" data-target="#fixed-sidenav-26-3"
      href="/tools/devtools" role="button"
      aria-expanded="false" aria-controls="fixed-sidenav-26-3"
    >DevTools
    </a>
    <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-26-3">
      <li class="nav-item">
    <a class="nav-link" href="/tools/devtools/overview">Overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/android-studio">Install from Android Studio & IntelliJ</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/vscode">Install from VS Code</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/cli">Install from command line</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/inspector">Flutter inspector</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/performance">Performance view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/cpu-profiler">CPU Profiler view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/memory">Memory view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/console">Debug console view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/network">Network view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/debugger">Debugger</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/logging">Logging view</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/app-size">App size tool</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/extensions">DevTools extensions</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/devtools/release-notes">Release notes</a>
  </li>

</ul>
  </li><li class="nav-item">
    <a class="nav-link" href="/tools/sdk">SDK overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/pubspec">Flutter's pubspec options</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/flutter-fix">Automated fixes</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/formatting">Code formatting</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-27" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-27"
          >Flutter concepts</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-27">
            <li class="nav-item">
    <a class="nav-link" href="/resources/architectural-overview">Architectural overview</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/resources/inside-flutter">Inside Flutter</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/ui/layout/constraints">Understanding constraints</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/testing/build-modes">Flutter's build modes</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/tools/hot-reload">Hot reload</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link collapsed collapsable" data-toggle="collapse" href="#fixed-sidenav-28" role="button"
             aria-expanded="false" aria-controls="fixed-sidenav-28"
          >Resources</a>
      
          <ul class="nav flex-column flex-nowrap collapse " id="fixed-sidenav-28">
            <li class="nav-header">Learning</li><li class="nav-item">
    <a class="nav-link" href="/resources/faq">FAQ</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/resources/books">Books</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/resources/videos">Videos</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/resources/courses">Courses</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/resources/bootstrap-into-dart">Learn Dart</a>
  </li>

<li class="nav-header">Contributing</li><li class="nav-item">
    <a class="nav-link" href="/resources/bug-reports">Create useful bug reports</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://github.com/flutter/flutter/blob/main/CONTRIBUTING.md" target="_blank" rel="noopener">Contribute to Flutter</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/resources/design-docs">Design documents</a>
  </li>


</ul>
        </li><li class="nav-item">
          <a class="nav-link  collapsable" data-toggle="collapse" href="#fixed-sidenav-29" role="button"
             aria-expanded="true" aria-controls="fixed-sidenav-29"
          >Reference</a>
      
          <ul class="nav flex-column flex-nowrap collapse show" id="fixed-sidenav-29">
            <li class="nav-item">
    <a class="nav-link" href="/dash">Who is Dash?</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/reference/widgets">Widget index</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="https://api.flutter.dev" target="_blank" rel="noopener">API reference</a>
  </li>

<li class="nav-item">
    <a class="nav-link" href="/reference/flutter-cli">flutter CLI reference</a>
  </li>


</ul>
        </li></ul>

    </div>

    
  
  
  
  
  <div
    id="site-toc--side"
    class="site-toc site-toc--side fixed-col col-xl-2 order-3 "
    data-fixed-column
  >
    <header class="site-toc__title">
      Contents
      </header>
    <ul class="section-nav nav">
<li class="toc-entry nav-item toc-h2"><a class="nav-link" href="#system-requirements">System requirements</a></li>
<li class="toc-entry nav-item toc-h2"><a class="nav-link" href="#get-sdk">Get the Flutter SDK</a>
<ul class="nav">
<li class="toc-entry nav-item toc-h3"><a class="nav-link" href="#method-1-install-flutter-using-snapd">Method 1: Install Flutter using snapd</a></li>
<li class="toc-entry nav-item toc-h3"><a class="nav-link" href="#method-2-manual-installation">Method 2: Manual installation</a></li>
<li class="toc-entry nav-item toc-h3"><a class="nav-link" href="#verify-your-install-with-flutter-doctor">Verify your install with flutter doctor</a></li>
<li class="toc-entry nav-item toc-h3"><a class="nav-link" href="#update-your-path">Update your path</a>
<ul class="nav">
<li class="toc-entry nav-item toc-h4"><a class="nav-link" href="#update-your-path-for-the-current-session-only">Update your path for the current session only</a></li>
<li class="toc-entry nav-item toc-h4"><a class="nav-link" href="#update-your-path-for-all-future-sessions">Update your path for all future sessions</a></li>
</ul>
</li>
</ul>
</li>
<li class="toc-entry nav-item toc-h2"><a class="nav-link" href="#android-setup">Android setup</a>
<ul class="nav">
<li class="toc-entry nav-item toc-h3"><a class="nav-link" href="#install-android-studio">Install Android Studio</a></li>
<li class="toc-entry nav-item toc-h3"><a class="nav-link" href="#set-up-your-android-device">Set up your Android device</a></li>
<li class="toc-entry nav-item toc-h3"><a class="nav-link" href="#set-up-the-android-emulator">Set up the Android emulator</a></li>
<li class="toc-entry nav-item toc-h3"><a class="nav-link" href="#agree-to-android-licenses">Agree to Android Licenses</a></li>
</ul>
</li>
<li class="toc-entry nav-item toc-h2"><a class="nav-link" href="#linux-setup">Linux setup</a>
<ul class="nav">
<li class="toc-entry nav-item toc-h3"><a class="nav-link" href="#linux-prerequisites">Linux prerequisites</a></li>
</ul>
</li>
<li class="toc-entry nav-item toc-h2"><a class="nav-link" href="#next-step">Next step</a></li>
</ul>
  </div>
<main class="site-content col-12 col-md-9 offset-md-3 col-xl-8 offset-xl-2 col-xxl-8 offset-xxl-2">
      <div class="container">

        

        <nav class="site-nextprev-nav__single">
    <ul>
      <li class="next">
          <a href="/get-started/editor">Set up an editor</a>
      </li>
      </ul>
  </nav>


        <header class="site-content__title">
          <div id="page-github-links" class="btn-group" aria-label="Page GitHub links" role="group">
  <a href="https://github.com/flutter/website/tree/main/src/get-started/install/linux.md" class="btn no-automatic-external" title="View page source" target="_blank" rel="noopener">
    <i class="material-symbols">description</i>
  </a>
  <a href="https://github.com/flutter/website/issues/new?template=1_page_issue.yml&title=[PAGE ISSUE]: 'Linux Installation Guide'&page-url=https://docs.flutter.dev/get-started/install/linux/&page-source=https://github.com/flutter/website/tree/main/src/get-started/install/linux.md" class="btn no-automatic-external" title="Report an issue with this page"
    target="_blank" rel="noopener">
    <i class="material-symbols">bug_report</i>
  </a>
</div>

          <h1>Linux Installation Guide</h1>
          

<nav aria-label="breadcrumb">
  <ol class="breadcrumb" vocab="http://schema.org/" typeof="BreadcrumbList">
  <li class="breadcrumb-item"
      property="itemListElement" typeof="ListItem"><a href="/get-started" property="item" typeof="WebPage"><span property="name">Get started</span>
      </a>
      <meta property="position" content="1" />
    </li>
  <li class="breadcrumb-item"
      property="itemListElement" typeof="ListItem"><a href="/get-started/install" property="item" typeof="WebPage"><span property="name">Install</span>
      </a>
      <meta property="position" content="2" />
    </li>
  <li class="breadcrumb-item active"
      property="itemListElement" typeof="ListItem" aria-current="page"><a href="/get-started/install/linux" property="item" typeof="WebPage"><span property="name">Linux</span>
      </a>
      <meta property="position" content="3" />
    </li>
  
  </ol>
</nav>
          </header>
        
        
  <div
    id="site-toc--inline"
    class="site-toc site-toc--inline "
  >
    <header class="site-toc__title">
      Contents
    </header>
    <ul class="section-nav">
<li class="toc-entry toc-h2"><a href="#system-requirements">System requirements</a></li>
<li class="toc-entry toc-h2"><a href="#get-sdk">Get the Flutter SDK</a>
<ul>
<li class="toc-entry toc-h3"><a href="#method-1-install-flutter-using-snapd">Method 1: Install Flutter using snapd</a></li>
<li class="toc-entry toc-h3"><a href="#method-2-manual-installation">Method 2: Manual installation</a></li>
<li class="toc-entry toc-h3"><a href="#verify-your-install-with-flutter-doctor">Verify your install with flutter doctor</a></li>
<li class="toc-entry toc-h3"><a href="#update-your-path">Update your path</a>
<ul>
<li class="toc-entry toc-h4"><a href="#update-your-path-for-the-current-session-only">Update your path for the current session only</a></li>
<li class="toc-entry toc-h4"><a href="#update-your-path-for-all-future-sessions">Update your path for all future sessions</a></li>
</ul>
</li>
</ul>
</li>
<li class="toc-entry toc-h2"><a href="#android-setup">Android setup</a>
<ul>
<li class="toc-entry toc-h3"><a href="#install-android-studio">Install Android Studio</a></li>
<li class="toc-entry toc-h3"><a href="#set-up-your-android-device">Set up your Android device</a></li>
<li class="toc-entry toc-h3"><a href="#set-up-the-android-emulator">Set up the Android emulator</a></li>
<li class="toc-entry toc-h3"><a href="#agree-to-android-licenses">Agree to Android Licenses</a></li>
</ul>
</li>
<li class="toc-entry toc-h2"><a href="#linux-setup">Linux setup</a>
<ul>
<li class="toc-entry toc-h3"><a href="#linux-prerequisites">Linux prerequisites</a></li>
</ul>
</li>
<li class="toc-entry toc-h2"><a href="#next-step">Next step</a></li>
</ul>
  </div>
<h2 id="system-requirements">
<a class="anchor" href="#system-requirements" aria-hidden="true"><span class="octicon octicon-link"></span></a>System requirements</h2>

<p>To install and run Flutter,
your Linux development environment needs to meet these minimum requirements:</p>

<ul>
  <li>
<strong>Operating System</strong>: Linux (64-bit)</li>
  <li>
<strong>Disk Space</strong>: At least 1.6 GB (excluding disk space for IDE/tools).</li>
  <li>
<strong>Tools</strong>: Flutter relies on these command-line tools:
    <ul>
      <li><code class="language-plaintext highlighter-rouge">bash</code></li>
      <li><code class="language-plaintext highlighter-rouge">curl</code></li>
      <li><code class="language-plaintext highlighter-rouge">file</code></li>
      <li>
<code class="language-plaintext highlighter-rouge">git</code> 2.x</li>
      <li><code class="language-plaintext highlighter-rouge">mkdir</code></li>
      <li><code class="language-plaintext highlighter-rouge">rm</code></li>
      <li><code class="language-plaintext highlighter-rouge">unzip</code></li>
      <li><code class="language-plaintext highlighter-rouge">which</code></li>
      <li><code class="language-plaintext highlighter-rouge">xz-utils</code></li>
      <li><code class="language-plaintext highlighter-rouge">zip</code></li>
    </ul>
  </li>
  <li>
<strong>Shared libraries</strong>: To utilize the <code class="language-plaintext highlighter-rouge">flutter test</code> command,
your environment needs the library <code class="language-plaintext highlighter-rouge">libGLU.so.1</code>.
The <code class="language-plaintext highlighter-rouge">mesa</code> packages provide this library:
<code class="language-plaintext highlighter-rouge">libglu1-mesa</code> on Ubuntu/Debian and <code class="language-plaintext highlighter-rouge">mesa-libGLU</code> on Fedora.</li>
</ul>

<h2 id="get-sdk">
<a class="anchor" href="#get-sdk" aria-hidden="true"><span class="octicon octicon-link"></span></a>Get the Flutter SDK</h2>

<aside class="alert alert-warning alert-icon" role="alert">
  <p><i class="material-symbols" aria-hidden="true">error</i> <strong>Important:</strong>
  If you develop apps in China, check out <a href="https://docs.flutter.dev/community/china">using Flutter in China</a>.</p>
</aside>

<p>To install the Flutter SDK on your Linux system,
use one of the following methods.</p>

<h3 id="method-1-install-flutter-using-snapd">
<a class="anchor" href="#method-1-install-flutter-using-snapd" aria-hidden="true"><span class="octicon octicon-link"></span></a>Method 1: Install Flutter using snapd</h3>

<p>This offers the most direct method to install
the Flutter SDK on your Linux system.</p>

<p>To learn about using snapd, check <a href="https://snapcraft.io/docs/installing-snapd">Installing snapd</a>.</p>

<p>After you install <code class="language-plaintext highlighter-rouge">snapd</code>, <a href="https://snapcraft.io/flutter">install Flutter from the Snap Store</a> or
run the following command:</p>

<div class="language-terminal highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="gp">$</span><span class="w"> </span><span class="nb">sudo </span>snap <span class="nb">install </span>flutter <span class="nt">--classic</span>
</code></pre></div></div>

<aside class="alert alert-info" role="alert">
  <p><i class="material-symbols" aria-hidden="true">info</i> <strong>Note:</strong>
  After you install Flutter with <code class="language-plaintext highlighter-rouge">snapd</code>,
  display your Flutter SDK path with the following command:</p>

  <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp">  $</span><span class="w"> </span>flutter sdk-path
</code></pre></div>  </div>
</aside>

<h3 id="method-2-manual-installation">
<a class="anchor" href="#method-2-manual-installation" aria-hidden="true"><span class="octicon octicon-link"></span></a>Method 2: Manual installation</h3>

<p>If you aren’t using <code class="language-plaintext highlighter-rouge">snapd</code>, follow these steps to install Flutter.</p>

<ol>
  <li>
    <p>Download the installation bundle for the latest
stable release of the Flutter SDK:</p>

    <p><a href="#" class="download-latest-link-linux btn btn-primary">(loading…)</a></p>

    <p>You can find older builds and other release channels in the <a href="https://docs.flutter.dev/release/archive">SDK archive</a>.</p>
  </li>
  <li>
    <p>Extract the downloaded file to a location of your choice:</p>

    <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp"> $</span><span class="w"> </span><span class="nb">cd</span> ~/development
<span class="gp"> $</span><span class="w"> </span><span class="nb">tar </span>xf ~/Downloads/flutter_linux_vX.X.X-stable.tar.xz
</code></pre></div>    </div>
  </li>
  <li>
    <p>Add the <code class="language-plaintext highlighter-rouge">flutter</code> tool to your path:</p>

    <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp"> $</span><span class="w"> </span><span class="nb">export </span><span class="nv">PATH</span><span class="o">=</span><span class="s2">"</span><span class="nv">$PATH</span><span class="s2">:</span><span class="sb">`</span><span class="nb">pwd</span><span class="sb">`</span><span class="s2">/flutter/bin"</span>
</code></pre></div>    </div>

    <p>This command sets your <code class="language-plaintext highlighter-rouge">PATH</code> environment variable for the current
 terminal window only.
 To add Flutter as permanent part of your path,
 check out <a href="#update-your-path">Update your path</a>.</p>
  </li>
  <li>
    <p>(Optional) Pre-download development binaries:</p>

    <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp"> $</span><span class="w"> </span>flutter precache
</code></pre></div>    </div>

    <p>To find additional download options, run <code class="language-plaintext highlighter-rouge">flutter help precache</code>.</p>
  </li>
</ol>

<aside class="alert alert-info" role="alert">
  <p><i class="material-symbols" aria-hidden="true">info</i> <strong>Note:</strong>
  To update an existing version of Flutter, see <a href="https://docs.flutter.dev/release/upgrade">Upgrading Flutter</a>.</p>
</aside>

<h3 id="verify-your-install-with-flutter-doctor">
<a class="anchor" href="#verify-your-install-with-flutter-doctor" aria-hidden="true"><span class="octicon octicon-link"></span></a>Verify your install with <code class="language-plaintext highlighter-rouge">flutter doctor</code>
</h3>

<p>After installing Flutter, run <code class="language-plaintext highlighter-rouge">flutter doctor</code>.</p>

<div class="language-terminal highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="gp">$</span><span class="w"> </span>flutter doctor
</code></pre></div></div>

<p>This command checks your environment and displays a report in the
terminal window.
Flutter bundles the Dart SDK. You don’t need to install Dart.</p>

<p>To get greater detail on what you need to fix, add the <code class="language-plaintext highlighter-rouge">-v</code> flag:</p>

<div class="language-terminal highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="gp">$</span><span class="w"> </span>flutter doctor <span class="nt">-v</span>
</code></pre></div></div>

<p>Review the output for further tasks to perform.
An example would be the text shown in <strong>bold</strong>.</p>

<p>The <code class="language-plaintext highlighter-rouge">flutter doctor -v</code> output might resemble the following:</p>

<pre>
[-] Android toolchain - develop for Android devices
    • Android SDK at /Users/dash/Library/Android/sdk
    <strong>✗ Android SDK is missing command line tools; download from https://goo.gl/XxQghQ</strong>
    • Try re-installing or updating your Android SDK,
      visit https://docs.flutter.dev/setup/#android-setup for detailed instructions.
</pre>

<p>The following sections describe how to perform these tasks
and finish the setup process.</p>

<p>After completing the outlined tasks,
run the <code class="language-plaintext highlighter-rouge">flutter doctor</code> command again.</p>

<aside class="alert alert-warning" role="alert">
  <p><i class="material-symbols" aria-hidden="true">warning</i> <strong>Warning:</strong>
  The Flutter tool might occasionally download resources
  from Google servers. By downloading or using the
  Flutter SDK you agree to the <a href="https://policies.google.com/terms">Google Terms of Service</a>.</p>

  <p>For example, when installed from GitHub
  (as opposed to from a prepackaged archive),
  the Flutter tool downloads the Dart SDK from
  Google servers immediately when first run,
  as it is used to execute the <code class="language-plaintext highlighter-rouge">flutter</code> tool itself.
  This also occurs when Flutter is upgraded
  (for example, by running the <code class="language-plaintext highlighter-rouge">flutter upgrade</code> command).</p>

  <p>The <code class="language-plaintext highlighter-rouge">flutter</code> tool uses Google Analytics
  to report feature usage statistics and send <a href="https://github.com/flutter/flutter/wiki/Flutter-CLI-crash-reporting">crash reports</a>.
  This data is used to help improve Flutter tools over time.</p>

  <p>Flutter tool analytics are not sent on the very first run.
  To disable reporting, run <code class="language-plaintext highlighter-rouge">flutter config --no-analytics</code>.
  To display the current setting, use <code class="language-plaintext highlighter-rouge">flutter config</code>.
  If you opt out of analytics, an opt-out event is sent,
  and then no further information is sent by the Flutter tool.</p>

  <p>Dart tools might also send usage metrics and crash
  reports to Google.
  To control the submission of these metrics,
  use the following options on the <a href="https://dart.dev/tools/dart-tool"><code class="language-plaintext highlighter-rouge">dart</code> tool</a>:</p>

  <ul>
    <li>
<code class="language-plaintext highlighter-rouge">--enable-analytics</code>: Enables anonymous analytics.</li>
    <li>
<code class="language-plaintext highlighter-rouge">--disable-analytics</code>: Disables anonymous analytics.</li>
  </ul>

  <p>The Google <a href="https://policies.google.com/privacy">Privacy Policy</a> describes
  how data is handled by these services.</p>

</aside>

<h3 id="update-your-path">
<a class="anchor" href="#update-your-path" aria-hidden="true"><span class="octicon octicon-link"></span></a>Update your path</h3>

<p>Independent of how you installed Flutter,
you need to add the Flutter SDK to your <code class="language-plaintext highlighter-rouge">PATH</code>.
You can add Flutter to your <code class="language-plaintext highlighter-rouge">PATH</code> either for the current session
or for all sessions going forward.</p>

<aside class="alert alert-info" role="alert">
  <p><i class="material-symbols" aria-hidden="true">info</i> <strong>Note:</strong>
  Downloading the Flutter SDK
  also downloads a compatible version of Dart.
  If you’ve downloaded the Dart SDK separately,
  make sure that the Flutter version of <code class="language-plaintext highlighter-rouge">dart</code> is
  first in your path, as the two versions might not be compatible.
  The following command tells you whether the <code class="language-plaintext highlighter-rouge">flutter</code> and <code class="language-plaintext highlighter-rouge">dart</code>
  commands originate from the same <code class="language-plaintext highlighter-rouge">bin</code> directory and are
  therefore compatible.</p>

  <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp">  $</span><span class="w"> </span>which flutter dart
<span class="go">  /path-to-flutter-sdk/bin/flutter
  /usr/local/bin/dart
</span></code></pre></div>  </div>

  <p>As shown above, the two commands don’t come from
  the same <code class="language-plaintext highlighter-rouge">bin</code> directory. Update your path to use
  commands from <code class="language-plaintext highlighter-rouge">/path-to-flutter-sdk/bin</code> before
  commands from <code class="language-plaintext highlighter-rouge">/usr/local/bin</code> (in this case).
  After updating your shell for the change to take effect,
  running the <code class="language-plaintext highlighter-rouge">which</code> command again
  should show that the <code class="language-plaintext highlighter-rouge">flutter</code> and <code class="language-plaintext highlighter-rouge">dart</code> commands
  now come from the same directory.</p>

  <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp">  $</span><span class="w"> </span>which flutter dart
<span class="go">  /path-to-flutter-sdk/bin/flutter
  /path-to-flutter-sdk/bin/dart
</span></code></pre></div>  </div>

  <p>To learn more about the <code class="language-plaintext highlighter-rouge">dart</code> command, run <code class="language-plaintext highlighter-rouge">dart -h</code>
  from the command line, or see the <a href="https://dart.dev/tools/dart-tool">dart tool</a> page.</p>
</aside>

<h4 id="update-your-path-for-the-current-session-only">
<a class="anchor" href="#update-your-path-for-the-current-session-only" aria-hidden="true"><span class="octicon octicon-link"></span></a>Update your path for the current session only</h4>

<p>To update your <code class="language-plaintext highlighter-rouge">PATH</code> variable for the current session,
enter this command in your terminal:</p>

<div class="language-terminal highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="gp">$</span><span class="w"> </span><span class="nb">export </span><span class="nv">PATH</span><span class="o">=</span><span class="s2">"</span><span class="nv">$PATH</span><span class="s2">:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin"</span>
</code></pre></div></div>

<p>In this command,
replace <code class="language-plaintext highlighter-rouge">[PATH_TO_FLUTTER_GIT_DIRECTORY]</code>
with the path to your Flutter SDK install.</p>

<h4 id="update-your-path-for-all-future-sessions">
<a class="anchor" href="#update-your-path-for-all-future-sessions" aria-hidden="true"><span class="octicon octicon-link"></span></a>Update your path for all future sessions</h4>

<p>To add Flutter to your <code class="language-plaintext highlighter-rouge">PATH</code> for <em>any</em> terminal session, 
follow these steps:</p>

<ol>
  <li>
    <p>Find your Flutter SDK installation path.</p>

    <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp"> $</span><span class="w"> </span>find / <span class="nt">-type</span> d <span class="nt">-wholename</span> <span class="s2">"flutter/bin"</span> 2&gt;/dev/null
</code></pre></div>    </div>

    <p>Response should resemble:</p>

    <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp"> /usr/&lt;example&gt;</span>dev/flutter/bin
</code></pre></div>    </div>
  </li>
  <li>
    <p>Append the following line to your <code class="language-plaintext highlighter-rouge">rc</code> shell file
Linux reads the <code class="language-plaintext highlighter-rouge">rc</code> shell “resource” file each
time it opens a terminal.</p>

    <p>Replace <code class="language-plaintext highlighter-rouge">&lt;path_to_flutter_directory&gt;</code> with your Flutter path</p>

    <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp"> $</span><span class="w"> </span><span class="nb">echo</span> <span class="s1">'export PATH="$PATH:&lt;path_to_flutter_directory&gt;/flutter/bin"'</span> <span class="o">&gt;&gt;</span> <span class="nv">$HOME</span>/.bashrc
</code></pre></div>    </div>
  </li>
  <li>
    <p>Reload the current shell profile.</p>

    <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp"> source $</span>HOME/.&lt;rc file&gt;
</code></pre></div>    </div>
  </li>
  <li>
    <p>Verify that the <code class="language-plaintext highlighter-rouge">flutter/bin</code> directory exists in your <code class="language-plaintext highlighter-rouge">PATH</code>.</p>

    <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp"> $</span><span class="w"> </span><span class="nb">echo</span> <span class="nv">$PATH</span>
</code></pre></div>    </div>

    <p>Response should resemble:</p>

    <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp"> /usr/&lt;example&gt;</span>/dev/flutter/bin:/usr/local/git/git-google/bin:/usr/local/git/current/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:
</code></pre></div>    </div>
  </li>
  <li>
    <p>Verify that you can now use the <code class="language-plaintext highlighter-rouge">flutter</code> command.</p>

    <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp"> $</span><span class="w"> </span>which flutter
</code></pre></div>    </div>

    <p>Response should resemble:</p>

    <div class="language-plaintext highlighter-rouge">
<div class="highlight"><pre class="highlight"><code>   /usr/&lt;example&gt;/dev/flutter/bin/flutter
</code></pre></div>    </div>
  </li>
</ol>

<aside class="alert alert-info" role="alert">
  <p><i class="material-symbols" aria-hidden="true">info</i> <strong>Note:</strong>
  Downloading the Flutter SDK
  also downloads a compatible version of Dart.
  If you’ve downloaded the Dart SDK separately,
  make sure that the Flutter version of <code class="language-plaintext highlighter-rouge">dart</code> is
  first in your path, as the two versions might not be compatible.
  The following command tells you whether the <code class="language-plaintext highlighter-rouge">flutter</code> and <code class="language-plaintext highlighter-rouge">dart</code>
  commands originate from the same <code class="language-plaintext highlighter-rouge">bin</code> directory and are
  therefore compatible.</p>

  <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp">  $</span><span class="w"> </span>which flutter dart
<span class="go">  /path-to-flutter-sdk/bin/flutter
  /usr/local/bin/dart
</span></code></pre></div>  </div>

  <p>As shown above, the two commands don’t come from
  the same <code class="language-plaintext highlighter-rouge">bin</code> directory. Update your path to use
  commands from <code class="language-plaintext highlighter-rouge">/path-to-flutter-sdk/bin</code> before
  commands from <code class="language-plaintext highlighter-rouge">/usr/local/bin</code> (in this case).
  After updating your shell for the change to take effect,
  running the <code class="language-plaintext highlighter-rouge">which</code> command again
  should show that the <code class="language-plaintext highlighter-rouge">flutter</code> and <code class="language-plaintext highlighter-rouge">dart</code> commands
  now come from the same directory.</p>

  <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp">  $</span><span class="w"> </span>which flutter dart
<span class="go">  /path-to-flutter-sdk/bin/flutter
  /path-to-flutter-sdk/bin/dart
</span></code></pre></div>  </div>

  <p>To learn more about the <code class="language-plaintext highlighter-rouge">dart</code> command, run <code class="language-plaintext highlighter-rouge">dart -h</code>
  from the command line, or see the <a href="https://dart.dev/tools/dart-tool">dart tool</a> page.</p>
</aside>

<h2 id="android-setup">
<a class="anchor" href="#android-setup" aria-hidden="true"><span class="octicon octicon-link"></span></a>Android setup</h2>

<aside class="alert alert-info" role="alert">
  <p><i class="material-symbols" aria-hidden="true">info</i> <strong>Note:</strong>
  Flutter relies on a full installation of Android Studio to supply
  its Android platform dependencies. However, you can write your
  Flutter apps in a number of editors; a later step discusses that.</p>
</aside>

<h3 id="install-android-studio">
<a class="anchor" href="#install-android-studio" aria-hidden="true"><span class="octicon octicon-link"></span></a>Install Android Studio</h3>

<p class="install-help">
    <a id="android-studio" href="https://docs.flutter.dev/get-started/install/help#android-setup">
    <span class="material-symbols">help</span>
    <span>Help</span>
    </a>
</p>

<ol>
  <li>Download and install <a href="https://developer.android.com/studio">Android Studio</a>.</li>
  <li>Start Android Studio, and go through the ‘Android Studio Setup Wizard’.
This installs the latest Android SDK, Android SDK Command-line Tools,
and Android SDK Build-Tools, which are required by Flutter
when developing for Android.</li>
  <li>Run <code class="language-plaintext highlighter-rouge">flutter doctor</code> to confirm that Flutter has located
your installation of Android Studio. If Flutter cannot locate it,
run <code class="language-plaintext highlighter-rouge">flutter config --android-studio-dir=&lt;directory&gt;</code> to set the
directory that Android Studio is installed to.</li>
</ol>

<h3 id="set-up-your-android-device">
<a class="anchor" href="#set-up-your-android-device" aria-hidden="true"><span class="octicon octicon-link"></span></a>Set up your Android device</h3>

<p class="install-help">
    <a id="android-device" href="https://docs.flutter.dev/get-started/install/help#android-setup">
    <span class="material-symbols">help</span>
    <span>Help</span>
    </a>
</p>

<p>To prepare to run and test your Flutter app on an Android device,
you need an Android device running Android 5.0 (API level 21) or higher.</p>

<ol>
  <li>Enable <strong>Developer options</strong> and <strong>USB debugging</strong> on your device.
Detailed instructions are available in the
<a href="https://developer.android.com/studio/debug/dev-options">Android documentation</a>.</li>
  <li>[Optional] To leverage wireless debugging, enable <strong>Wireless debugging</strong> 
on your device. Detailed instructions are available in the 
<a href="https://developer.android.com/studio/run/device#wireless">Android documentation</a>.</li>
  <li>Windows-only: Install the <a href="https://developer.android.com/studio/run/win-usb">Google USB
Driver</a>.</li>
  <li>Using a USB cable, plug your phone into your computer. If prompted on your
device, authorize your computer to access your device.</li>
  <li>In the terminal, run the <code class="language-plaintext highlighter-rouge">flutter devices</code> command to verify that
Flutter recognizes your connected Android device.  By default,
Flutter uses the version of the Android SDK where your <code class="language-plaintext highlighter-rouge">adb</code>
tool is based. If you want Flutter to use a different installation
of the Android SDK, you must set the <code class="language-plaintext highlighter-rouge">ANDROID_SDK_ROOT</code> environment
variable to that installation directory.</li>
</ol>

<h3 id="set-up-the-android-emulator">
<a class="anchor" href="#set-up-the-android-emulator" aria-hidden="true"><span class="octicon octicon-link"></span></a>Set up the Android emulator</h3>

<p class="install-help">
    <a id="android-emulator" href="https://docs.flutter.dev/get-started/install/help#android-setup">
    <span class="material-symbols">help</span>
    <span>Help</span>
    </a>
</p>

<p>To prepare to run and test your Flutter app on the Android emulator,
follow these steps:</p>

<ol>
  <li>Enable
<a href="https://developer.android.com/studio/run/emulator-acceleration#accel-vm">VM acceleration</a>
on your machine.</li>
  <li>Start <strong>Android Studio</strong>, click the <strong>Device Manager</strong>
icon, and select <strong>Create Device</strong> under <strong>Virtual</strong> tab…
    <ul>
      <li>In older versions of Android Studio, you should instead
launch <strong>Android Studio &gt; Tools &gt; Android &gt; AVD Manager</strong> and select
<strong>Create Virtual Device…</strong>. (The <strong>Android</strong> submenu is only present
when inside an Android project.)</li>
      <li>If you do not have a project open, you can choose 
<strong>3-Dot Menu / More Actions &gt; Virtual Device Manager</strong> and select <strong>Create Device…</strong>
</li>
    </ul>
  </li>
  <li>Choose a device definition and select <strong>Next</strong>.</li>
  <li>Select one or more system images for the Android versions you want
to emulate, and select <strong>Next</strong>.
An <em>x86</em> or <em>x86_64</em> image is recommended.</li>
  <li>Under Emulated Performance, select <strong>Hardware - GLES 2.0</strong> to enable
<a href="https://developer.android.com/studio/run/emulator-acceleration">hardware
acceleration</a>.</li>
  <li>
    <p>Verify the AVD configuration is correct, and select <strong>Finish</strong>.</p>

    <p>For details on the above steps, see <a href="https://developer.android.com/studio/run/managing-avds">Managing
AVDs</a>.</p>
  </li>
  <li>In Android Virtual Device Manager, click <strong>Run</strong> in the toolbar.
The emulator starts up and displays the default canvas for your
selected OS version and device.</li>
</ol>

<h3 id="agree-to-android-licenses">
<a class="anchor" href="#agree-to-android-licenses" aria-hidden="true"><span class="octicon octicon-link"></span></a>Agree to Android Licenses</h3>

<p class="install-help">
    <a id="android-licenses" href="https://docs.flutter.dev/get-started/install/help#android-setup">
    <span class="material-symbols">help</span>
    <span>Help</span>
    </a>
</p>

<p>Before you can use Flutter, you must agree to the
licenses of the Android SDK platform. This step should be done after
you have installed the tools listed above.</p>

<ol>
  <li>Open an elevated console window and run the following command to begin
signing licenses.
    <div class="language-terminal highlighter-rouge">
<div class="highlight"><pre class="highlight"><code><span class="gp">$</span><span class="w"> </span>flutter doctor <span class="nt">--android-licenses</span>
</code></pre></div>    </div>
  </li>
  <li>Review the terms of each license carefully before agreeing to them.</li>
  <li>Once you are done agreeing with licenses, run <code class="language-plaintext highlighter-rouge">flutter doctor</code> again
to confirm that you are ready to use Flutter.</li>
</ol>

<h2 id="linux-setup">
<a class="anchor" href="#linux-setup" aria-hidden="true"><span class="octicon octicon-link"></span></a>Linux setup</h2>

<h3 id="linux-prerequisites">
<a class="anchor" href="#linux-prerequisites" aria-hidden="true"><span class="octicon octicon-link"></span></a>Linux prerequisites</h3>

<p>To develop Linux desktop apps with Flutter, you need the following tools:</p>

<ul>
  <li><a href="https://clang.llvm.org/">Clang</a></li>
  <li><a href="https://cmake.org/">CMake</a></li>
  <li><a href="https://git-scm.com/">git</a></li>
  <li><a href="https://www.gtk.org/docs/installations/linux#installing-gtk3-from-packages">GTK development headers</a></li>
  <li><a href="https://ninja-build.org/">Ninja build</a></li>
  <li><a href="https://www.freedesktop.org/wiki/Software/pkg-config/">pkg-config</a></li>
  <li><a href="https://packages.debian.org/sid/liblzma-dev">liblzma-dev</a></li>
  <li><a href="https://packages.debian.org/sid/libstdc++-12-dev">libstdc++-12-dev</a></li>
</ul>

<p>To install each of the tools, run the following command:</p>

<div class="language-terminal highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="gp">$</span><span class="w"> </span><span class="nb">sudo </span>apt-get <span class="nb">install </span>clang cmake git ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev
</code></pre></div></div>

<h2 id="next-step">
<a class="anchor" href="#next-step" aria-hidden="true"><span class="octicon octicon-link"></span></a>Next step</h2>

<p>Set up your preferred editor.</p>


        <nav class="site-nextprev-nav__single">
    <ul>
      <li class="next">
          <a href="/get-started/editor">Set up an editor</a>
      </li>
      </ul>
  </nav>

      </div>
    </main>
  </div>
</div>


    
      <footer class="site-footer">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12 site-footer__wrapper">
        <div class="site-footer__logo">
          <img src="/assets/images/shared/brand/flutter/logo/flutter-mono-81x100.png" alt="Flutter Logo" width="81" height="100">
        </div>
        <div class="site-footer__content">
          <ul class="site-footer__link-list">
              <li><a href="/tos">terms</a></li>
              <li><a href="/brand">brand usage</a></li>
              <li><a href="/security">security</a></li>
              <li><a href="https://www.google.com/intl/en/policies/privacy">privacy</a></li>
              <li><a href="https://esflutter.dev/">español</a></li>
              <li><a href="https://flutter.cn" class="text-nowrap">社区中文资源</a></li> 
              <li><a href="https://blog.google/inside-google/company-announcements/standing-with-black-community">We stand in solidarity with the Black community. Black Lives Matter.</a></li>
          </ul>
          <p class="licenses">
            Except as otherwise noted,
            this work is licensed under a
            <a rel="license" href="https://creativecommons.org/licenses/by/4.0">Creative
            Commons Attribution 4.0 International License</a>,
            and code samples are licensed under the BSD License.
          </p>
        </div>
      </div>
    </div>
  </div>
</footer>

    

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js" integrity="sha512-ubuT8Z88WxezgSqf3RLuNi5lmjstiJcyezx34yIU2gAHonIi27Na7atqzUZCOoY4CExaoFumzOsFQ2Ch+I/HCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/js/bootstrap.min.js" integrity="sha512-7rusk8kGPFynZWu26OKbTeI+QPoYchtxsmPeBqkHIEXJxeun4yJ4ISYe7C6sz9wdxeE1Gk3VxsIWgCZTc+vX3g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.11/clipboard.min.js" integrity="sha512-7O5pXpc0oCRrxk8RUfDYFgn0nO1t+jLuIOQdOMRp4APB7uZ4vSjspzp5y6YDtDs4VzUSTbWzBFZ/LKJhnyFOKw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/js-cookie/3.0.5/js.cookie.min.js" integrity="sha512-nlp9/l96/EpjYBx7EP7pGASVXNe80hGhYAUrjeXnu/fyF5Py0/RXav4BBNs7n5Hx1WFhOEOWSAVjGeC3oKxDVQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="/assets/js/vendor/code-prettify/prettify.js?v=1708630917"></script>
    <script src="/assets/js/vendor/code-prettify/lang-css.js?v=1708630917"></script>
    <script src="/assets/js/vendor/code-prettify/lang-dart.js?v=1708630917"></script>
    <script src="/assets/js/vendor/code-prettify/lang-yaml.js?v=1708630917"></script>
    <script src="/assets/js/tabs.js?v=1708630917"></script>
    <script src="/assets/js/archive.js?v=1708630917"></script>
    <script src="/assets/js/main.js?v=1708630917"></script>

    

  </body>
</html>
