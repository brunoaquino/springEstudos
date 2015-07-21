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
  <link rel="stylesheet" type="text/css" href="css/fonts.css" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- SCRIPTS -->
  <script src="js/jquery-1.10.2.min.js"></script>
  <script src="js/jquery.mobile-1.4.5.js"></script>
  <script src="js/jquery.mask.min.js"></script>
  <title>Pillas</title>
</head>
<body>
  <div id="profile" data-role="page">

    <div data-role="header" data-position="fixed" data-tap-toggle="false" class="header">
      <a href="index.html" class="ui-btn" data-transition="slide" data-direction="reverse">
        <span class="icon pillas-chevron-back"></span>
      </a>
      <h1>Editar Perfil</h1>
      <a href="#popupSaveSuccess" class="ui-btn" data-rel="popup" data-transition="pop" data-position-to="window">
        <span class="icon pillas-check"></span>
      </a>
    </div><!-- /header -->

    <!-- 
      Notificação de sistema bloqueado
     -->
    <!-- <div class="blocked-profile text-center">
      <div class="text">
        <h1 class="uppercase">Atenção</h1>
        <p>O sistema foi bloqueado, confirme seu email ou reenvie a solicitação.</p>
      </div>
    </div> -->

    <div data-role="content" class="content">
      <form action="/profile">
        <div class="ui-field-contain profile-image uppercase" align="center">
          <a href="#popupCreateToken" data-rel="popup" data-transition="slideup" data-position-to="window" class="ui-btn ui-corner-all"><span class="icon pillas-camera"></span> Editar</a>
          <img src="img/avatar.png" alt="" class="circle-img">
          <a href="#" class="ui-btn ui-corner-all"><span class="icon pillas-delete"></span> Remover</a>
        </div>

        <div id="name-group" class="form-group">
          <label for="profile-name">Nome</label>
          <input type="text" id="profile-name">
        </div>

        <div id="email-group" class="form-group">
          <label for="profile-email">Email</label>

            <!-- 
              Versão normal 
            -->
            <div class="input-mail">
              <input type="email" id="profile-email" value="yuriana@syncode.com.br">
            </div>

            <!-- 
              Versão Email não confirmado 
            -->
            <!-- <div class="input-mail">
              <span class="warning uppercase">Email não confirmado</span>
              <input type="email" id="profile-email">
              <a href="#popupDialog" data-rel="popup" data-transition="pop" data-position-to="window">
                <span class="icon pillas-mail warning"></span>
              </a>
            </div> -->

            <!-- 
              Versão conta vinculada ao facebook 
            -->
            <!-- <div class="input-mail">
              <a href="#popupFacebookEmail" data-rel="popup" data-transition="pop" data-position-to="window">
                <input type="email" id="profile-email" value="yuriana@syncode.com.br" disabled="">
                <span class="icon pillas-facebook"></span>
              </a>
            </div> -->
          </div>

          <div class="form-group">
            <div class="ui-grid-a">
              <div class="ui-block-a">
                <label for="profile-cpf">CPF</label>
                <input type="text" id="profile-cpf">
              </div>
              <div class="ui-block-b l-padding-1">
                <label for="profile-birthday">Data de Nascimento</label>
                <div class="input-calendar">
                  <input type="text" id="profile-birthday">
                  <span class="icon pillas-calendar"></span>
                </div>
              </div>
            </div>
          </div>

        </form>
      </div><!-- /content -->

      <div data-role="footer" data-position="fixed" data-tap-toggle="false" align="center" class="page-footer">
        <a href="#popupToken" data-rel="popup" data-transition="slideup" data-position-to="window" class="ui-btn ui-btn-fullwidth uppercase token-btn">Senha geradora de token <span class="icon pillas-token-gen"></span></a>
      </div><!-- /footer -->

      <!-- 

       ****
       **** Todos os popups desta tela estão declarados abaixo
       ****

     -->

     <!-- POPUP SUCESSO -->
     <div data-role="popup" id="popupDialog" data-overlay-theme="a" data-theme="p" style="max-width:320px;" class="ui-corner-all">
      <div data-role="header" data-theme="p" class="ui-corner-top">
        <h1>SUCESSO!</h1>
      </div>
      <div role="main" class="ui-content">
        <p class="message">Uma mensagem solicitando a confirmação desta alteração foi enviada para o seu email.</p>
      </div>
      <div data-role="footer" class="ui-corner-bottom">
        <a href="#" class="ui-btn ui-corner-bottom ui-btn-fullwidth rounded-corners" data-theme="p" data-rel="back" data-theme="a">OK</a>
      </div>
    </div><!-- FIM POPUP -->

    <!-- POPUP SUCESSO AO SALVAR -->
    <div data-role="popup" id="popupSaveSuccess" data-overlay-theme="a" data-theme="p" style="max-width:320px;" class="ui-corner-all">
      <div data-role="header" data-theme="p" class="ui-corner-top">
        <h1>SUCESSO!</h1>
      </div>
      <div role="main" class="ui-content">
        <p class="message">As alterações foram salvas com sucesso.</p>
      </div>
      <div data-role="footer" class="ui-corner-bottom">
        <a href="#" class="ui-btn ui-corner-bottom ui-btn-fullwidth rounded-corners" data-theme="p" data-rel="back" data-theme="a">OK</a>
      </div>
    </div><!-- FIM POPUP -->

    <!-- POPUP ATENÇÃO -->
    <div data-role="popup" id="popupWarning" data-overlay-theme="a" data-theme="p" style="max-width:320px;" class="ui-corner-all popup-warning">
      <div data-role="header" data-theme="w" class="ui-corner-top">
        <h1>ATENÇÃO</h1>
      </div>
      <div role="main" class="ui-content">
        <p class="message">Deseja sair sem salvar as alterações realizadas no seu perfil?</p>
      </div>
      <div data-role="footer" class="ui-corner-bottom">
        <fieldset class="ui-grid-a">
          <div class="ui-block-a r-border"><a href="#" class="ui-btn ui-corner-bottom ui-btn-fullwidth rounded-corners" data-rel="back">SAIR</a></div>
          <div class="ui-block-b"><a href="#" class="ui-btn ui-corner-bottom ui-btn-fullwidth rounded-corners" data-rel="back">SALVAR <span class="icon pillas-check"></span></a></div>
        </fieldset>
      </div>
    </div><!-- FIM POPUP -->

    <!-- POPUP FACEBOOK EMAIL -->
    <div data-role="popup" id="popupFacebookEmail" data-overlay-theme="a" data-theme="p" style="max-width:320px;" class="ui-corner-all popup-warning">
      <div data-role="header" data-theme="w" class="ui-corner-top">
        <h1>ATENÇÃO</h1>
      </div>
      <div role="main" class="ui-content">
        <p class="message">Você não pode alterar o seu endereço de email pois a sua conta está associada ao seu perfil social, para alterá-lo acesse a sua conta do Facebook.</p>
      </div>
      <div data-role="footer" class="ui-corner-bottom">
        <a href="#" class="ui-btn ui-corner-bottom ui-btn-fullwidth rounded-corners" data-rel="back">SAIR</a>
      </div>
    </div><!-- FIM POPUP -->

    <!-- POPUP TOKEN -->
    <div data-role="popup" id="popupToken" data-theme="a">
      <div class="uppercase popup-header">
        <h1 class="">Senha geradora de token</h1>
        <a href="#" class="pull-right no-outline" data-rel="back"><span class="icon pillas-close"></span></a>
      </div>

      <!-- 
        Notificação sobre senha errada
       -->
      <!-- <div class="notification uppercase text-center">Senha anterior incorreta, tente novamente</div> -->

      <form>
        <div style="padding:10px 1em 0;">
          <div class="form-group">
            <label for="profile-op">Senha anterior</label>
            <!-- 
              Foco no input que originou a notificação
             -->
            <!-- <input type="password" id="profile-op" class="wrong-pw"> -->
            <input type="password" id="profile-op">
          </div>

          <div class="form-group">
            <label for="profile-np">Nova senha</label>
            <input type="password" id="profile-np">
          </div>

          <div class="form-group">
            <label for="profile-cns">Confirmar nova senha</label>
            <input type="password" id="profile-cns">
          </div>

          <div class="form-group">
            <button type="submit" class="btn-change-token-pw confirmation-btn" data-corner="false" data-shadow="false">Trocar</button>
          </div>
        </div>
      </form>
      <div class="text-center" style="padding: 15px;">
        <a href="#" class="btn-forgot-pw">Esqueceu a sua senha?</a>
      </div>
    </div><!-- FIM POPUP -->

    <!-- POPUP ESQUECEU A SENHA -->
    <div data-role="popup" id="popupForgotPw" data-theme="a">
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
        <button class="btn-forgot-token-pw confirmation-btn" data-corner="false" data-shadow="false">Enviar link para criar nova senha</button>
        <div style="padding: 2em 0 1em 0;">
          <strong>Dúvidas, não reconhece esse email?</strong>
          <p class="no-margin">sac@pillas.com.br</p>
        </div>
      </div>
    </div><!-- FIM POPUP -->

    <!-- POPUP SUCESSO SOLICITAÇÃO DE ENVIO -->
    <div data-role="popup" id="popupForgotTokenPwSucess" data-overlay-theme="a" data-theme="p" style="max-width:320px;" class="ui-corner-all">
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

    <!-- POPUP SUCESSO AO MUDAR SENHA DE TOKEN -->
    <div data-role="popup" id="popupChangeTokenPwSuccess" data-overlay-theme="a" data-theme="p" style="max-width:320px;" class="ui-corner-all">
      <div data-role="header" data-theme="p" class="ui-corner-top">
        <h1>SUCESSO!</h1>
      </div>
      <div role="main" class="ui-content">
        <p class="message">A sua nova senha geradora de token foi atualizada com sucesso.</p>
      </div>
      <div data-role="footer" class="ui-corner-bottom">
        <a href="#" class="ui-btn ui-corner-bottom ui-btn-fullwidth rounded-corners" data-theme="p" data-rel="back" data-theme="a">OK</a>
      </div>
    </div><!-- FIM POPUP -->

    <!-- POPUP CADASTRAR TOKEN -->
    <div data-role="popup" id="popupCreateToken" data-theme="a">
      <div class="uppercase popup-header">
        <h1 class="">Cadastrar senha</h1>
        <a href="#" class="pull-right no-outline" data-rel="back"><span class="icon pillas-close"></span></a>
      </div>
      <div style="padding:1em;">
        <h3>Olá,</h3>
        <p>Identificamos que a senha de quatro números para autorizar a troca de <strong>PILLAS</strong> por <strong>PRODUTOS</strong> ainda não foi gerada, favor preencher os campos abaixo.</p>

        <form>
            <div class="form-group">
              <label for="profile-np">Senha</label>
              <input type="password" id="profile-np">
            </div>

            <div class="form-group">
              <label for="profile-cs">Confirmar senha</label>
              <input type="password" id="profile-cs">
            </div>

            <div class="form-group">
              <button type="submit" class="btn-create-token-pw confirmation-btn" data-corner="false" data-shadow="false">Cadastrar</button>
            </div>
        </form>
      </div>
    </div><!-- FIM POPUP -->

    <!-- POPUP SUCESSO AO CRIAR SENHA DE TOKEN -->
    <div data-role="popup" id="popupCreateTokenPwSuccess" data-overlay-theme="a" data-theme="p" style="max-width:320px;" class="ui-corner-all">
      <div data-role="header" data-theme="p" class="ui-corner-top">
        <h1>SUCESSO!</h1>
      </div>
      <div role="main" class="ui-content">
        <p class="message">Senha geradora de Token cadastrada com sucesso. <br><br>Boas compras!</p>
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
    $(document).ready(function(){
        // Ativando máscaras nos inputs
        $('#profile-cpf').mask('000.000.000-00');
        $('#profile-birthday').mask('00/00/0000');

        // Transição "Trocar senha de token" --> "Esqueceu sua senha"
        $('.btn-forgot-pw').click(function() {
          $('#popupToken').popup('close');
          setTimeout(function () {
            $('#popupForgotPw').popup('open', {transition: "slideup", positionTo: "window"});
          }, 500);
        });

        // Transição "Enviar link para solicitar nova senha" --> "Sucesso ao enviar solicitação"
        $('.btn-forgot-token-pw').click(function() {
          $('#popupForgotPw').popup('close');
          setTimeout(function () {
            $('#popupForgotTokenPwSucess').popup('open', {transition: "slideup", positionTo: "window"});
          }, 500);
        });

        // Transição "Trocar senha geradora de token" --> "Sucesso ao mudar senha geradora de token"
        $('.btn-change-token-pw').click(function() {
          $('#popupToken').popup('close');
          setTimeout(function () {
            $('#popupChangeTokenPwSuccess').popup('open', {transition: "slideup", positionTo: "window"});
          }, 1000);
        });

        // Transição "Criar senha geradora de token" --> "Sucesso ao criar senha geradora de token"
        $('.btn-create-token-pw').click(function() {
          $('#popupCreateToken').popup('close');
          setTimeout(function () {
            $('#popupCreateTokenPwSuccess').popup('open', {transition: "slideup", positionTo: "window"});
          }, 1000);
        });

        // Cálculos necessários para mostrar mostrar a notificação de Sistema Bloqueado
        var distance = $("#name-group").offset().top + $("#name-group").outerHeight(true) - $(".ui-header").height();
        $(".blocked-profile").css("height", distance);
        $(".blocked-profile .text").css("top", (distance - $(".blocked-profile .text").height())/2);
        
      });
    </script>
  </body>
  </html>
