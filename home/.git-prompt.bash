  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>git/contrib/completion/git-prompt.sh at master · git/git · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="http://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="R01Klaz32bIetppRvWL9diktzS3U+LcDUZEnTeSxpHw=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-deacc71db3df368c127857126ecd56b570a8f5e7.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-27eae33da826712ee4611abc24bad3db9b24ed3c.css" media="screen" rel="stylesheet" type="text/css" />
    


      <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-ad1b87fda705d87118448f87fb6a20bdb15bd841.js" type="text/javascript"></script>
      <script src="https://a248.e.akamai.net/assets.github.com/assets/github-845656b5edd8e0530312c4585429c5049525e37f.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="0f5f6544a9698380e11202d06f28f338">

        <link data-pjax-transient rel='permalink' href='/git/git/blob/ce432cac30f98b291be609a0fc974042a2156f55/contrib/completion/git-prompt.sh'>
    <meta property="og:title" content="git"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/git/git"/>
    <meta property="og:image" content="https://secure.gravatar.com/avatar/878a0ea898da1701df8573ed64a5cc9d?s=420&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="git - Git Source Code Mirror - This is a publish-only repository and all pull requests are ignored. Please follow Documentation/SubmittingPatches procedure for any of your improvements."/>
    <meta property="twitter:card" content="summary"/>
    <meta property="twitter:site" content="@GitHub">
    <meta property="twitter:title" content="git/git"/>

    <meta name="description" content="git - Git Source Code Mirror - This is a publish-only repository and all pull requests are ignored. Please follow Documentation/SubmittingPatches procedure for any of your improvements." />

  <link href="https://github.com/git/git/commits/master.atom" rel="alternate" title="Recent Commits to git:master" type="application/atom+xml" />

  </head>


  <body class="logged_out page-blob  vis-public env-production  ">
    <div id="wrapper">

      

      

      

      


        <div class="header header-logged-out">
          <div class="container clearfix">

            <a class="header-logo-wordmark" href="https://github.com/">
              <img alt="GitHub" class="github-logo-4x" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x.png?1338945075" />
              <img alt="GitHub" class="github-logo-4x-hover" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x-hover.png?1338945075" />
            </a>

              
<ul class="top-nav">
    <li class="explore"><a href="https://github.com/explore">Explore GitHub</a></li>
  <li class="search"><a href="https://github.com/search">Search</a></li>
  <li class="features"><a href="https://github.com/features">Features</a></li>
    <li class="blog"><a href="https://github.com/blog">Blog</a></li>
</ul>


            <div class="header-actions">
                <a class="button primary" href="https://github.com/signup">Sign up for free</a>
              <a class="button" href="https://github.com/login?return_to=%2Fgit%2Fgit%2Fblob%2Fmaster%2Fcontrib%2Fcompletion%2Fgit-prompt.sh">Sign in</a>
            </div>

          </div>
        </div>


      

      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu ">
          <div class="container">
            <div class="title-actions-bar">
              


<ul class="pagehead-actions">



    <li>
      <a href="/login?return_to=%2Fgit%2Fgit"
        class="minibutton js-toggler-target star-button entice tooltipped upwards"
        title="You must be signed in to use this feature" rel="nofollow">
        <span class="mini-icon mini-icon-star"></span>Star
      </a>
      <a class="social-count js-social-count" href="/git/git/stargazers">
        3,648
      </a>
    </li>
    <li>
      <a href="/login?return_to=%2Fgit%2Fgit"
        class="minibutton js-toggler-target fork-button entice tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="mini-icon mini-icon-fork"></span>Fork
      </a>
      <a href="/git/git/network" class="social-count">
        1,333
      </a>
    </li>
</ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-icon mega-icon-public-repo"></span>
                <span class="author vcard">
                  <a href="/git" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">git</span>
                  </a></span> /
                <strong><a href="/git/git" class="js-current-repository">git</a></strong>
              </h1>
            </div>

            
  <ul class="tabs">
    <li><a href="/git/git" class="selected" highlight="repo_source repo_downloads repo_commits repo_tags repo_branches">Code</a></li>
    <li><a href="/git/git/network" highlight="repo_network">Network</a></li>
    <li><a href="/git/git/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>3</span></a></li>




    <li><a href="/git/git/graphs" highlight="repo_graphs repo_contributors">Graphs</a></li>


  </ul>
  
<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
          <li><a href="/git/git/tags" class="tabnav-tab" highlight="repo_tags">Tags <span class="counter ">454</span></a></li>
    </ul>
    
  </span>

  <div class="tabnav-widget scope">


    <div class="select-menu js-menu-container js-select-menu js-branch-menu">
      <a class="minibutton select-menu-button js-menu-target" data-hotkey="w" data-ref="master">
        <span class="mini-icon mini-icon-branch"></span>
        <i>branch:</i>
        <span class="js-select-button">master</span>
      </a>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container js-select-menu-pane">

        <div class="select-menu-modal js-select-menu-pane">
          <div class="select-menu-header">
            <span class="select-menu-title">Switch branches/tags</span>
            <span class="mini-icon mini-icon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-filters">
            <div class="select-menu-text-filter">
              <input type="text" id="commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
            </div>
            <div class="select-menu-tabs">
              <ul>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
                </li>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
                </li>
              </ul>
            </div><!-- /.select-menu-tabs -->
          </div><!-- /.select-menu-filters -->

          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="branches" data-filterable-for="commitish-filter-field" data-filterable-type="substring">


              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/maint/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="maint" rel="nofollow" title="maint">maint</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target selected">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/master/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" rel="nofollow" title="master">master</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/next/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="next" rel="nofollow" title="next">next</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/pu/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="pu" rel="nofollow" title="pu">pu</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/todo/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="todo" rel="nofollow" title="todo">todo</a>
              </div> <!-- /.select-menu-item -->

              <div class="select-menu-no-results js-not-filterable">Nothing to show</div>
          </div> <!-- /.select-menu-list -->


          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="tags" data-filterable-for="commitish-filter-field" data-filterable-type="substring">

              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.2-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.2-rc3" rel="nofollow" title="v1.8.2-rc3">v1.8.2-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.2-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.2-rc2" rel="nofollow" title="v1.8.2-rc2">v1.8.2-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.2-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.2-rc1" rel="nofollow" title="v1.8.2-rc1">v1.8.2-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.2-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.2-rc0" rel="nofollow" title="v1.8.2-rc0">v1.8.2-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.1-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.1-rc3" rel="nofollow" title="v1.8.1-rc3">v1.8.1-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.1-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.1-rc2" rel="nofollow" title="v1.8.1-rc2">v1.8.1-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.1-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.1-rc1" rel="nofollow" title="v1.8.1-rc1">v1.8.1-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.1-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.1-rc0" rel="nofollow" title="v1.8.1-rc0">v1.8.1-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.1.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.1.5" rel="nofollow" title="v1.8.1.5">v1.8.1.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.1.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.1.4" rel="nofollow" title="v1.8.1.4">v1.8.1.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.1.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.1.3" rel="nofollow" title="v1.8.1.3">v1.8.1.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.1.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.1.2" rel="nofollow" title="v1.8.1.2">v1.8.1.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.1.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.1.1" rel="nofollow" title="v1.8.1.1">v1.8.1.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.1" rel="nofollow" title="v1.8.1">v1.8.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.0-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.0-rc3" rel="nofollow" title="v1.8.0-rc3">v1.8.0-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.0-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.0-rc2" rel="nofollow" title="v1.8.0-rc2">v1.8.0-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.0-rc1" rel="nofollow" title="v1.8.0-rc1">v1.8.0-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.0-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.0-rc0" rel="nofollow" title="v1.8.0-rc0">v1.8.0-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.0.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.0.3" rel="nofollow" title="v1.8.0.3">v1.8.0.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.0.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.0.2" rel="nofollow" title="v1.8.0.2">v1.8.0.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.0.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.0.1" rel="nofollow" title="v1.8.0.1">v1.8.0.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.8.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.8.0" rel="nofollow" title="v1.8.0">v1.8.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.12-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.12-rc3" rel="nofollow" title="v1.7.12-rc3">v1.7.12-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.12-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.12-rc2" rel="nofollow" title="v1.7.12-rc2">v1.7.12-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.12-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.12-rc1" rel="nofollow" title="v1.7.12-rc1">v1.7.12-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.12-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.12-rc0" rel="nofollow" title="v1.7.12-rc0">v1.7.12-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.12.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.12.4" rel="nofollow" title="v1.7.12.4">v1.7.12.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.12.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.12.3" rel="nofollow" title="v1.7.12.3">v1.7.12.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.12.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.12.2" rel="nofollow" title="v1.7.12.2">v1.7.12.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.12.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.12.1" rel="nofollow" title="v1.7.12.1">v1.7.12.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.12/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.12" rel="nofollow" title="v1.7.12">v1.7.12</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.11-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.11-rc3" rel="nofollow" title="v1.7.11-rc3">v1.7.11-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.11-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.11-rc2" rel="nofollow" title="v1.7.11-rc2">v1.7.11-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.11-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.11-rc1" rel="nofollow" title="v1.7.11-rc1">v1.7.11-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.11-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.11-rc0" rel="nofollow" title="v1.7.11-rc0">v1.7.11-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.11.7/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.11.7" rel="nofollow" title="v1.7.11.7">v1.7.11.7</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.11.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.11.6" rel="nofollow" title="v1.7.11.6">v1.7.11.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.11.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.11.5" rel="nofollow" title="v1.7.11.5">v1.7.11.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.11.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.11.4" rel="nofollow" title="v1.7.11.4">v1.7.11.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.11.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.11.3" rel="nofollow" title="v1.7.11.3">v1.7.11.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.11.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.11.2" rel="nofollow" title="v1.7.11.2">v1.7.11.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.11.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.11.1" rel="nofollow" title="v1.7.11.1">v1.7.11.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.11/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.11" rel="nofollow" title="v1.7.11">v1.7.11</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.10-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.10-rc4" rel="nofollow" title="v1.7.10-rc4">v1.7.10-rc4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.10-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.10-rc3" rel="nofollow" title="v1.7.10-rc3">v1.7.10-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.10-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.10-rc2" rel="nofollow" title="v1.7.10-rc2">v1.7.10-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.10-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.10-rc1" rel="nofollow" title="v1.7.10-rc1">v1.7.10-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.10-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.10-rc0" rel="nofollow" title="v1.7.10-rc0">v1.7.10-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.10.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.10.5" rel="nofollow" title="v1.7.10.5">v1.7.10.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.10.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.10.4" rel="nofollow" title="v1.7.10.4">v1.7.10.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.10.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.10.3" rel="nofollow" title="v1.7.10.3">v1.7.10.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.10.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.10.2" rel="nofollow" title="v1.7.10.2">v1.7.10.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.10.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.10.1" rel="nofollow" title="v1.7.10.1">v1.7.10.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.10/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.10" rel="nofollow" title="v1.7.10">v1.7.10</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.9-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.9-rc2" rel="nofollow" title="v1.7.9-rc2">v1.7.9-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.9-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.9-rc1" rel="nofollow" title="v1.7.9-rc1">v1.7.9-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.9-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.9-rc0" rel="nofollow" title="v1.7.9-rc0">v1.7.9-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.9.7/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.9.7" rel="nofollow" title="v1.7.9.7">v1.7.9.7</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.9.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.9.6" rel="nofollow" title="v1.7.9.6">v1.7.9.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.9.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.9.5" rel="nofollow" title="v1.7.9.5">v1.7.9.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.9.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.9.4" rel="nofollow" title="v1.7.9.4">v1.7.9.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.9.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.9.3" rel="nofollow" title="v1.7.9.3">v1.7.9.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.9.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.9.2" rel="nofollow" title="v1.7.9.2">v1.7.9.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.9.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.9.1" rel="nofollow" title="v1.7.9.1">v1.7.9.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.9/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.9" rel="nofollow" title="v1.7.9">v1.7.9</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.8-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.8-rc4" rel="nofollow" title="v1.7.8-rc4">v1.7.8-rc4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.8-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.8-rc3" rel="nofollow" title="v1.7.8-rc3">v1.7.8-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.8-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.8-rc2" rel="nofollow" title="v1.7.8-rc2">v1.7.8-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.8-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.8-rc1" rel="nofollow" title="v1.7.8-rc1">v1.7.8-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.8-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.8-rc0" rel="nofollow" title="v1.7.8-rc0">v1.7.8-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.8.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.8.6" rel="nofollow" title="v1.7.8.6">v1.7.8.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.8.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.8.5" rel="nofollow" title="v1.7.8.5">v1.7.8.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.8.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.8.4" rel="nofollow" title="v1.7.8.4">v1.7.8.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.8.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.8.3" rel="nofollow" title="v1.7.8.3">v1.7.8.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.8.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.8.2" rel="nofollow" title="v1.7.8.2">v1.7.8.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.8.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.8.1" rel="nofollow" title="v1.7.8.1">v1.7.8.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.8/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.8" rel="nofollow" title="v1.7.8">v1.7.8</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.7-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.7-rc0" rel="nofollow" title="v1.7.7-rc0">v1.7.7-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.7.7/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.7.7" rel="nofollow" title="v1.7.7.7">v1.7.7.7</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.7.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.7.6" rel="nofollow" title="v1.7.7.6">v1.7.7.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.7.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.7.5" rel="nofollow" title="v1.7.7.5">v1.7.7.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.7.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.7.4" rel="nofollow" title="v1.7.7.4">v1.7.7.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.7.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.7.3" rel="nofollow" title="v1.7.7.3">v1.7.7.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.7.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.7.2" rel="nofollow" title="v1.7.7.2">v1.7.7.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.7.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.7.1" rel="nofollow" title="v1.7.7.1">v1.7.7.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.6-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.6-rc3" rel="nofollow" title="v1.7.6-rc3">v1.7.6-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.6-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.6-rc2" rel="nofollow" title="v1.7.6-rc2">v1.7.6-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.6-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.6-rc1" rel="nofollow" title="v1.7.6-rc1">v1.7.6-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.6-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.6-rc0" rel="nofollow" title="v1.7.6-rc0">v1.7.6-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.6.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.6.6" rel="nofollow" title="v1.7.6.6">v1.7.6.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.6.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.6.5" rel="nofollow" title="v1.7.6.5">v1.7.6.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.6.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.6.1" rel="nofollow" title="v1.7.6.1">v1.7.6.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.6" rel="nofollow" title="v1.7.6">v1.7.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.5-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.5-rc3" rel="nofollow" title="v1.7.5-rc3">v1.7.5-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.5-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.5-rc2" rel="nofollow" title="v1.7.5-rc2">v1.7.5-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.5-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.5-rc1" rel="nofollow" title="v1.7.5-rc1">v1.7.5-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.5-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.5-rc0" rel="nofollow" title="v1.7.5-rc0">v1.7.5-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.5.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.5.4" rel="nofollow" title="v1.7.5.4">v1.7.5.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.5.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.5.3" rel="nofollow" title="v1.7.5.3">v1.7.5.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.5.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.5.2" rel="nofollow" title="v1.7.5.2">v1.7.5.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.5.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.5.1" rel="nofollow" title="v1.7.5.1">v1.7.5.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.5" rel="nofollow" title="v1.7.5">v1.7.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.4-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.4-rc3" rel="nofollow" title="v1.7.4-rc3">v1.7.4-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.4-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.4-rc2" rel="nofollow" title="v1.7.4-rc2">v1.7.4-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.4-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.4-rc1" rel="nofollow" title="v1.7.4-rc1">v1.7.4-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.4-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.4-rc0" rel="nofollow" title="v1.7.4-rc0">v1.7.4-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.4.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.4.5" rel="nofollow" title="v1.7.4.5">v1.7.4.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.4.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.4.4" rel="nofollow" title="v1.7.4.4">v1.7.4.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.4.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.4.3" rel="nofollow" title="v1.7.4.3">v1.7.4.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.4.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.4.2" rel="nofollow" title="v1.7.4.2">v1.7.4.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.4.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.4.1" rel="nofollow" title="v1.7.4.1">v1.7.4.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.4" rel="nofollow" title="v1.7.4">v1.7.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.3-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.3-rc2" rel="nofollow" title="v1.7.3-rc2">v1.7.3-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.3-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.3-rc1" rel="nofollow" title="v1.7.3-rc1">v1.7.3-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.3-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.3-rc0" rel="nofollow" title="v1.7.3-rc0">v1.7.3-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.3.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.3.5" rel="nofollow" title="v1.7.3.5">v1.7.3.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.3.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.3.4" rel="nofollow" title="v1.7.3.4">v1.7.3.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.3.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.3.3" rel="nofollow" title="v1.7.3.3">v1.7.3.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.3.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.3.2" rel="nofollow" title="v1.7.3.2">v1.7.3.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.3.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.3.1" rel="nofollow" title="v1.7.3.1">v1.7.3.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.3" rel="nofollow" title="v1.7.3">v1.7.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.2-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.2-rc3" rel="nofollow" title="v1.7.2-rc3">v1.7.2-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.2-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.2-rc2" rel="nofollow" title="v1.7.2-rc2">v1.7.2-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.2-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.2-rc1" rel="nofollow" title="v1.7.2-rc1">v1.7.2-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.2-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.2-rc0" rel="nofollow" title="v1.7.2-rc0">v1.7.2-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.2.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.2.5" rel="nofollow" title="v1.7.2.5">v1.7.2.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.2.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.2.4" rel="nofollow" title="v1.7.2.4">v1.7.2.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.2.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.2.3" rel="nofollow" title="v1.7.2.3">v1.7.2.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.2.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.2.2" rel="nofollow" title="v1.7.2.2">v1.7.2.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.2.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.2.1" rel="nofollow" title="v1.7.2.1">v1.7.2.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.2" rel="nofollow" title="v1.7.2">v1.7.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.1-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.1-rc2" rel="nofollow" title="v1.7.1-rc2">v1.7.1-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.1-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.1-rc1" rel="nofollow" title="v1.7.1-rc1">v1.7.1-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.1-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.1-rc0" rel="nofollow" title="v1.7.1-rc0">v1.7.1-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.1.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.1.4" rel="nofollow" title="v1.7.1.4">v1.7.1.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.1.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.1.3" rel="nofollow" title="v1.7.1.3">v1.7.1.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.1.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.1.2" rel="nofollow" title="v1.7.1.2">v1.7.1.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.1.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.1.1" rel="nofollow" title="v1.7.1.1">v1.7.1.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.1" rel="nofollow" title="v1.7.1">v1.7.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0-rc2" rel="nofollow" title="v1.7.0-rc2">v1.7.0-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0-rc1" rel="nofollow" title="v1.7.0-rc1">v1.7.0-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0-rc0" rel="nofollow" title="v1.7.0-rc0">v1.7.0-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0.9/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0.9" rel="nofollow" title="v1.7.0.9">v1.7.0.9</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0.8/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0.8" rel="nofollow" title="v1.7.0.8">v1.7.0.8</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0.7/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0.7" rel="nofollow" title="v1.7.0.7">v1.7.0.7</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0.6" rel="nofollow" title="v1.7.0.6">v1.7.0.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0.5" rel="nofollow" title="v1.7.0.5">v1.7.0.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0.4" rel="nofollow" title="v1.7.0.4">v1.7.0.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0.3" rel="nofollow" title="v1.7.0.3">v1.7.0.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0.2" rel="nofollow" title="v1.7.0.2">v1.7.0.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0.1" rel="nofollow" title="v1.7.0.1">v1.7.0.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.7.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.7.0" rel="nofollow" title="v1.7.0">v1.7.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.6-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.6-rc4" rel="nofollow" title="v1.6.6-rc4">v1.6.6-rc4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.6-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.6-rc3" rel="nofollow" title="v1.6.6-rc3">v1.6.6-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.6-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.6-rc2" rel="nofollow" title="v1.6.6-rc2">v1.6.6-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.6-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.6-rc1" rel="nofollow" title="v1.6.6-rc1">v1.6.6-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.6-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.6-rc0" rel="nofollow" title="v1.6.6-rc0">v1.6.6-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.6.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.6.3" rel="nofollow" title="v1.6.6.3">v1.6.6.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.6.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.6.2" rel="nofollow" title="v1.6.6.2">v1.6.6.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.6.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.6.1" rel="nofollow" title="v1.6.6.1">v1.6.6.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.6" rel="nofollow" title="v1.6.6">v1.6.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5-rc3" rel="nofollow" title="v1.6.5-rc3">v1.6.5-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5-rc2" rel="nofollow" title="v1.6.5-rc2">v1.6.5-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5-rc1" rel="nofollow" title="v1.6.5-rc1">v1.6.5-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5-rc0" rel="nofollow" title="v1.6.5-rc0">v1.6.5-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5.9/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5.9" rel="nofollow" title="v1.6.5.9">v1.6.5.9</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5.8/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5.8" rel="nofollow" title="v1.6.5.8">v1.6.5.8</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5.7/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5.7" rel="nofollow" title="v1.6.5.7">v1.6.5.7</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5.6" rel="nofollow" title="v1.6.5.6">v1.6.5.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5.5" rel="nofollow" title="v1.6.5.5">v1.6.5.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5.4" rel="nofollow" title="v1.6.5.4">v1.6.5.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5.3" rel="nofollow" title="v1.6.5.3">v1.6.5.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5.2" rel="nofollow" title="v1.6.5.2">v1.6.5.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5.1" rel="nofollow" title="v1.6.5.1">v1.6.5.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.5" rel="nofollow" title="v1.6.5">v1.6.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.4-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.4-rc3" rel="nofollow" title="v1.6.4-rc3">v1.6.4-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.4-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.4-rc2" rel="nofollow" title="v1.6.4-rc2">v1.6.4-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.4-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.4-rc1" rel="nofollow" title="v1.6.4-rc1">v1.6.4-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.4-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.4-rc0" rel="nofollow" title="v1.6.4-rc0">v1.6.4-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.4.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.4.5" rel="nofollow" title="v1.6.4.5">v1.6.4.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.4.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.4.4" rel="nofollow" title="v1.6.4.4">v1.6.4.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.4.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.4.3" rel="nofollow" title="v1.6.4.3">v1.6.4.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.4.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.4.2" rel="nofollow" title="v1.6.4.2">v1.6.4.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.4.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.4.1" rel="nofollow" title="v1.6.4.1">v1.6.4.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.4" rel="nofollow" title="v1.6.4">v1.6.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.3-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.3-rc4" rel="nofollow" title="v1.6.3-rc4">v1.6.3-rc4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.3-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.3-rc3" rel="nofollow" title="v1.6.3-rc3">v1.6.3-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.3-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.3-rc2" rel="nofollow" title="v1.6.3-rc2">v1.6.3-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.3-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.3-rc1" rel="nofollow" title="v1.6.3-rc1">v1.6.3-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.3-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.3-rc0" rel="nofollow" title="v1.6.3-rc0">v1.6.3-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.3.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.3.4" rel="nofollow" title="v1.6.3.4">v1.6.3.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.3.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.3.3" rel="nofollow" title="v1.6.3.3">v1.6.3.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.3.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.3.2" rel="nofollow" title="v1.6.3.2">v1.6.3.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.3.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.3.1" rel="nofollow" title="v1.6.3.1">v1.6.3.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.3" rel="nofollow" title="v1.6.3">v1.6.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.2-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.2-rc2" rel="nofollow" title="v1.6.2-rc2">v1.6.2-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.2-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.2-rc1" rel="nofollow" title="v1.6.2-rc1">v1.6.2-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.2-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.2-rc0" rel="nofollow" title="v1.6.2-rc0">v1.6.2-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.2.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.2.5" rel="nofollow" title="v1.6.2.5">v1.6.2.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.2.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.2.4" rel="nofollow" title="v1.6.2.4">v1.6.2.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.2.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.2.3" rel="nofollow" title="v1.6.2.3">v1.6.2.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.2.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.2.2" rel="nofollow" title="v1.6.2.2">v1.6.2.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.2.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.2.1" rel="nofollow" title="v1.6.2.1">v1.6.2.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.2" rel="nofollow" title="v1.6.2">v1.6.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.1-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.1-rc4" rel="nofollow" title="v1.6.1-rc4">v1.6.1-rc4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.1-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.1-rc3" rel="nofollow" title="v1.6.1-rc3">v1.6.1-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.1-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.1-rc2" rel="nofollow" title="v1.6.1-rc2">v1.6.1-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.1-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.1-rc1" rel="nofollow" title="v1.6.1-rc1">v1.6.1-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.1.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.1.4" rel="nofollow" title="v1.6.1.4">v1.6.1.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.1.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.1.3" rel="nofollow" title="v1.6.1.3">v1.6.1.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.1.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.1.2" rel="nofollow" title="v1.6.1.2">v1.6.1.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.1.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.1.1" rel="nofollow" title="v1.6.1.1">v1.6.1.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.1" rel="nofollow" title="v1.6.1">v1.6.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.0-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.0-rc3" rel="nofollow" title="v1.6.0-rc3">v1.6.0-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.0-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.0-rc2" rel="nofollow" title="v1.6.0-rc2">v1.6.0-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.0-rc1" rel="nofollow" title="v1.6.0-rc1">v1.6.0-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.0-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.0-rc0" rel="nofollow" title="v1.6.0-rc0">v1.6.0-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.0.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.0.6" rel="nofollow" title="v1.6.0.6">v1.6.0.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.0.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.0.5" rel="nofollow" title="v1.6.0.5">v1.6.0.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.0.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.0.4" rel="nofollow" title="v1.6.0.4">v1.6.0.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.0.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.0.3" rel="nofollow" title="v1.6.0.3">v1.6.0.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.0.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.0.2" rel="nofollow" title="v1.6.0.2">v1.6.0.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.0.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.0.1" rel="nofollow" title="v1.6.0.1">v1.6.0.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.6.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.6.0" rel="nofollow" title="v1.6.0">v1.6.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.6-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.6-rc3" rel="nofollow" title="v1.5.6-rc3">v1.5.6-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.6-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.6-rc2" rel="nofollow" title="v1.5.6-rc2">v1.5.6-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.6-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.6-rc1" rel="nofollow" title="v1.5.6-rc1">v1.5.6-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.6-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.6-rc0" rel="nofollow" title="v1.5.6-rc0">v1.5.6-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.6.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.6.6" rel="nofollow" title="v1.5.6.6">v1.5.6.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.6.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.6.5" rel="nofollow" title="v1.5.6.5">v1.5.6.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.6.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.6.4" rel="nofollow" title="v1.5.6.4">v1.5.6.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.6.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.6.3" rel="nofollow" title="v1.5.6.3">v1.5.6.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.6.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.6.2" rel="nofollow" title="v1.5.6.2">v1.5.6.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.6.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.6.1" rel="nofollow" title="v1.5.6.1">v1.5.6.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.6" rel="nofollow" title="v1.5.6">v1.5.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.5-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.5-rc3" rel="nofollow" title="v1.5.5-rc3">v1.5.5-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.5-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.5-rc2" rel="nofollow" title="v1.5.5-rc2">v1.5.5-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.5-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.5-rc1" rel="nofollow" title="v1.5.5-rc1">v1.5.5-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.5-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.5-rc0" rel="nofollow" title="v1.5.5-rc0">v1.5.5-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.5.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.5.6" rel="nofollow" title="v1.5.5.6">v1.5.5.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.5.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.5.5" rel="nofollow" title="v1.5.5.5">v1.5.5.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.5.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.5.4" rel="nofollow" title="v1.5.5.4">v1.5.5.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.5.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.5.3" rel="nofollow" title="v1.5.5.3">v1.5.5.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.5.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.5.2" rel="nofollow" title="v1.5.5.2">v1.5.5.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.5.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.5.1" rel="nofollow" title="v1.5.5.1">v1.5.5.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.5" rel="nofollow" title="v1.5.5">v1.5.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4-rc5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4-rc5" rel="nofollow" title="v1.5.4-rc5">v1.5.4-rc5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4-rc4" rel="nofollow" title="v1.5.4-rc4">v1.5.4-rc4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4-rc3" rel="nofollow" title="v1.5.4-rc3">v1.5.4-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4-rc2" rel="nofollow" title="v1.5.4-rc2">v1.5.4-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4-rc1" rel="nofollow" title="v1.5.4-rc1">v1.5.4-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4-rc0" rel="nofollow" title="v1.5.4-rc0">v1.5.4-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4.7/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4.7" rel="nofollow" title="v1.5.4.7">v1.5.4.7</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4.6" rel="nofollow" title="v1.5.4.6">v1.5.4.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4.5" rel="nofollow" title="v1.5.4.5">v1.5.4.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4.4" rel="nofollow" title="v1.5.4.4">v1.5.4.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4.3" rel="nofollow" title="v1.5.4.3">v1.5.4.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4.2" rel="nofollow" title="v1.5.4.2">v1.5.4.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4.1" rel="nofollow" title="v1.5.4.1">v1.5.4.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.4" rel="nofollow" title="v1.5.4">v1.5.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3-rc7/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3-rc7" rel="nofollow" title="v1.5.3-rc7">v1.5.3-rc7</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3-rc6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3-rc6" rel="nofollow" title="v1.5.3-rc6">v1.5.3-rc6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3-rc5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3-rc5" rel="nofollow" title="v1.5.3-rc5">v1.5.3-rc5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3-rc4" rel="nofollow" title="v1.5.3-rc4">v1.5.3-rc4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3-rc3" rel="nofollow" title="v1.5.3-rc3">v1.5.3-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3-rc2" rel="nofollow" title="v1.5.3-rc2">v1.5.3-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3-rc1" rel="nofollow" title="v1.5.3-rc1">v1.5.3-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3-rc0" rel="nofollow" title="v1.5.3-rc0">v1.5.3-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3.8/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3.8" rel="nofollow" title="v1.5.3.8">v1.5.3.8</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3.7/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3.7" rel="nofollow" title="v1.5.3.7">v1.5.3.7</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3.6" rel="nofollow" title="v1.5.3.6">v1.5.3.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3.5" rel="nofollow" title="v1.5.3.5">v1.5.3.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3.4" rel="nofollow" title="v1.5.3.4">v1.5.3.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3.3" rel="nofollow" title="v1.5.3.3">v1.5.3.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3.2" rel="nofollow" title="v1.5.3.2">v1.5.3.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3.1" rel="nofollow" title="v1.5.3.1">v1.5.3.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.3" rel="nofollow" title="v1.5.3">v1.5.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.2-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.2-rc3" rel="nofollow" title="v1.5.2-rc3">v1.5.2-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.2-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.2-rc2" rel="nofollow" title="v1.5.2-rc2">v1.5.2-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.2-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.2-rc1" rel="nofollow" title="v1.5.2-rc1">v1.5.2-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.2-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.2-rc0" rel="nofollow" title="v1.5.2-rc0">v1.5.2-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.2.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.2.5" rel="nofollow" title="v1.5.2.5">v1.5.2.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.2.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.2.4" rel="nofollow" title="v1.5.2.4">v1.5.2.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.2.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.2.3" rel="nofollow" title="v1.5.2.3">v1.5.2.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.2.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.2.2" rel="nofollow" title="v1.5.2.2">v1.5.2.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.2.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.2.1" rel="nofollow" title="v1.5.2.1">v1.5.2.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.2" rel="nofollow" title="v1.5.2">v1.5.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.1-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.1-rc3" rel="nofollow" title="v1.5.1-rc3">v1.5.1-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.1-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.1-rc2" rel="nofollow" title="v1.5.1-rc2">v1.5.1-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.1-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.1-rc1" rel="nofollow" title="v1.5.1-rc1">v1.5.1-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.1.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.1.6" rel="nofollow" title="v1.5.1.6">v1.5.1.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.1.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.1.5" rel="nofollow" title="v1.5.1.5">v1.5.1.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.1.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.1.4" rel="nofollow" title="v1.5.1.4">v1.5.1.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.1.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.1.3" rel="nofollow" title="v1.5.1.3">v1.5.1.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.1.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.1.2" rel="nofollow" title="v1.5.1.2">v1.5.1.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.1.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.1.1" rel="nofollow" title="v1.5.1.1">v1.5.1.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.1" rel="nofollow" title="v1.5.1">v1.5.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0-rc4" rel="nofollow" title="v1.5.0-rc4">v1.5.0-rc4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0-rc3" rel="nofollow" title="v1.5.0-rc3">v1.5.0-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0-rc2" rel="nofollow" title="v1.5.0-rc2">v1.5.0-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0-rc1" rel="nofollow" title="v1.5.0-rc1">v1.5.0-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0-rc0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0-rc0" rel="nofollow" title="v1.5.0-rc0">v1.5.0-rc0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0.7/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0.7" rel="nofollow" title="v1.5.0.7">v1.5.0.7</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0.6" rel="nofollow" title="v1.5.0.6">v1.5.0.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0.5" rel="nofollow" title="v1.5.0.5">v1.5.0.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0.4" rel="nofollow" title="v1.5.0.4">v1.5.0.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0.3" rel="nofollow" title="v1.5.0.3">v1.5.0.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0.2" rel="nofollow" title="v1.5.0.2">v1.5.0.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0.1" rel="nofollow" title="v1.5.0.1">v1.5.0.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.5.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.5.0" rel="nofollow" title="v1.5.0">v1.5.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.4-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.4-rc2" rel="nofollow" title="v1.4.4-rc2">v1.4.4-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.4-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.4-rc1" rel="nofollow" title="v1.4.4-rc1">v1.4.4-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.4.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.4.5" rel="nofollow" title="v1.4.4.5">v1.4.4.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.4.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.4.4" rel="nofollow" title="v1.4.4.4">v1.4.4.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.4.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.4.3" rel="nofollow" title="v1.4.4.3">v1.4.4.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.4.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.4.2" rel="nofollow" title="v1.4.4.2">v1.4.4.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.4.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.4.1" rel="nofollow" title="v1.4.4.1">v1.4.4.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.4" rel="nofollow" title="v1.4.4">v1.4.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.3-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.3-rc3" rel="nofollow" title="v1.4.3-rc3">v1.4.3-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.3-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.3-rc2" rel="nofollow" title="v1.4.3-rc2">v1.4.3-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.3-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.3-rc1" rel="nofollow" title="v1.4.3-rc1">v1.4.3-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.3.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.3.5" rel="nofollow" title="v1.4.3.5">v1.4.3.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.3.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.3.4" rel="nofollow" title="v1.4.3.4">v1.4.3.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.3.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.3.3" rel="nofollow" title="v1.4.3.3">v1.4.3.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.3.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.3.2" rel="nofollow" title="v1.4.3.2">v1.4.3.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.3.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.3.1" rel="nofollow" title="v1.4.3.1">v1.4.3.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.3" rel="nofollow" title="v1.4.3">v1.4.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.2-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.2-rc4" rel="nofollow" title="v1.4.2-rc4">v1.4.2-rc4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.2-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.2-rc3" rel="nofollow" title="v1.4.2-rc3">v1.4.2-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.2-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.2-rc2" rel="nofollow" title="v1.4.2-rc2">v1.4.2-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.2-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.2-rc1" rel="nofollow" title="v1.4.2-rc1">v1.4.2-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.2.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.2.4" rel="nofollow" title="v1.4.2.4">v1.4.2.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.2.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.2.3" rel="nofollow" title="v1.4.2.3">v1.4.2.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.2.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.2.2" rel="nofollow" title="v1.4.2.2">v1.4.2.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.2.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.2.1" rel="nofollow" title="v1.4.2.1">v1.4.2.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.2" rel="nofollow" title="v1.4.2">v1.4.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.1-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.1-rc2" rel="nofollow" title="v1.4.1-rc2">v1.4.1-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.1-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.1-rc1" rel="nofollow" title="v1.4.1-rc1">v1.4.1-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.1.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.1.1" rel="nofollow" title="v1.4.1.1">v1.4.1.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.1" rel="nofollow" title="v1.4.1">v1.4.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.0-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.0-rc2" rel="nofollow" title="v1.4.0-rc2">v1.4.0-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.0-rc1" rel="nofollow" title="v1.4.0-rc1">v1.4.0-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.4.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.4.0" rel="nofollow" title="v1.4.0">v1.4.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.3.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.3.3" rel="nofollow" title="v1.3.3">v1.3.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.3.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.3.2" rel="nofollow" title="v1.3.2">v1.3.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.3.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.3.1" rel="nofollow" title="v1.3.1">v1.3.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.3.0-rc4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.3.0-rc4" rel="nofollow" title="v1.3.0-rc4">v1.3.0-rc4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.3.0-rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.3.0-rc3" rel="nofollow" title="v1.3.0-rc3">v1.3.0-rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.3.0-rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.3.0-rc2" rel="nofollow" title="v1.3.0-rc2">v1.3.0-rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.3.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.3.0-rc1" rel="nofollow" title="v1.3.0-rc1">v1.3.0-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.3.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.3.0" rel="nofollow" title="v1.3.0">v1.3.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.2.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.2.6" rel="nofollow" title="v1.2.6">v1.2.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.2.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.2.5" rel="nofollow" title="v1.2.5">v1.2.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.2.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.2.4" rel="nofollow" title="v1.2.4">v1.2.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.2.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.2.3" rel="nofollow" title="v1.2.3">v1.2.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.2.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.2.2" rel="nofollow" title="v1.2.2">v1.2.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.2.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.2.1" rel="nofollow" title="v1.2.1">v1.2.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.2.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.2.0" rel="nofollow" title="v1.2.0">v1.2.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.1.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.1.6" rel="nofollow" title="v1.1.6">v1.1.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.1.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.1.5" rel="nofollow" title="v1.1.5">v1.1.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.1.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.1.4" rel="nofollow" title="v1.1.4">v1.1.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.1.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.1.3" rel="nofollow" title="v1.1.3">v1.1.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.1.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.1.2" rel="nofollow" title="v1.1.2">v1.1.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.1.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.1.1" rel="nofollow" title="v1.1.1">v1.1.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.1.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.1.0" rel="nofollow" title="v1.1.0">v1.1.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0rc6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0rc6" rel="nofollow" title="v1.0rc6">v1.0rc6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0rc5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0rc5" rel="nofollow" title="v1.0rc5">v1.0rc5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0rc4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0rc4" rel="nofollow" title="v1.0rc4">v1.0rc4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0rc3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0rc3" rel="nofollow" title="v1.0rc3">v1.0rc3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0rc2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0rc2" rel="nofollow" title="v1.0rc2">v1.0rc2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0rc1" rel="nofollow" title="v1.0rc1">v1.0rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.13/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.13" rel="nofollow" title="v1.0.13">v1.0.13</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.12/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.12" rel="nofollow" title="v1.0.12">v1.0.12</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.11/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.11" rel="nofollow" title="v1.0.11">v1.0.11</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.10/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.10" rel="nofollow" title="v1.0.10">v1.0.10</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.9/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.9" rel="nofollow" title="v1.0.9">v1.0.9</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.8/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.8" rel="nofollow" title="v1.0.8">v1.0.8</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.7/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.7" rel="nofollow" title="v1.0.7">v1.0.7</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.6" rel="nofollow" title="v1.0.6">v1.0.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.5" rel="nofollow" title="v1.0.5">v1.0.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.4" rel="nofollow" title="v1.0.4">v1.0.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.3" rel="nofollow" title="v1.0.3">v1.0.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.2" rel="nofollow" title="v1.0.2">v1.0.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.1" rel="nofollow" title="v1.0.1">v1.0.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.0b/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.0b" rel="nofollow" title="v1.0.0b">v1.0.0b</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.0a/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.0a" rel="nofollow" title="v1.0.0a">v1.0.0a</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v1.0.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.0" rel="nofollow" title="v1.0.0">v1.0.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9n/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9n" rel="nofollow" title="v0.99.9n">v0.99.9n</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9m/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9m" rel="nofollow" title="v0.99.9m">v0.99.9m</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9l/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9l" rel="nofollow" title="v0.99.9l">v0.99.9l</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9k/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9k" rel="nofollow" title="v0.99.9k">v0.99.9k</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9j/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9j" rel="nofollow" title="v0.99.9j">v0.99.9j</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9i/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9i" rel="nofollow" title="v0.99.9i">v0.99.9i</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9h/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9h" rel="nofollow" title="v0.99.9h">v0.99.9h</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9g/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9g" rel="nofollow" title="v0.99.9g">v0.99.9g</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9f/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9f" rel="nofollow" title="v0.99.9f">v0.99.9f</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9e/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9e" rel="nofollow" title="v0.99.9e">v0.99.9e</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9d/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9d" rel="nofollow" title="v0.99.9d">v0.99.9d</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9c/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9c" rel="nofollow" title="v0.99.9c">v0.99.9c</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9b/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9b" rel="nofollow" title="v0.99.9b">v0.99.9b</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9a/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9a" rel="nofollow" title="v0.99.9a">v0.99.9a</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.9/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.9" rel="nofollow" title="v0.99.9">v0.99.9</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.8g/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.8g" rel="nofollow" title="v0.99.8g">v0.99.8g</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.8f/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.8f" rel="nofollow" title="v0.99.8f">v0.99.8f</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.8e/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.8e" rel="nofollow" title="v0.99.8e">v0.99.8e</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.8d/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.8d" rel="nofollow" title="v0.99.8d">v0.99.8d</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.8c/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.8c" rel="nofollow" title="v0.99.8c">v0.99.8c</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.8b/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.8b" rel="nofollow" title="v0.99.8b">v0.99.8b</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.8a/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.8a" rel="nofollow" title="v0.99.8a">v0.99.8a</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.8/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.8" rel="nofollow" title="v0.99.8">v0.99.8</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.7d/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.7d" rel="nofollow" title="v0.99.7d">v0.99.7d</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.7c/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.7c" rel="nofollow" title="v0.99.7c">v0.99.7c</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.7b/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.7b" rel="nofollow" title="v0.99.7b">v0.99.7b</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.7a/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.7a" rel="nofollow" title="v0.99.7a">v0.99.7a</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.7/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.7" rel="nofollow" title="v0.99.7">v0.99.7</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.6/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.6" rel="nofollow" title="v0.99.6">v0.99.6</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.5" rel="nofollow" title="v0.99.5">v0.99.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.4" rel="nofollow" title="v0.99.4">v0.99.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.3" rel="nofollow" title="v0.99.3">v0.99.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.2" rel="nofollow" title="v0.99.2">v0.99.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99.1" rel="nofollow" title="v0.99.1">v0.99.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/v0.99/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.99" rel="nofollow" title="v0.99">v0.99</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/junio-gpg-pub/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="junio-gpg-pub" rel="nofollow" title="junio-gpg-pub">junio-gpg-pub</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.16.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.16.0" rel="nofollow" title="gitgui-0.16.0">gitgui-0.16.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.15.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.15.0" rel="nofollow" title="gitgui-0.15.0">gitgui-0.15.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.14.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.14.0" rel="nofollow" title="gitgui-0.14.0">gitgui-0.14.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.13.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.13.0" rel="nofollow" title="gitgui-0.13.0">gitgui-0.13.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.12.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.12.0" rel="nofollow" title="gitgui-0.12.0">gitgui-0.12.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.11.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.11.0" rel="nofollow" title="gitgui-0.11.0">gitgui-0.11.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.10.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.10.2" rel="nofollow" title="gitgui-0.10.2">gitgui-0.10.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.10.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.10.1" rel="nofollow" title="gitgui-0.10.1">gitgui-0.10.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.10.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.10.0" rel="nofollow" title="gitgui-0.10.0">gitgui-0.10.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.9.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.9.3" rel="nofollow" title="gitgui-0.9.3">gitgui-0.9.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.9.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.9.2" rel="nofollow" title="gitgui-0.9.2">gitgui-0.9.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.9.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.9.1" rel="nofollow" title="gitgui-0.9.1">gitgui-0.9.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.9.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.9.0" rel="nofollow" title="gitgui-0.9.0">gitgui-0.9.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.8.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.8.4" rel="nofollow" title="gitgui-0.8.4">gitgui-0.8.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.8.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.8.3" rel="nofollow" title="gitgui-0.8.3">gitgui-0.8.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.8.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.8.2" rel="nofollow" title="gitgui-0.8.2">gitgui-0.8.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.8.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.8.1" rel="nofollow" title="gitgui-0.8.1">gitgui-0.8.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.8.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.8.0" rel="nofollow" title="gitgui-0.8.0">gitgui-0.8.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.7.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.7.5" rel="nofollow" title="gitgui-0.7.5">gitgui-0.7.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.7.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.7.4" rel="nofollow" title="gitgui-0.7.4">gitgui-0.7.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.7.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.7.3" rel="nofollow" title="gitgui-0.7.3">gitgui-0.7.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.7.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.7.2" rel="nofollow" title="gitgui-0.7.2">gitgui-0.7.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.7.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.7.1" rel="nofollow" title="gitgui-0.7.1">gitgui-0.7.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.7.0-rc1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.7.0-rc1" rel="nofollow" title="gitgui-0.7.0-rc1">gitgui-0.7.0-rc1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.7.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.7.0" rel="nofollow" title="gitgui-0.7.0">gitgui-0.7.0</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.6.5/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.6.5" rel="nofollow" title="gitgui-0.6.5">gitgui-0.6.5</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.6.4/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.6.4" rel="nofollow" title="gitgui-0.6.4">gitgui-0.6.4</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.6.3/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.6.3" rel="nofollow" title="gitgui-0.6.3">gitgui-0.6.3</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.6.2/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.6.2" rel="nofollow" title="gitgui-0.6.2">gitgui-0.6.2</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.6.1/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.6.1" rel="nofollow" title="gitgui-0.6.1">gitgui-0.6.1</a>
              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/git/git/blob/gitgui-0.6.0/contrib/completion/git-prompt.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gitgui-0.6.0" rel="nofollow" title="gitgui-0.6.0">gitgui-0.6.0</a>
              </div> <!-- /.select-menu-item -->

            <div class="select-menu-no-results js-not-filterable">Nothing to show</div>

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/git/git" class="selected tabnav-tab" highlight="repo_source">Files</a></li>
    <li><a href="/git/git/commits/master" class="tabnav-tab" highlight="repo_commits">Commits</a></li>
    <li><a href="/git/git/branches" class="tabnav-tab" highlight="repo_branches" rel="nofollow">Branches <span class="counter ">5</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:e96573b44ca7425164bb88ddb0800192 -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:e96573b44ca7425164bb88ddb0800192 -->


<div id="slider">
    <div class="frame-meta">

      <p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

        <div class="breadcrumb">
          <span class='bold'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/git/git" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">git</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/git/git/tree/master/contrib" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">contrib</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/git/git/tree/master/contrib/completion" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">completion</span></a></span><span class="separator"> / </span><strong class="final-path">git-prompt.sh</strong> <span class="js-zeroclipboard zeroclipboard-button" data-clipboard-text="contrib/completion/git-prompt.sh" data-copied-hint="copied!" title="copy to clipboard"><span class="mini-icon mini-icon-clipboard"></span></span>
        </div>

      <a href="/git/git/find/master" class="js-slide-to" data-hotkey="t" style="display:none">Show File Finder</a>


        
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/57b7956e1591afe1a213a8f3622f3223?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/ienorand" rel="author">ienorand</a></span>
    <time class="js-relative-date" datetime="2013-02-18T15:33:31-08:00" title="2013-02-18 15:33:31">February 18, 2013</time>
    <div class="commit-title">
        <a href="/git/git/commit/31e6a4e6131ae2b7afd6bd0ba7919bf246e6c474" class="message">shell-prompt: clean up nested if-then</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>5</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="gitster" href="/git/git/commits/master/contrib/completion/git-prompt.sh?author=gitster"><img height="20" src="https://secure.gravatar.com/avatar/750680c9dcc7d0be3ca83464a0da49d8?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="ienorand" href="/git/git/commits/master/contrib/completion/git-prompt.sh?author=ienorand"><img height="20" src="https://secure.gravatar.com/avatar/57b7956e1591afe1a213a8f3622f3223?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="leto" href="/git/git/commits/master/contrib/completion/git-prompt.sh?author=leto"><img height="20" src="https://secure.gravatar.com/avatar/fb844ffed6c5a2e69638627e3b721308?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="felipec" href="/git/git/commits/master/contrib/completion/git-prompt.sh?author=felipec"><img height="20" src="https://secure.gravatar.com/avatar/1bb1c1a41b92d9f18e2890c3f6d33970?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="andersk" href="/git/git/commits/master/contrib/completion/git-prompt.sh?author=andersk"><img height="20" src="https://secure.gravatar.com/avatar/15c74c0974c6cc25c194a2737e2d6747?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2>Users on GitHub who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/750680c9dcc7d0be3ca83464a0da49d8?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/gitster">gitster</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/57b7956e1591afe1a213a8f3622f3223?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/ienorand">ienorand</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/fb844ffed6c5a2e69638627e3b721308?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/leto">leto</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/1bb1c1a41b92d9f18e2890c3f6d33970?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/felipec">felipec</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/15c74c0974c6cc25c194a2737e2d6747?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/andersk">andersk</a>
        </li>
      </ul>
    </div>
  </div>


    </div><!-- ./.frame-meta -->

    <div class="frames">
      <div class="frame" data-permalink-url="/git/git/blob/ce432cac30f98b291be609a0fc974042a2156f55/contrib/completion/git-prompt.sh" data-title="git/contrib/completion/git-prompt.sh at master · git/git · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="mini-icon mini-icon-text-file"></b></span>
                <span class="mode" title="File Mode">file</span>
                  <span>400 lines (376 sloc)</span>
                <span>11.969 kb</span>
              </div>
              <div class="actions">
                <div class="button-group">
                      <a class="minibutton js-entice" href=""
                         data-entice="You must be signed in and on a branch to make or propose changes">Edit</a>
                  <a href="/git/git/raw/master/contrib/completion/git-prompt.sh" class="button minibutton " id="raw-url">Raw</a>
                    <a href="/git/git/blame/master/contrib/completion/git-prompt.sh" class="button minibutton ">Blame</a>
                  <a href="/git/git/commits/master/contrib/completion/git-prompt.sh" class="button minibutton " rel="nofollow">History</a>
                </div><!-- /.button-group -->
              </div><!-- /.actions -->

            </div>
                <div class="data type-shell js-blob-data">
      <table cellpadding="0" cellspacing="0" class="lines">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
<span id="L329" rel="#L329">329</span>
<span id="L330" rel="#L330">330</span>
<span id="L331" rel="#L331">331</span>
<span id="L332" rel="#L332">332</span>
<span id="L333" rel="#L333">333</span>
<span id="L334" rel="#L334">334</span>
<span id="L335" rel="#L335">335</span>
<span id="L336" rel="#L336">336</span>
<span id="L337" rel="#L337">337</span>
<span id="L338" rel="#L338">338</span>
<span id="L339" rel="#L339">339</span>
<span id="L340" rel="#L340">340</span>
<span id="L341" rel="#L341">341</span>
<span id="L342" rel="#L342">342</span>
<span id="L343" rel="#L343">343</span>
<span id="L344" rel="#L344">344</span>
<span id="L345" rel="#L345">345</span>
<span id="L346" rel="#L346">346</span>
<span id="L347" rel="#L347">347</span>
<span id="L348" rel="#L348">348</span>
<span id="L349" rel="#L349">349</span>
<span id="L350" rel="#L350">350</span>
<span id="L351" rel="#L351">351</span>
<span id="L352" rel="#L352">352</span>
<span id="L353" rel="#L353">353</span>
<span id="L354" rel="#L354">354</span>
<span id="L355" rel="#L355">355</span>
<span id="L356" rel="#L356">356</span>
<span id="L357" rel="#L357">357</span>
<span id="L358" rel="#L358">358</span>
<span id="L359" rel="#L359">359</span>
<span id="L360" rel="#L360">360</span>
<span id="L361" rel="#L361">361</span>
<span id="L362" rel="#L362">362</span>
<span id="L363" rel="#L363">363</span>
<span id="L364" rel="#L364">364</span>
<span id="L365" rel="#L365">365</span>
<span id="L366" rel="#L366">366</span>
<span id="L367" rel="#L367">367</span>
<span id="L368" rel="#L368">368</span>
<span id="L369" rel="#L369">369</span>
<span id="L370" rel="#L370">370</span>
<span id="L371" rel="#L371">371</span>
<span id="L372" rel="#L372">372</span>
<span id="L373" rel="#L373">373</span>
<span id="L374" rel="#L374">374</span>
<span id="L375" rel="#L375">375</span>
<span id="L376" rel="#L376">376</span>
<span id="L377" rel="#L377">377</span>
<span id="L378" rel="#L378">378</span>
<span id="L379" rel="#L379">379</span>
<span id="L380" rel="#L380">380</span>
<span id="L381" rel="#L381">381</span>
<span id="L382" rel="#L382">382</span>
<span id="L383" rel="#L383">383</span>
<span id="L384" rel="#L384">384</span>
<span id="L385" rel="#L385">385</span>
<span id="L386" rel="#L386">386</span>
<span id="L387" rel="#L387">387</span>
<span id="L388" rel="#L388">388</span>
<span id="L389" rel="#L389">389</span>
<span id="L390" rel="#L390">390</span>
<span id="L391" rel="#L391">391</span>
<span id="L392" rel="#L392">392</span>
<span id="L393" rel="#L393">393</span>
<span id="L394" rel="#L394">394</span>
<span id="L395" rel="#L395">395</span>
<span id="L396" rel="#L396">396</span>
<span id="L397" rel="#L397">397</span>
<span id="L398" rel="#L398">398</span>
<span id="L399" rel="#L399">399</span>
</pre>
          </td>
          <td width="100%">
                  <div class="highlight"><pre><div class='line' id='LC1'><span class="c"># bash/zsh git prompt support</span></div><div class='line' id='LC2'><span class="c">#</span></div><div class='line' id='LC3'><span class="c"># Copyright (C) 2006,2007 Shawn O. Pearce &lt;spearce@spearce.org&gt;</span></div><div class='line' id='LC4'><span class="c"># Distributed under the GNU General Public License, version 2.0.</span></div><div class='line' id='LC5'><span class="c">#</span></div><div class='line' id='LC6'><span class="c"># This script allows you to see the current branch in your prompt.</span></div><div class='line' id='LC7'><span class="c">#</span></div><div class='line' id='LC8'><span class="c"># To enable:</span></div><div class='line' id='LC9'><span class="c">#</span></div><div class='line' id='LC10'><span class="c">#    1) Copy this file to somewhere (e.g. ~/.git-prompt.sh).</span></div><div class='line' id='LC11'><span class="c">#    2) Add the following line to your .bashrc/.zshrc:</span></div><div class='line' id='LC12'><span class="c">#        source ~/.git-prompt.sh</span></div><div class='line' id='LC13'><span class="c">#    3a) Change your PS1 to call __git_ps1 as</span></div><div class='line' id='LC14'><span class="c">#        command-substitution:</span></div><div class='line' id='LC15'><span class="c">#        Bash: PS1=&#39;[\u@\h \W$(__git_ps1 &quot; (%s)&quot;)]\$ &#39;</span></div><div class='line' id='LC16'><span class="c">#        ZSH:  PS1=&#39;[%n@%m %c$(__git_ps1 &quot; (%s)&quot;)]\$ &#39;</span></div><div class='line' id='LC17'><span class="c">#        the optional argument will be used as format string.</span></div><div class='line' id='LC18'><span class="c">#    3b) Alternatively, if you are using bash, __git_ps1 can be</span></div><div class='line' id='LC19'><span class="c">#        used for PROMPT_COMMAND with two parameters, &lt;pre&gt; and</span></div><div class='line' id='LC20'><span class="c">#        &lt;post&gt;, which are strings you would put in $PS1 before</span></div><div class='line' id='LC21'><span class="c">#        and after the status string generated by the git-prompt</span></div><div class='line' id='LC22'><span class="c">#        machinery.  e.g.</span></div><div class='line' id='LC23'><span class="c">#           PROMPT_COMMAND=&#39;__git_ps1 &quot;\u@\h:\w&quot; &quot;\\\$ &quot;&#39;</span></div><div class='line' id='LC24'><span class="c">#        will show username, at-sign, host, colon, cwd, then</span></div><div class='line' id='LC25'><span class="c">#        various status string, followed by dollar and SP, as</span></div><div class='line' id='LC26'><span class="c">#        your prompt.</span></div><div class='line' id='LC27'><span class="c">#        Optionally, you can supply a third argument with a printf</span></div><div class='line' id='LC28'><span class="c">#        format string to finetune the output of the branch status</span></div><div class='line' id='LC29'><span class="c">#</span></div><div class='line' id='LC30'><span class="c"># The argument to __git_ps1 will be displayed only if you are currently</span></div><div class='line' id='LC31'><span class="c"># in a git repository.  The %s token will be the name of the current</span></div><div class='line' id='LC32'><span class="c"># branch.</span></div><div class='line' id='LC33'><span class="c">#</span></div><div class='line' id='LC34'><span class="c"># In addition, if you set GIT_PS1_SHOWDIRTYSTATE to a nonempty value,</span></div><div class='line' id='LC35'><span class="c"># unstaged (*) and staged (+) changes will be shown next to the branch</span></div><div class='line' id='LC36'><span class="c"># name.  You can configure this per-repository with the</span></div><div class='line' id='LC37'><span class="c"># bash.showDirtyState variable, which defaults to true once</span></div><div class='line' id='LC38'><span class="c"># GIT_PS1_SHOWDIRTYSTATE is enabled.</span></div><div class='line' id='LC39'><span class="c">#</span></div><div class='line' id='LC40'><span class="c"># You can also see if currently something is stashed, by setting</span></div><div class='line' id='LC41'><span class="c"># GIT_PS1_SHOWSTASHSTATE to a nonempty value. If something is stashed,</span></div><div class='line' id='LC42'><span class="c"># then a &#39;$&#39; will be shown next to the branch name.</span></div><div class='line' id='LC43'><span class="c">#</span></div><div class='line' id='LC44'><span class="c"># If you would like to see if there&#39;re untracked files, then you can set</span></div><div class='line' id='LC45'><span class="c"># GIT_PS1_SHOWUNTRACKEDFILES to a nonempty value. If there&#39;re untracked</span></div><div class='line' id='LC46'><span class="c"># files, then a &#39;%&#39; will be shown next to the branch name.  You can</span></div><div class='line' id='LC47'><span class="c"># configure this per-repository with the bash.showUntrackedFiles</span></div><div class='line' id='LC48'><span class="c"># variable, which defaults to true once GIT_PS1_SHOWUNTRACKEDFILES is</span></div><div class='line' id='LC49'><span class="c"># enabled.</span></div><div class='line' id='LC50'><span class="c">#</span></div><div class='line' id='LC51'><span class="c"># If you would like to see the difference between HEAD and its upstream,</span></div><div class='line' id='LC52'><span class="c"># set GIT_PS1_SHOWUPSTREAM=&quot;auto&quot;.  A &quot;&lt;&quot; indicates you are behind, &quot;&gt;&quot;</span></div><div class='line' id='LC53'><span class="c"># indicates you are ahead, &quot;&lt;&gt;&quot; indicates you have diverged and &quot;=&quot;</span></div><div class='line' id='LC54'><span class="c"># indicates that there is no difference. You can further control</span></div><div class='line' id='LC55'><span class="c"># behaviour by setting GIT_PS1_SHOWUPSTREAM to a space-separated list</span></div><div class='line' id='LC56'><span class="c"># of values:</span></div><div class='line' id='LC57'><span class="c">#</span></div><div class='line' id='LC58'><span class="c">#     verbose       show number of commits ahead/behind (+/-) upstream</span></div><div class='line' id='LC59'><span class="c">#     legacy        don&#39;t use the &#39;--count&#39; option available in recent</span></div><div class='line' id='LC60'><span class="c">#                   versions of git-rev-list</span></div><div class='line' id='LC61'><span class="c">#     git           always compare HEAD to @{upstream}</span></div><div class='line' id='LC62'><span class="c">#     svn           always compare HEAD to your SVN upstream</span></div><div class='line' id='LC63'><span class="c">#</span></div><div class='line' id='LC64'><span class="c"># By default, __git_ps1 will compare HEAD to your SVN upstream if it can</span></div><div class='line' id='LC65'><span class="c"># find one, or @{upstream} otherwise.  Once you have set</span></div><div class='line' id='LC66'><span class="c"># GIT_PS1_SHOWUPSTREAM, you can override it on a per-repository basis by</span></div><div class='line' id='LC67'><span class="c"># setting the bash.showUpstream config variable.</span></div><div class='line' id='LC68'><span class="c">#</span></div><div class='line' id='LC69'><span class="c"># If you would like to see more information about the identity of</span></div><div class='line' id='LC70'><span class="c"># commits checked out as a detached HEAD, set GIT_PS1_DESCRIBE_STYLE</span></div><div class='line' id='LC71'><span class="c"># to one of these values:</span></div><div class='line' id='LC72'><span class="c">#</span></div><div class='line' id='LC73'><span class="c">#     contains      relative to newer annotated tag (v1.6.3.2~35)</span></div><div class='line' id='LC74'><span class="c">#     branch        relative to newer tag or branch (master~4)</span></div><div class='line' id='LC75'><span class="c">#     describe      relative to older annotated tag (v1.6.3.1-13-gdd42c2f)</span></div><div class='line' id='LC76'><span class="c">#     default       exactly matching tag</span></div><div class='line' id='LC77'><span class="c">#</span></div><div class='line' id='LC78'><span class="c"># If you would like a colored hint about the current dirty state, set</span></div><div class='line' id='LC79'><span class="c"># GIT_PS1_SHOWCOLORHINTS to a nonempty value. The colors are based on</span></div><div class='line' id='LC80'><span class="c"># the colored output of &quot;git status -sb&quot;.</span></div><div class='line' id='LC81'><br/></div><div class='line' id='LC82'><span class="c"># __gitdir accepts 0 or 1 arguments (i.e., location)</span></div><div class='line' id='LC83'><span class="c"># returns location of .git repo</span></div><div class='line' id='LC84'>__gitdir <span class="o">()</span></div><div class='line' id='LC85'><span class="o">{</span></div><div class='line' id='LC86'>	<span class="c"># Note: this function is duplicated in git-completion.bash</span></div><div class='line' id='LC87'>	<span class="c"># When updating it, make sure you update the other one to match.</span></div><div class='line' id='LC88'>	<span class="k">if</span> <span class="o">[</span> -z <span class="s2">&quot;${1-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC89'><span class="k">		if</span> <span class="o">[</span> -n <span class="s2">&quot;${__git_dir-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC90'><span class="k">			</span><span class="nb">echo</span> <span class="s2">&quot;$__git_dir&quot;</span></div><div class='line' id='LC91'>		<span class="k">elif</span> <span class="o">[</span> -n <span class="s2">&quot;${GIT_DIR-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC92'><span class="k">			</span><span class="nb">test</span> -d <span class="s2">&quot;${GIT_DIR-}&quot;</span> <span class="o">||</span> <span class="k">return </span>1</div><div class='line' id='LC93'>			<span class="nb">echo</span> <span class="s2">&quot;$GIT_DIR&quot;</span></div><div class='line' id='LC94'>		<span class="k">elif</span> <span class="o">[</span> -d .git <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC95'><span class="k">			</span><span class="nb">echo</span> .git</div><div class='line' id='LC96'>		<span class="k">else</span></div><div class='line' id='LC97'><span class="k">			</span>git rev-parse --git-dir 2&gt;/dev/null</div><div class='line' id='LC98'>		<span class="k">fi</span></div><div class='line' id='LC99'><span class="k">	elif</span> <span class="o">[</span> -d <span class="s2">&quot;$1/.git&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC100'><span class="k">		</span><span class="nb">echo</span> <span class="s2">&quot;$1/.git&quot;</span></div><div class='line' id='LC101'>	<span class="k">else</span></div><div class='line' id='LC102'><span class="k">		</span><span class="nb">echo</span> <span class="s2">&quot;$1&quot;</span></div><div class='line' id='LC103'>	<span class="k">fi</span></div><div class='line' id='LC104'><span class="o">}</span></div><div class='line' id='LC105'><br/></div><div class='line' id='LC106'><span class="c"># stores the divergence from upstream in $p</span></div><div class='line' id='LC107'><span class="c"># used by GIT_PS1_SHOWUPSTREAM</span></div><div class='line' id='LC108'>__git_ps1_show_upstream <span class="o">()</span></div><div class='line' id='LC109'><span class="o">{</span></div><div class='line' id='LC110'>	<span class="nb">local </span>key value</div><div class='line' id='LC111'>	<span class="nb">local </span>svn_remote svn_url_pattern count n</div><div class='line' id='LC112'>	<span class="nb">local </span><span class="nv">upstream</span><span class="o">=</span>git <span class="nv">legacy</span><span class="o">=</span><span class="s2">&quot;&quot;</span> <span class="nv">verbose</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC113'><br/></div><div class='line' id='LC114'>	<span class="nv">svn_remote</span><span class="o">=()</span></div><div class='line' id='LC115'>	<span class="c"># get some config options from git-config</span></div><div class='line' id='LC116'>	<span class="nb">local </span><span class="nv">output</span><span class="o">=</span><span class="s2">&quot;$(git config -z --get-regexp &#39;^(svn-remote\..*\.url|bash\.showupstream)$&#39; 2&gt;/dev/null | tr &#39;\0\n&#39; &#39;\n &#39;)&quot;</span></div><div class='line' id='LC117'>	<span class="k">while </span><span class="nb">read</span> -r key value; <span class="k">do</span></div><div class='line' id='LC118'><span class="k">		case</span> <span class="s2">&quot;$key&quot;</span> in</div><div class='line' id='LC119'>		bash.showupstream<span class="o">)</span></div><div class='line' id='LC120'>			<span class="nv">GIT_PS1_SHOWUPSTREAM</span><span class="o">=</span><span class="s2">&quot;$value&quot;</span></div><div class='line' id='LC121'>			<span class="k">if</span> <span class="o">[[</span> -z <span class="s2">&quot;${GIT_PS1_SHOWUPSTREAM}&quot;</span> <span class="o">]]</span>; <span class="k">then</span></div><div class='line' id='LC122'><span class="k">				</span><span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC123'>				<span class="k">return</span></div><div class='line' id='LC124'><span class="k">			fi</span></div><div class='line' id='LC125'>			;;</div><div class='line' id='LC126'>		svn-remote.*.url<span class="o">)</span></div><div class='line' id='LC127'>			svn_remote<span class="o">[</span> <span class="k">$((${#</span><span class="nv">svn_remote</span><span class="p">[@]</span><span class="k">}</span> <span class="o">+</span> <span class="m">1</span><span class="k">))</span> <span class="o">]=</span><span class="s2">&quot;$value&quot;</span></div><div class='line' id='LC128'>			svn_url_pattern+<span class="o">=</span><span class="s2">&quot;\\|$value&quot;</span></div><div class='line' id='LC129'>			<span class="nv">upstream</span><span class="o">=</span>svn+git <span class="c"># default upstream is SVN if available, else git</span></div><div class='line' id='LC130'>			;;</div><div class='line' id='LC131'>		<span class="k">esac</span></div><div class='line' id='LC132'><span class="k">	done</span> &lt;&lt;&lt; <span class="s2">&quot;$output&quot;</span></div><div class='line' id='LC133'><br/></div><div class='line' id='LC134'>	<span class="c"># parse configuration values</span></div><div class='line' id='LC135'>	<span class="k">for </span>option in <span class="k">${</span><span class="nv">GIT_PS1_SHOWUPSTREAM</span><span class="k">}</span>; <span class="k">do</span></div><div class='line' id='LC136'><span class="k">		case</span> <span class="s2">&quot;$option&quot;</span> in</div><div class='line' id='LC137'>		git|svn<span class="o">)</span> <span class="nv">upstream</span><span class="o">=</span><span class="s2">&quot;$option&quot;</span> ;;</div><div class='line' id='LC138'>		verbose<span class="o">)</span> <span class="nv">verbose</span><span class="o">=</span>1 ;;</div><div class='line' id='LC139'>		legacy<span class="o">)</span>  <span class="nv">legacy</span><span class="o">=</span>1  ;;</div><div class='line' id='LC140'>		<span class="k">esac</span></div><div class='line' id='LC141'><span class="k">	done</span></div><div class='line' id='LC142'><br/></div><div class='line' id='LC143'>	<span class="c"># Find our upstream</span></div><div class='line' id='LC144'>	<span class="k">case</span> <span class="s2">&quot;$upstream&quot;</span> in</div><div class='line' id='LC145'>	git<span class="o">)</span>    <span class="nv">upstream</span><span class="o">=</span><span class="s2">&quot;@{upstream}&quot;</span> ;;</div><div class='line' id='LC146'>	svn*<span class="o">)</span></div><div class='line' id='LC147'>		<span class="c"># get the upstream from the &quot;git-svn-id: ...&quot; in a commit message</span></div><div class='line' id='LC148'>		<span class="c"># (git-svn uses essentially the same procedure internally)</span></div><div class='line' id='LC149'>		<span class="nb">local </span><span class="nv">svn_upstream</span><span class="o">=(</span><span class="k">$(</span>git log --first-parent -1 <span class="se">\</span></div><div class='line' id='LC150'>					--grep<span class="o">=</span><span class="s2">&quot;^git-svn-id: \(${svn_url_pattern#??}\)&quot;</span> 2&gt;/dev/null<span class="k">)</span><span class="o">)</span></div><div class='line' id='LC151'>		<span class="k">if</span> <span class="o">[[</span> 0 -ne <span class="k">${#</span><span class="nv">svn_upstream</span><span class="p">[@]</span><span class="k">}</span> <span class="o">]]</span>; <span class="k">then</span></div><div class='line' id='LC152'><span class="k">			</span><span class="nv">svn_upstream</span><span class="o">=</span><span class="k">${</span><span class="nv">svn_upstream</span><span class="p">[ </span><span class="k">${#</span><span class="nv">svn_upstream</span><span class="p">[@]</span><span class="k">}</span><span class="p"> - 2 ]</span><span class="k">}</span></div><div class='line' id='LC153'>			<span class="nv">svn_upstream</span><span class="o">=</span><span class="k">${</span><span class="nv">svn_upstream</span><span class="p">%@*</span><span class="k">}</span></div><div class='line' id='LC154'>			<span class="nb">local </span><span class="nv">n_stop</span><span class="o">=</span><span class="s2">&quot;${#svn_remote[@]}&quot;</span></div><div class='line' id='LC155'>			<span class="k">for</span> <span class="o">((</span><span class="nv">n</span><span class="o">=</span>1; n &lt;<span class="o">=</span> n_stop; n++<span class="o">))</span>; <span class="k">do</span></div><div class='line' id='LC156'><span class="k">				</span><span class="nv">svn_upstream</span><span class="o">=</span><span class="k">${</span><span class="nv">svn_upstream</span><span class="p">#</span><span class="k">${</span><span class="nv">svn_remote</span><span class="p">[</span><span class="nv">$n</span><span class="p">]</span><span class="k">}}</span></div><div class='line' id='LC157'>			<span class="k">done</span></div><div class='line' id='LC158'><br/></div><div class='line' id='LC159'><span class="k">			if</span> <span class="o">[[</span> -z <span class="s2">&quot;$svn_upstream&quot;</span> <span class="o">]]</span>; <span class="k">then</span></div><div class='line' id='LC160'>				<span class="c"># default branch name for checkouts with no layout:</span></div><div class='line' id='LC161'>				<span class="nv">upstream</span><span class="o">=</span><span class="k">${</span><span class="nv">GIT_SVN_ID</span><span class="k">:-</span><span class="nv">git</span><span class="p">-svn</span><span class="k">}</span></div><div class='line' id='LC162'>			<span class="k">else</span></div><div class='line' id='LC163'><span class="k">				</span><span class="nv">upstream</span><span class="o">=</span><span class="k">${</span><span class="nv">svn_upstream</span><span class="p">#/</span><span class="k">}</span></div><div class='line' id='LC164'>			<span class="k">fi</span></div><div class='line' id='LC165'><span class="k">		elif</span> <span class="o">[[</span> <span class="s2">&quot;svn+git&quot;</span> <span class="o">=</span> <span class="s2">&quot;$upstream&quot;</span> <span class="o">]]</span>; <span class="k">then</span></div><div class='line' id='LC166'><span class="k">			</span><span class="nv">upstream</span><span class="o">=</span><span class="s2">&quot;@{upstream}&quot;</span></div><div class='line' id='LC167'>		<span class="k">fi</span></div><div class='line' id='LC168'>		;;</div><div class='line' id='LC169'>	<span class="k">esac</span></div><div class='line' id='LC170'><br/></div><div class='line' id='LC171'>	<span class="c"># Find how many commits we are ahead/behind our upstream</span></div><div class='line' id='LC172'>	<span class="k">if</span> <span class="o">[[</span> -z <span class="s2">&quot;$legacy&quot;</span> <span class="o">]]</span>; <span class="k">then</span></div><div class='line' id='LC173'><span class="k">		</span><span class="nv">count</span><span class="o">=</span><span class="s2">&quot;$(git rev-list --count --left-right \</span></div><div class='line' id='LC174'><span class="s2">				&quot;</span><span class="nv">$upstream</span><span class="s2">&quot;...HEAD 2&gt;/dev/null)&quot;</span></div><div class='line' id='LC175'>	<span class="k">else</span></div><div class='line' id='LC176'>		<span class="c"># produce equivalent output to --count for older versions of git</span></div><div class='line' id='LC177'>		<span class="nb">local </span>commits</div><div class='line' id='LC178'>		<span class="k">if </span><span class="nv">commits</span><span class="o">=</span><span class="s2">&quot;$(git rev-list --left-right &quot;</span><span class="nv">$upstream</span><span class="s2">&quot;...HEAD 2&gt;/dev/null)&quot;</span></div><div class='line' id='LC179'>		<span class="k">then</span></div><div class='line' id='LC180'><span class="k">			</span><span class="nb">local </span>commit <span class="nv">behind</span><span class="o">=</span>0 <span class="nv">ahead</span><span class="o">=</span>0</div><div class='line' id='LC181'>			<span class="k">for </span>commit in <span class="nv">$commits</span></div><div class='line' id='LC182'>			<span class="k">do</span></div><div class='line' id='LC183'><span class="k">				case</span> <span class="s2">&quot;$commit&quot;</span> in</div><div class='line' id='LC184'>				<span class="s2">&quot;&lt;&quot;</span>*<span class="o">)</span> <span class="o">((</span>behind++<span class="o">))</span> ;;</div><div class='line' id='LC185'>				*<span class="o">)</span>    <span class="o">((</span>ahead++<span class="o">))</span>  ;;</div><div class='line' id='LC186'>				<span class="k">esac</span></div><div class='line' id='LC187'><span class="k">			done</span></div><div class='line' id='LC188'><span class="k">			</span><span class="nv">count</span><span class="o">=</span><span class="s2">&quot;$behind	$ahead&quot;</span></div><div class='line' id='LC189'>		<span class="k">else</span></div><div class='line' id='LC190'><span class="k">			</span><span class="nv">count</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC191'>		<span class="k">fi</span></div><div class='line' id='LC192'><span class="k">	fi</span></div><div class='line' id='LC193'><br/></div><div class='line' id='LC194'>	<span class="c"># calculate the result</span></div><div class='line' id='LC195'>	<span class="k">if</span> <span class="o">[[</span> -z <span class="s2">&quot;$verbose&quot;</span> <span class="o">]]</span>; <span class="k">then</span></div><div class='line' id='LC196'><span class="k">		case</span> <span class="s2">&quot;$count&quot;</span> in</div><div class='line' id='LC197'>		<span class="s2">&quot;&quot;</span><span class="o">)</span> <span class="c"># no upstream</span></div><div class='line' id='LC198'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&quot;</span> ;;</div><div class='line' id='LC199'>		<span class="s2">&quot;0	0&quot;</span><span class="o">)</span> <span class="c"># equal to upstream</span></div><div class='line' id='LC200'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot;=&quot;</span> ;;</div><div class='line' id='LC201'>		<span class="s2">&quot;0	&quot;</span>*<span class="o">)</span> <span class="c"># ahead of upstream</span></div><div class='line' id='LC202'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&gt;&quot;</span> ;;</div><div class='line' id='LC203'>		*<span class="s2">&quot;	0&quot;</span><span class="o">)</span> <span class="c"># behind upstream</span></div><div class='line' id='LC204'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&lt;&quot;</span> ;;</div><div class='line' id='LC205'>		*<span class="o">)</span>	    <span class="c"># diverged from upstream</span></div><div class='line' id='LC206'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&lt;&gt;&quot;</span> ;;</div><div class='line' id='LC207'>		<span class="k">esac</span></div><div class='line' id='LC208'><span class="k">	else</span></div><div class='line' id='LC209'><span class="k">		case</span> <span class="s2">&quot;$count&quot;</span> in</div><div class='line' id='LC210'>		<span class="s2">&quot;&quot;</span><span class="o">)</span> <span class="c"># no upstream</span></div><div class='line' id='LC211'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&quot;</span> ;;</div><div class='line' id='LC212'>		<span class="s2">&quot;0	0&quot;</span><span class="o">)</span> <span class="c"># equal to upstream</span></div><div class='line' id='LC213'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot; u=&quot;</span> ;;</div><div class='line' id='LC214'>		<span class="s2">&quot;0	&quot;</span>*<span class="o">)</span> <span class="c"># ahead of upstream</span></div><div class='line' id='LC215'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot; u+${count#0	}&quot;</span> ;;</div><div class='line' id='LC216'>		*<span class="s2">&quot;	0&quot;</span><span class="o">)</span> <span class="c"># behind upstream</span></div><div class='line' id='LC217'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot; u-${count%	0}&quot;</span> ;;</div><div class='line' id='LC218'>		*<span class="o">)</span>	    <span class="c"># diverged from upstream</span></div><div class='line' id='LC219'>			<span class="nv">p</span><span class="o">=</span><span class="s2">&quot; u+${count#*	}-${count%	*}&quot;</span> ;;</div><div class='line' id='LC220'>		<span class="k">esac</span></div><div class='line' id='LC221'><span class="k">	fi</span></div><div class='line' id='LC222'><br/></div><div class='line' id='LC223'><span class="o">}</span></div><div class='line' id='LC224'><br/></div><div class='line' id='LC225'><br/></div><div class='line' id='LC226'><span class="c"># __git_ps1 accepts 0 or 1 arguments (i.e., format string)</span></div><div class='line' id='LC227'><span class="c"># when called from PS1 using command substitution</span></div><div class='line' id='LC228'><span class="c"># in this mode it prints text to add to bash PS1 prompt (includes branch name)</span></div><div class='line' id='LC229'><span class="c">#</span></div><div class='line' id='LC230'><span class="c"># __git_ps1 requires 2 or 3 arguments when called from PROMPT_COMMAND (pc)</span></div><div class='line' id='LC231'><span class="c"># in that case it _sets_ PS1. The arguments are parts of a PS1 string.</span></div><div class='line' id='LC232'><span class="c"># when two arguments are given, the first is prepended and the second appended</span></div><div class='line' id='LC233'><span class="c"># to the state string when assigned to PS1.</span></div><div class='line' id='LC234'><span class="c"># The optional third parameter will be used as printf format string to further</span></div><div class='line' id='LC235'><span class="c"># customize the output of the git-status string.</span></div><div class='line' id='LC236'><span class="c"># In this mode you can request colored hints using GIT_PS1_SHOWCOLORHINTS=true</span></div><div class='line' id='LC237'>__git_ps1 <span class="o">()</span></div><div class='line' id='LC238'><span class="o">{</span></div><div class='line' id='LC239'>	<span class="nb">local </span><span class="nv">pcmode</span><span class="o">=</span>no</div><div class='line' id='LC240'>	<span class="nb">local </span><span class="nv">detached</span><span class="o">=</span>no</div><div class='line' id='LC241'>	<span class="nb">local </span><span class="nv">ps1pc_start</span><span class="o">=</span><span class="s1">&#39;\u@\h:\w &#39;</span></div><div class='line' id='LC242'>	<span class="nb">local </span><span class="nv">ps1pc_end</span><span class="o">=</span><span class="s1">&#39;\$ &#39;</span></div><div class='line' id='LC243'>	<span class="nb">local </span><span class="nv">printf_format</span><span class="o">=</span><span class="s1">&#39; (%s)&#39;</span></div><div class='line' id='LC244'><br/></div><div class='line' id='LC245'>	<span class="k">case</span> <span class="s2">&quot;$#&quot;</span> in</div><div class='line' id='LC246'>		2|3<span class="o">)</span>	<span class="nv">pcmode</span><span class="o">=</span>yes</div><div class='line' id='LC247'>			<span class="nv">ps1pc_start</span><span class="o">=</span><span class="s2">&quot;$1&quot;</span></div><div class='line' id='LC248'>			<span class="nv">ps1pc_end</span><span class="o">=</span><span class="s2">&quot;$2&quot;</span></div><div class='line' id='LC249'>			<span class="nv">printf_format</span><span class="o">=</span><span class="s2">&quot;${3:-$printf_format}&quot;</span></div><div class='line' id='LC250'>		;;</div><div class='line' id='LC251'>		0|1<span class="o">)</span>	<span class="nv">printf_format</span><span class="o">=</span><span class="s2">&quot;${1:-$printf_format}&quot;</span></div><div class='line' id='LC252'>		;;</div><div class='line' id='LC253'>		*<span class="o">)</span>	<span class="k">return</span></div><div class='line' id='LC254'>		;;</div><div class='line' id='LC255'>	<span class="k">esac</span></div><div class='line' id='LC256'><br/></div><div class='line' id='LC257'><span class="k">	</span><span class="nb">local </span><span class="nv">g</span><span class="o">=</span><span class="s2">&quot;$(__gitdir)&quot;</span></div><div class='line' id='LC258'>	<span class="k">if</span> <span class="o">[</span> -z <span class="s2">&quot;$g&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC259'><span class="k">		if</span> <span class="o">[</span> <span class="nv">$pcmode</span> <span class="o">=</span> yes <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC260'>			<span class="c">#In PC mode PS1 always needs to be set</span></div><div class='line' id='LC261'>			<span class="nv">PS1</span><span class="o">=</span><span class="s2">&quot;$ps1pc_start$ps1pc_end&quot;</span></div><div class='line' id='LC262'>		<span class="k">fi</span></div><div class='line' id='LC263'><span class="k">	else</span></div><div class='line' id='LC264'><span class="k">		</span><span class="nb">local </span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC265'>		<span class="nb">local </span><span class="nv">b</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC266'>		<span class="k">if</span> <span class="o">[</span> -f <span class="s2">&quot;$g/rebase-merge/interactive&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC267'><span class="k">			</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|REBASE-i&quot;</span></div><div class='line' id='LC268'>			<span class="nv">b</span><span class="o">=</span><span class="s2">&quot;$(cat &quot;</span><span class="nv">$g</span>/rebase-merge/head-name<span class="s2">&quot;)&quot;</span></div><div class='line' id='LC269'>		<span class="k">elif</span> <span class="o">[</span> -d <span class="s2">&quot;$g/rebase-merge&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC270'><span class="k">			</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|REBASE-m&quot;</span></div><div class='line' id='LC271'>			<span class="nv">b</span><span class="o">=</span><span class="s2">&quot;$(cat &quot;</span><span class="nv">$g</span>/rebase-merge/head-name<span class="s2">&quot;)&quot;</span></div><div class='line' id='LC272'>		<span class="k">else</span></div><div class='line' id='LC273'><span class="k">			if</span> <span class="o">[</span> -d <span class="s2">&quot;$g/rebase-apply&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC274'><span class="k">				if</span> <span class="o">[</span> -f <span class="s2">&quot;$g/rebase-apply/rebasing&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC275'><span class="k">					</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|REBASE&quot;</span></div><div class='line' id='LC276'>				<span class="k">elif</span> <span class="o">[</span> -f <span class="s2">&quot;$g/rebase-apply/applying&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC277'><span class="k">					</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|AM&quot;</span></div><div class='line' id='LC278'>				<span class="k">else</span></div><div class='line' id='LC279'><span class="k">					</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|AM/REBASE&quot;</span></div><div class='line' id='LC280'>				<span class="k">fi</span></div><div class='line' id='LC281'><span class="k">			elif</span> <span class="o">[</span> -f <span class="s2">&quot;$g/MERGE_HEAD&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC282'><span class="k">				</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|MERGING&quot;</span></div><div class='line' id='LC283'>			<span class="k">elif</span> <span class="o">[</span> -f <span class="s2">&quot;$g/CHERRY_PICK_HEAD&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC284'><span class="k">				</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|CHERRY-PICKING&quot;</span></div><div class='line' id='LC285'>			<span class="k">elif</span> <span class="o">[</span> -f <span class="s2">&quot;$g/BISECT_LOG&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC286'><span class="k">				</span><span class="nv">r</span><span class="o">=</span><span class="s2">&quot;|BISECTING&quot;</span></div><div class='line' id='LC287'>			<span class="k">fi</span></div><div class='line' id='LC288'><br/></div><div class='line' id='LC289'><span class="k">			</span><span class="nv">b</span><span class="o">=</span><span class="s2">&quot;$(git symbolic-ref HEAD 2&gt;/dev/null)&quot;</span> <span class="o">||</span> <span class="o">{</span></div><div class='line' id='LC290'>				<span class="nv">detached</span><span class="o">=</span>yes</div><div class='line' id='LC291'>				<span class="nv">b</span><span class="o">=</span><span class="s2">&quot;$(</span></div><div class='line' id='LC292'><span class="s2">				case &quot;</span><span class="k">${</span><span class="nv">GIT_PS1_DESCRIBE_STYLE</span><span class="p">-</span><span class="k">}</span><span class="s2">&quot; in</span></div><div class='line' id='LC293'><span class="s2">				(contains)</span></div><div class='line' id='LC294'><span class="s2">					git describe --contains HEAD ;;</span></div><div class='line' id='LC295'><span class="s2">				(branch)</span></div><div class='line' id='LC296'><span class="s2">					git describe --contains --all HEAD ;;</span></div><div class='line' id='LC297'><span class="s2">				(describe)</span></div><div class='line' id='LC298'><span class="s2">					git describe HEAD ;;</span></div><div class='line' id='LC299'><span class="s2">				(* | default)</span></div><div class='line' id='LC300'><span class="s2">					git describe --tags --exact-match HEAD ;;</span></div><div class='line' id='LC301'><span class="s2">				esac 2&gt;/dev/null)&quot;</span> <span class="o">||</span></div><div class='line' id='LC302'><br/></div><div class='line' id='LC303'>				<span class="nv">b</span><span class="o">=</span><span class="s2">&quot;$(cut -c1-7 &quot;</span><span class="nv">$g</span>/HEAD<span class="s2">&quot; 2&gt;/dev/null)...&quot;</span> <span class="o">||</span></div><div class='line' id='LC304'>				<span class="nv">b</span><span class="o">=</span><span class="s2">&quot;unknown&quot;</span></div><div class='line' id='LC305'>				<span class="nv">b</span><span class="o">=</span><span class="s2">&quot;($b)&quot;</span></div><div class='line' id='LC306'>			<span class="o">}</span></div><div class='line' id='LC307'>		<span class="k">fi</span></div><div class='line' id='LC308'><br/></div><div class='line' id='LC309'><span class="k">		</span><span class="nb">local </span><span class="nv">w</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC310'>		<span class="nb">local </span><span class="nv">i</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC311'>		<span class="nb">local </span><span class="nv">s</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC312'>		<span class="nb">local </span><span class="nv">u</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC313'>		<span class="nb">local </span><span class="nv">c</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC314'>		<span class="nb">local </span><span class="nv">p</span><span class="o">=</span><span class="s2">&quot;&quot;</span></div><div class='line' id='LC315'><br/></div><div class='line' id='LC316'>		<span class="k">if</span> <span class="o">[</span> <span class="s2">&quot;true&quot;</span> <span class="o">=</span> <span class="s2">&quot;$(git rev-parse --is-inside-git-dir 2&gt;/dev/null)&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC317'><span class="k">			if</span> <span class="o">[</span> <span class="s2">&quot;true&quot;</span> <span class="o">=</span> <span class="s2">&quot;$(git rev-parse --is-bare-repository 2&gt;/dev/null)&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC318'><span class="k">				</span><span class="nv">c</span><span class="o">=</span><span class="s2">&quot;BARE:&quot;</span></div><div class='line' id='LC319'>			<span class="k">else</span></div><div class='line' id='LC320'><span class="k">				</span><span class="nv">b</span><span class="o">=</span><span class="s2">&quot;GIT_DIR!&quot;</span></div><div class='line' id='LC321'>			<span class="k">fi</span></div><div class='line' id='LC322'><span class="k">		elif</span> <span class="o">[</span> <span class="s2">&quot;true&quot;</span> <span class="o">=</span> <span class="s2">&quot;$(git rev-parse --is-inside-work-tree 2&gt;/dev/null)&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC323'><span class="k">			if</span> <span class="o">[</span> -n <span class="s2">&quot;${GIT_PS1_SHOWDIRTYSTATE-}&quot;</span> <span class="o">]</span> <span class="o">&amp;&amp;</span></div><div class='line' id='LC324'>			   <span class="o">[</span> <span class="s2">&quot;$(git config --bool bash.showDirtyState)&quot;</span> !<span class="o">=</span> <span class="s2">&quot;false&quot;</span> <span class="o">]</span></div><div class='line' id='LC325'>			<span class="k">then</span></div><div class='line' id='LC326'><span class="k">				</span>git diff --no-ext-diff --quiet --exit-code <span class="o">||</span> <span class="nv">w</span><span class="o">=</span><span class="s2">&quot;*&quot;</span></div><div class='line' id='LC327'>				<span class="k">if </span>git rev-parse --quiet --verify HEAD &gt;/dev/null; <span class="k">then</span></div><div class='line' id='LC328'><span class="k">					</span>git diff-index --cached --quiet HEAD -- <span class="o">||</span> <span class="nv">i</span><span class="o">=</span><span class="s2">&quot;+&quot;</span></div><div class='line' id='LC329'>				<span class="k">else</span></div><div class='line' id='LC330'><span class="k">					</span><span class="nv">i</span><span class="o">=</span><span class="s2">&quot;#&quot;</span></div><div class='line' id='LC331'>				<span class="k">fi</span></div><div class='line' id='LC332'><span class="k">			fi</span></div><div class='line' id='LC333'><span class="k">			if</span> <span class="o">[</span> -n <span class="s2">&quot;${GIT_PS1_SHOWSTASHSTATE-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC334'><span class="k">				</span>git rev-parse --verify refs/stash &gt;/dev/null 2&gt;&amp;1 <span class="o">&amp;&amp;</span> <span class="nv">s</span><span class="o">=</span><span class="s2">&quot;$&quot;</span></div><div class='line' id='LC335'>			<span class="k">fi</span></div><div class='line' id='LC336'><br/></div><div class='line' id='LC337'><span class="k">			if</span> <span class="o">[</span> -n <span class="s2">&quot;${GIT_PS1_SHOWUNTRACKEDFILES-}&quot;</span> <span class="o">]</span> <span class="o">&amp;&amp;</span></div><div class='line' id='LC338'>			   <span class="o">[</span> <span class="s2">&quot;$(git config --bool bash.showUntrackedFiles)&quot;</span> !<span class="o">=</span> <span class="s2">&quot;false&quot;</span> <span class="o">]</span> <span class="o">&amp;&amp;</span></div><div class='line' id='LC339'>			   <span class="o">[</span> -n <span class="s2">&quot;$(git ls-files --others --exclude-standard)&quot;</span> <span class="o">]</span></div><div class='line' id='LC340'>			<span class="k">then</span></div><div class='line' id='LC341'><span class="k">				</span><span class="nv">u</span><span class="o">=</span><span class="s2">&quot;%&quot;</span></div><div class='line' id='LC342'>			<span class="k">fi</span></div><div class='line' id='LC343'><br/></div><div class='line' id='LC344'><span class="k">			if</span> <span class="o">[</span> -n <span class="s2">&quot;${GIT_PS1_SHOWUPSTREAM-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC345'><span class="k">				</span>__git_ps1_show_upstream</div><div class='line' id='LC346'>			<span class="k">fi</span></div><div class='line' id='LC347'><span class="k">		fi</span></div><div class='line' id='LC348'><br/></div><div class='line' id='LC349'><span class="k">		</span><span class="nb">local </span><span class="nv">f</span><span class="o">=</span><span class="s2">&quot;$w$i$s$u&quot;</span></div><div class='line' id='LC350'>		<span class="k">if</span> <span class="o">[</span> <span class="nv">$pcmode</span> <span class="o">=</span> yes <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC351'><span class="k">			</span><span class="nb">local </span><span class="nv">gitstring</span><span class="o">=</span></div><div class='line' id='LC352'>			<span class="k">if</span> <span class="o">[</span> -n <span class="s2">&quot;${GIT_PS1_SHOWCOLORHINTS-}&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC353'><span class="k">				</span><span class="nb">local </span><span class="nv">c_red</span><span class="o">=</span><span class="s1">&#39;\e[31m&#39;</span></div><div class='line' id='LC354'>				<span class="nb">local </span><span class="nv">c_green</span><span class="o">=</span><span class="s1">&#39;\e[32m&#39;</span></div><div class='line' id='LC355'>				<span class="nb">local </span><span class="nv">c_lblue</span><span class="o">=</span><span class="s1">&#39;\e[1;34m&#39;</span></div><div class='line' id='LC356'>				<span class="nb">local </span><span class="nv">c_clear</span><span class="o">=</span><span class="s1">&#39;\e[0m&#39;</span></div><div class='line' id='LC357'>				<span class="nb">local </span><span class="nv">bad_color</span><span class="o">=</span><span class="nv">$c_red</span></div><div class='line' id='LC358'>				<span class="nb">local </span><span class="nv">ok_color</span><span class="o">=</span><span class="nv">$c_green</span></div><div class='line' id='LC359'>				<span class="nb">local </span><span class="nv">branch_color</span><span class="o">=</span><span class="s2">&quot;$c_clear&quot;</span></div><div class='line' id='LC360'>				<span class="nb">local </span><span class="nv">flags_color</span><span class="o">=</span><span class="s2">&quot;$c_lblue&quot;</span></div><div class='line' id='LC361'>				<span class="nb">local </span><span class="nv">branchstring</span><span class="o">=</span><span class="s2">&quot;$c${b##refs/heads/}&quot;</span></div><div class='line' id='LC362'><br/></div><div class='line' id='LC363'>				<span class="k">if</span> <span class="o">[</span> <span class="nv">$detached</span> <span class="o">=</span> no <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC364'><span class="k">					</span><span class="nv">branch_color</span><span class="o">=</span><span class="s2">&quot;$ok_color&quot;</span></div><div class='line' id='LC365'>				<span class="k">else</span></div><div class='line' id='LC366'><span class="k">					</span><span class="nv">branch_color</span><span class="o">=</span><span class="s2">&quot;$bad_color&quot;</span></div><div class='line' id='LC367'>				<span class="k">fi</span></div><div class='line' id='LC368'><br/></div><div class='line' id='LC369'>				<span class="c"># Setting gitstring directly with \[ and \] around colors</span></div><div class='line' id='LC370'>				<span class="c"># is necessary to prevent wrapping issues!</span></div><div class='line' id='LC371'>				<span class="nv">gitstring</span><span class="o">=</span><span class="s2">&quot;\[$branch_color\]$branchstring\[$c_clear\]&quot;</span></div><div class='line' id='LC372'><br/></div><div class='line' id='LC373'>				<span class="k">if</span> <span class="o">[</span> -n <span class="s2">&quot;$w$i$s$u$r$p&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC374'><span class="k">					</span><span class="nv">gitstring</span><span class="o">=</span><span class="s2">&quot;$gitstring &quot;</span></div><div class='line' id='LC375'>				<span class="k">fi</span></div><div class='line' id='LC376'><span class="k">				if</span> <span class="o">[</span> <span class="s2">&quot;$w&quot;</span> <span class="o">=</span> <span class="s2">&quot;*&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC377'><span class="k">					</span><span class="nv">gitstring</span><span class="o">=</span><span class="s2">&quot;$gitstring\[$bad_color\]$w&quot;</span></div><div class='line' id='LC378'>				<span class="k">fi</span></div><div class='line' id='LC379'><span class="k">				if</span> <span class="o">[</span> -n <span class="s2">&quot;$i&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC380'><span class="k">					</span><span class="nv">gitstring</span><span class="o">=</span><span class="s2">&quot;$gitstring\[$ok_color\]$i&quot;</span></div><div class='line' id='LC381'>				<span class="k">fi</span></div><div class='line' id='LC382'><span class="k">				if</span> <span class="o">[</span> -n <span class="s2">&quot;$s&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC383'><span class="k">					</span><span class="nv">gitstring</span><span class="o">=</span><span class="s2">&quot;$gitstring\[$flags_color\]$s&quot;</span></div><div class='line' id='LC384'>				<span class="k">fi</span></div><div class='line' id='LC385'><span class="k">				if</span> <span class="o">[</span> -n <span class="s2">&quot;$u&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC386'><span class="k">					</span><span class="nv">gitstring</span><span class="o">=</span><span class="s2">&quot;$gitstring\[$bad_color\]$u&quot;</span></div><div class='line' id='LC387'>				<span class="k">fi</span></div><div class='line' id='LC388'><span class="k">				</span><span class="nv">gitstring</span><span class="o">=</span><span class="s2">&quot;$gitstring\[$c_clear\]$r$p&quot;</span></div><div class='line' id='LC389'>			<span class="k">else</span></div><div class='line' id='LC390'><span class="k">				</span><span class="nv">gitstring</span><span class="o">=</span><span class="s2">&quot;$c${b##refs/heads/}${f:+ $f}$r$p&quot;</span></div><div class='line' id='LC391'>			<span class="k">fi</span></div><div class='line' id='LC392'><span class="k">			</span><span class="nv">gitstring</span><span class="o">=</span><span class="k">$(</span><span class="nb">printf</span> -- <span class="s2">&quot;$printf_format&quot;</span> <span class="s2">&quot;$gitstring&quot;</span><span class="k">)</span></div><div class='line' id='LC393'>			<span class="nv">PS1</span><span class="o">=</span><span class="s2">&quot;$ps1pc_start$gitstring$ps1pc_end&quot;</span></div><div class='line' id='LC394'>		<span class="k">else</span></div><div class='line' id='LC395'>			<span class="c"># NO color option unless in PROMPT_COMMAND mode</span></div><div class='line' id='LC396'>			<span class="nb">printf</span> -- <span class="s2">&quot;$printf_format&quot;</span> <span class="s2">&quot;$c${b##refs/heads/}${f:+ $f}$r$p&quot;</span></div><div class='line' id='LC397'>		<span class="k">fi</span></div><div class='line' id='LC398'><span class="k">	fi</span></div><div class='line' id='LC399'><span class="o">}</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>

        <a href="#jump-to-line" rel="facebox" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
        <div id="jump-to-line" style="display:none">
          <h2>Jump to Line</h2>
          <form accept-charset="UTF-8" class="js-jump-to-line-form">
            <input class="textfield js-jump-to-line-field" type="text">
            <div class="full-button">
              <button type="submit" class="button">Go</button>
            </div>
          </form>
        </div>

      </div>
    </div>
</div>

<div id="js-frame-loading-template" class="frame frame-loading large-loading-area" style="display:none;">
  <img class="js-frame-loading-spinner" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif?1347543527" height="64" width="64">
</div>


        </div>
      </div>
      <div class="context-overlay"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer">
  <div class="container clearfix">

      <dl class="footer_nav">
        <dt>GitHub</dt>
        <dd><a href="https://github.com/about">About us</a></dd>
        <dd><a href="https://github.com/blog">Blog</a></dd>
        <dd><a href="https://github.com/contact">Contact &amp; support</a></dd>
        <dd><a href="http://enterprise.github.com/">GitHub Enterprise</a></dd>
        <dd><a href="http://status.github.com/">Site status</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Applications</dt>
        <dd><a href="http://mac.github.com/">GitHub for Mac</a></dd>
        <dd><a href="http://windows.github.com/">GitHub for Windows</a></dd>
        <dd><a href="http://eclipse.github.com/">GitHub for Eclipse</a></dd>
        <dd><a href="http://mobile.github.com/">GitHub mobile apps</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Services</dt>
        <dd><a href="http://get.gaug.es/">Gauges: Web analytics</a></dd>
        <dd><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></dd>
        <dd><a href="https://gist.github.com">Gist: Code snippets</a></dd>
        <dd><a href="http://jobs.github.com/">Job board</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Documentation</dt>
        <dd><a href="http://help.github.com/">GitHub Help</a></dd>
        <dd><a href="http://developer.github.com/">Developer API</a></dd>
        <dd><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></dd>
        <dd><a href="http://pages.github.com/">GitHub Pages</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>More</dt>
        <dd><a href="http://training.github.com/">Training</a></dd>
        <dd><a href="https://github.com/edu">Students &amp; teachers</a></dd>
        <dd><a href="http://shop.github.com">The Shop</a></dd>
        <dd><a href="/plans">Plans &amp; pricing</a></dd>
        <dd><a href="http://octodex.github.com/">The Octodex</a></dd>
      </dl>

      <hr class="footer-divider">


    <p class="right">&copy; 2013 <span title="0.08816s from fe2.rs.github.com">GitHub</span>, Inc. All rights reserved.</p>
    <a class="left" href="https://github.com/">
      <span class="mega-icon mega-icon-invertocat"></span>
    </a>
    <ul id="legal">
        <li><a href="https://github.com/site/terms">Terms of Service</a></li>
        <li><a href="https://github.com/site/privacy">Privacy</a></li>
        <li><a href="https://github.com/security">Security</a></li>
    </ul>

  </div><!-- /.container -->

</div><!-- /.#footer -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/git/git/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-icon mega-icon-normalscreen"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="mini-icon mini-icon-brightness"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="mini-icon mini-icon-exclamation"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="mini-icon mini-icon-remove-close ajax-error-dismiss"></a>
    </div>

    
    
    <span id='server_response_time' data-time='0.08860' data-host='fe2'></span>
    
  </body>
</html>

