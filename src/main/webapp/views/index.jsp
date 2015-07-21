<html lang="pt-br" ng-app="testeAngular">
<head>
  <meta charset="utf-8" />
  <meta name="format-detection" content="telephone=no" />
  <meta name="msapplication-tap-highlight" content="no" />
  <!-- WARNING: for iOS 7, remove the width=device-width and height=device-height attributes. See https://issues.apache.org/jira/browse/CB-4323 -->
  <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height, target-densitydpi=device-dpi" />
  <script src="../resources/js/lib/angular.min.js"></script>
  <script src="../resources/js/lib/angular-animate.min.js"></script>
  <script src="../resources/js/main.js"></script>
  <script src="../resources/js/controllers/main-controller.js"></script>
  <script src="../resources/js/directives/minhas-diretivas.js"></script>
  
  <!-- STYLES -->
  <link rel="stylesheet" type="text/css" href="../resources/css/jquery.mobile-1.4.5.css">
  <link rel="stylesheet" type="text/css" href="../resources/css/index.css" />
  <link rel="stylesheet" type="text/css" href="../resources/css/jquery.mobile.custom.css" />
  <link rel="stylesheet" type="text/css" href="../resources/css/style.css" />
  <link rel="stylesheet" type="text/css" href="../resources/css/fonts.css" />
  <!-- SCRIPTS -->
  <script src="http://maps.google.com/maps/api/js?sensor=true" type="text/javascript"></script>
  <script type="text/javascript" src="../resources/js/lib/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="../resources/js/lib/jquery.mobile-1.4.5.js"></script>
  <script type="text/javascript" src="../resources/js/lib/jquery.mask.min.js"></script>
  <script type="text/javascript" src="../resources/js/lib/jquery.ui.maps.js"></script>
  <script type="text/javascript" src="../resources/js/lib/pillas.js"></script>
  
  <title>Pillas</title>
</head>
<body ng-controller="MainController">
  <div id="home" data-role="page">

    <div data-role="header" data-position="fixed" data-tap-toggle="false" class="header">
      <a href="profile.jsp" class="ui-btn" data-transition="slide">
        <img src="../resources/img/avatar.png" width="30" height="30" alt="" style="border-radius: 4px;">
      </a>
      <h1>Pillas</h1>
      <a href="#options-panel" class="ui-btn" data-rel="popup" data-transition="pop" data-position-to="window">
        <span class="icon pillas-settings"></span>
      </a>
    </div><!-- /header -->

    <div data-role="content" class="content no-padding">
      <div class="head text-center">
          <div class="title">Olá, <span class="uppercase">Yuriana</span></div>
          <div class="subtitle uppercase">O seu saldo em pillas é de</div>
          <div class="balance">{{saldoPillas}}</div>
          <div class="expire-title uppercase">Pillas a expirar em {{dataDeExpiracao}}</div>
          <div class="expire-balance">{{pillasAExpirar}}</div>
      </div>
      <div class="actions">
        <div id="pillas-btn" class="home-btn text-center" style="margin-bottom: 1em; height: 50%;">
          <img src="../resources/img/icon-label-troca-pillas.svg" class="box" alt="">
        </div>
        <div class="row">
          <div id="extract-btn" class="home-btn text-center home-details-btn pull-left">
            <img src="../resources/img/icon-label-extrato-pillas.svg" class="box" alt="">
          </div>
          <div id="map-btn" class="home-btn text-center home-details-btn pull-right">
            <img src="../resources/img/icon-label-pontos-troca.svg" class="box" alt="">
          </div>
        </div>
      </div>
    </div><!-- /content -->

    <div data-role="panel" data-position="right" id="options-panel">
      <!-- panel content goes here -->
      <div class="panel-header">
        <a href="#" class="back-btn pull-left" data-rel="close">
          <span class="icon pillas-chevron-back"></span>
        </a>
        <h1>Configurações</h1>
      </div>
      <ul data-role="listview" data-icon="false">
        <li><a href="profile.jsp" data-transition="slide"><span class="pull-left">Perfil</span> <img style="background-image: url('../resources/img/avatar.png');" class="profile-small-avatar pull-right"></img></a></li>
        <li><a href="about.jsp" data-transition="slide">Sobre o Pillas</a></li>
        <li><a href="#panel-fixed-page2">Como adquiri-lo</a></li>
        <li><a href="#panel-fixed-page2">Termos e Compromissos</a></li>
        <li><a href="#panel-fixed-page2">Acessar o site</a></li>
      </ul>
    </div><!-- /panel -->

  </div><!-- /page -->


<!--   <script type="text/javascript" src="../resources/js/lib/cordova.js"></script> -->
  <script type="text/javascript" src="../resources/js/lib/index.js"></script>
<!--   <script type="text/javascript"> -->
<!-- //     app.initialize(); -->
<!--   </script> -->

  <script>
    $("#pillas-btn").click(function() {
      $.mobile.changePage( "create-token.jsp", { transition: "slide" });
    });

    $("#extract-btn").click(function() {
      $.mobile.changePage( "extract.jsp", { transition: "slide" });
    });

    $("#map-btn").click(function() {
      $.mobile.changePage( "map.jsp", { transition: "slide" });
    });
  </script>

</body>
</html>
