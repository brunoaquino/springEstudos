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
  <div id="recover-password" class="pillas-bg" data-role="page">

    <div data-role="content" class="content splash-container">
      <h1 class="splash-title">Pillas</h1>
    </div><!-- /content -->

    <div data-role="footer" data-position="fixed" data-tap-toggle="false" align="center" class="page-footer no-border">
      <div class="ui-content">
        <div class="divider-1"></div>
        <div class="info">
          <h3>Olá,</h3>
          <p>O link para criar uma nova senha será enviado para o email abaixo, basta acessá-lo e criar uma nova senha. Lembre-se para receber o email você precisa ter uma conta cadastrada no Pillas.</p>
        </div>
        <div class="divider-1"></div>
        <form action="#" class="no-margin">
          <input type="email" placeholder="EMAIL">
          <div class="divider-1"></div>
          <button class="btn-forgot-pw confirmation-btn ui-btn ui-btn-fullwidth uppercase" data-corner="false" data-shadow="false">Enviar</button>
        </form>
        <p>
          <a href="login.html" class="pull-left ui-link uppercase">Já sou usuário</a>
          <a href="signup.html" class="pull-right ui-link uppercase">Quero me cadastrar</a>
        </p>
      </div>
    </div><!-- /footer -->

    <!-- 
      Início da declaração de popups
     -->

    <!-- POPUP SUCESSO SOLICITAÇÃO DE ENVIO -->
    <div data-role="popup" id="popupForgotPwSucess" data-overlay-theme="a" data-theme="p" style="max-width:320px;" class="ui-corner-all">
      <div data-role="header" data-theme="p" class="ui-corner-top">
        <h1>SUCESSO!</h1>
      </div>
      <div role="main" class="ui-content">
        <p class="message">O novo link foi enviado com sucesso para o seu email, siga o passo-a-passo para cadastrar sua nova senha.</p>
      </div>
      <div data-role="footer" class="ui-corner-bottom">
        <a href="#" class="ui-btn ui-corner-bottom ui-btn-fullwidth rounded-corners" data-theme="p" data-rel="back" data-theme="a">OK</a>
      </div>
    </div><!-- FIM POPUP -->

    <!-- POPUP FACEBOOK EMAIL -->
    <div data-role="popup" id="popupEmailNotFound" data-overlay-theme="a" data-theme="p" style="max-width:320px;" class="ui-corner-all popup-warning">
      <div data-role="header" data-theme="w" class="ui-corner-top">
        <h1>ATENÇÃO</h1>
      </div>
      <div role="main" class="ui-content">
        <p class="message">O email informado não consta na nossa base de usuários, por favor utilize um email válido ou entre em contato com o nosso sac@pillas.com.br</p>
      </div>
      <div data-role="footer" class="ui-corner-bottom">
        <a href="#" class="ui-btn ui-corner-bottom ui-btn-fullwidth rounded-corners" data-rel="back">SAIR</a>
      </div>
    </div><!-- FIM POPUP -->

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

      $(".btn-forgot-pw").click(function(e) {
        e.preventDefault();
        // $("#popupForgotPwSucess").popup('open', {transition: "slideup", positionTo: "window"});
        $("#popupEmailNotFound").popup('open', {transition: "slideup", positionTo: "window"});
      });
    });
  </script>


</body>
</html>