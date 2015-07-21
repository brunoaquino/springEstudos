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
  <div id="login" class="pillas-bg" data-role="page">

    <div data-role="content" class="content splash-container">
      <h1 class="splash-title">Pillas</h1>
    </div><!-- /content -->

    <div data-role="footer" data-position="fixed" data-tap-toggle="false" align="center" class="page-footer no-border">
      <!-- 
        Notificação de dados inválidos
       -->
      <!-- <p class="warning-msg uppercase">Usuário/senha inválido(s)!</p> -->

      <div class="ui-content">
        <div class="divider-1"></div>
        <form action="#" class="no-margin">
          <!-- 
            Para dar destaque no INPUT que teve o valor inválido, basta adicionar a classe "warning"
           -->
          <input type="text" placeholder="USUÁRIO">
          <div class="divider-1"></div>
          <input type="password" placeholder="SENHA">
          <div class="divider-1"></div>
          <button class="btn-forgot-token-pw confirmation-btn ui-btn ui-btn-fullwidth uppercase" data-corner="false" data-shadow="false">Acessar</button>
        </form>
        <div class="divider-1"></div>
        <button class="facebook-btn ui-corner-all uppercase" data-corner="false" data-shadow="false">
          <span class="icon pillas-facebook pull-left"></span>
          <span class="uppercase">Acessar com o facebook</span>
        </button>
        <p><a href="recover-password.html" class="pull-left ui-link btn-forgot-pw">Esqueceu a sua senha?</a> <a href="signup.html" class="pull-right ui-link uppercase signup-btn">Quero me cadastrar</a></p>
      </div>
    </div><!-- /footer -->

  </div><!-- /page -->


  <script type="text/javascript" src="cordova.js"></script>
  <script type="text/javascript" src="js/index.js"></script>
  <script type="text/javascript">
    app.initialize();
  </script>

  <script>
    $(document).on("pagecontainershow", function(){
      setTimeout(function() {
        $(".splash-container").css("top", ($(".pillas-bg").height() - $(".splash-container").outerHeight())/2 + "px");
      }, 1000);
    });
  </script>


</body>
</html>