'<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="format-detection" content="telephone=no" />
  <meta name="msapplication-tap-highlight" content="no" />
  <!-- WARNING: for iOS 7, remove the width=device-width and height=device-height attributes. See https://issues.apache.org/jira/browse/CB-4323 -->
  <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height, target-densitydpi=device-dpi" />
  <!-- STYLES -->
  <link rel="stylesheet" type="text/css" href="css/jquery.mobile-1.4.5.css">
  <link rel="stylesheet" type="text/css" href="css/index.css" />
  <link rel="stylesheet" type="text/css" href="css/jquery.mobile.custom.css" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <link rel="stylesheet" type="text/css" href="css/fonts.css" />
  <!-- SCRIPTS -->
  <script src="js/jquery-1.10.2.min.js"></script>
  <script src="js/jquery.mobile-1.4.5.js"></script>
  <script src="js/jquery.mask.min.js"></script>
  <script src="js/iscroll.js"></script>
  <title>Pillas</title>
</head>
<body>
  <div id="loading" class="pillas-bg" data-role="page">

    <div data-role="content" class="ui-content text-center">
        <h1 class="splash-title">Bem-vindo ao,</h1>
        <!-- <img src="img/icon-pillas.png" alt=""> -->
        <div class="splash-logo"></div>
        <div class="syncode-btn uppercase">Desenvolvido por Syncode</div>
    </div><!-- /content -->

  </div><!-- /page -->


  <script type="text/javascript" src="cordova.js"></script>
  <script type="text/javascript" src="js/index.js"></script>
  <script type="text/javascript">
    app.initialize();
  </script>
  
  <script>
    $(document).on("pagecontainershow", function(){
      setTimeout(function() {
        $(".ui-content").css("top", ($.mobile.getScreenHeight() - $(".ui-content").outerHeight())/2 + "px");
      }, 0);
    });
  </script>

</body>
</html>