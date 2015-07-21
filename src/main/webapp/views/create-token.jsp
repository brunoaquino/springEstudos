<!DOCTYPE html>
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
  <div id="create-token" data-role="page">

    <div data-role="header" data-position="fixed" data-tap-toggle="false" class="header">
      <a href="index.html" class="ui-btn" data-transition="slide" data-direction="reverse">
        <span class="icon pillas-chevron-back"></span>
      </a>
      <h1>Gerar Token</h1>
    </div><!-- /header -->

    <div data-role="content" class="content text-center">
      <div class="title uppercase">Troque pillas por produtos</div>
      <div class="subtitle uppercase">O seu saldo em pillas é de</div>
      <div class="balance">100.000.000</div>
      <span class="icon pillas-chevron-down"></span>
      <div class="password-title uppercase">Digite sua senha de 4 dígitos</div>
      <form action="">
        <input type="password" size="4" maxlength="4">
      </form>
      <div class="divider-1"></div>
      <a href="#popupCreateTokenSuccess" class="btn-create-token ui-btn ui-corner-all uppercase" data-corner="false" data-shadow="false" data-rel="popup" data-transition="slideup" data-position-to="window">Trocar</a>
      <div class="divider-1"></div>
      <a href="#popupForgotPwToken" class="btn-forgot-pw" data-rel="popup" data-transition="slideup" data-position-to="window">Esqueceu a sua senha?</a>
    </div><!-- /content -->

    <!-- POPUP ESQUECEU A SENHA -->
    <div data-role="popup" id="popupForgotPwToken" data-theme="a">
      <div class="uppercase popup-header">
        <h1 class="">Esqueceu a senha do token?</h1>
        <a href="#" class="pull-right no-outline" data-rel="back"><span class="icon pillas-close"></span></a>
      </div>
      <div style="padding:10px 1em 0;">
        <h3>Olá,</h3>
        <p>O link para criar uma nova senha será enviado para o email abaixo, basta acessá-lo e criar uma nova senha de quatro dígitos.</p>
        <div>
          <h4 class="uppercase">Email cadastrado</h4>
          <p>yuriana@syncode.com.br</p>
        </div>
        <button id="" class="forgot-token-btn confirmation-btn" data-corner="false" data-shadow="false">Enviar link</button>
        <div style="padding: 2em 0 1em 0;">
          <strong>Dúvidas, não reconhece esse email?</strong>
          <p class="no-margin">sac@pillas.com.br</p>
        </div>
      </div>
    </div><!-- FIM POPUP -->

    <!-- POPUP SUCESSO SOLICITAÇÃO DE ENVIO -->
    <div data-role="popup" id="popupForgotToken" data-overlay-theme="a" data-theme="p" style="max-width:320px;" class="ui-corner-all">
      <div data-role="header" data-theme="p" class="ui-corner-top">
        <h1>SUCESSO!</h1>
      </div>
      <div role="main" class="ui-content">
        <p class="message">Solicitação de envio realizada com sucesso, verifique seu email para finalizar a operação.</p>
      </div>
      <div data-role="footer" class="ui-corner-bottom">
        <a href="#" class="ui-btn ui-corner-bottom ui-btn-fullwidth rounded-corners" data-theme="p" data-rel="back" data-theme="a">OK</a>
      </div>
    </div><!-- FIM POPUP -->

    <!-- POPUP SUCESSO AO GERAR TOKEN -->
    <div data-role="popup" id="popupCreateTokenSuccess" data-overlay-theme="a" data-theme="p" style="max-width:320px;" class="ui-corner-all">
      <div data-role="header" data-theme="p" class="ui-corner-top">
        <h1>SUCESSO!</h1>
      </div>
      <div role="main" class="ui-content">
        <p class="message">Informe o número do token para que o parceiro possa concluir a transferência.</p>
        <p class="token">123.645.374</p>
        <p class="message">Válido por 30 minutos.</p>
      </div>
      <div data-role="footer" class="ui-corner-bottom">
        <a href="#" class="ui-btn ui-corner-bottom ui-btn-fullwidth rounded-corners" data-theme="p" data-rel="back" data-theme="a">OK</a>
      </div>
    </div><!-- FIM POPUP -->

  </div><!-- /page -->


  <script type="text/javascript" src="cordova.js"></script>
  <script type="text/javascript" src="js/index.js"></script>
  <script type="text/javascript">
    app.initialize();
  </script>

  <script>
  // Transição "Enviar link para solicitar nova senha" --> "Sucesso ao enviar solicitação"
  $('.forgot-token-btn').click(function() {
    $('#popupForgotPwToken').popup('close');
    setTimeout(function () {
      $('#popupForgotToken').popup('open', {transition: "slideup", positionTo: "window"});
    }, 1000);
  });
  </script>

</body>
</html>
