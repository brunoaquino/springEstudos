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
  <script src="js/iscroll.js"></script>
  <title>Pillas</title>
</head>
<body>
  <div id="extract" data-role="page">

    <div data-role="header" data-position="fixed" data-tap-toggle="false" class="header">
      <a href="index.html" class="ui-btn" data-transition="slide" data-direction="reverse">
        <span class="icon pillas-chevron-back"></span>
      </a>
      <h1>Extrato de Pillas</h1>
    </div><!-- /header -->

    <div data-role="content" class="content no-padding">
      <div id="wrapper">
        <div id="scroller">
          <ul class="extract-list no-padding">
            
            <li class="extract-item">
              <div class="left">
                <div class="date">11/12/2015</div>
                <div class="shop-name">Farmácia de Manipulação XYZ</div>
              </div>
              <div class="pillas-currency">P$ <span class="points">754</span></div>
            </li><!-- /item -->
            
            <li class="extract-item">
              <div class="left">
                <div class="date">11/12/2015</div>
                <div class="shop-name">Farmácia de Manipulação XYZ</div>
              </div>
              <div class="pillas-currency debit">P$ <span class="points">-754</span></div>
            </li><!-- /item -->
            
            <li class="extract-item">
              <div class="left">
                <div class="date">11/12/2015</div>
                <div class="shop-name">Pharmasul</div>
              </div>
              <div class="pillas-currency">P$ <span class="points">2.658</span></div>
            </li><!-- /item -->
            
            <li class="extract-item">
              <div class="left">
                <div class="date">11/12/2015</div>
                <div class="shop-name">Pharmasul</div>
              </div>
              <div class="pillas-currency">P$ <span class="points">754</span></div>
            </li><!-- /item -->
            
            <li class="extract-item">
              <div class="left">
                <div class="date">11/12/2015</div>
                <div class="shop-name">Pharmasul</div>
              </div>
              <div class="pillas-currency">P$ <span class="points">754</span></div>
            </li><!-- /item -->
            
          </ul>
        </div>
      </div>
    </div><!-- /content -->

    <div data-role="footer" data-position="fixed" data-tap-toggle="false" align="center" class="page-footer">
      <div class="uppercase extract-footer">
        <span>Total</span>
        <div class="pull-right pillas-currency">P$ 1.000.000</div>
      </div>
    </div><!-- /footer -->

  </div><!-- /page -->


  <script type="text/javascript" src="cordova.js"></script>
  <script type="text/javascript" src="js/index.js"></script>
  <script type="text/javascript">
    app.initialize();
  </script>

  <script>

    $(document).ready(function(){
      console.log("ready");
      var myScroll;

      /* add more function */
      function addMore() {
        if (myScroll.y <= myScroll.maxScrollY && myScroll.directionY == 1) {
          var page = $.mobile.pageContainer.pagecontainer("getActivePage");
          $(document).off("scrollstop");
          $.mobile.loading("show", {
            text: "carregando mais...",
            textVisible: true
          });
          setTimeout(function() {
            var items = '',
            last = $("li", page).length,
            cont = 5;
            for (var i = 0; i < cont; i++) {
              items += "<li class='extract-item'> \
              <div class='left'> \
                <div class='date'>11/12/2015</div> \
                <div class='shop-name'>Pharmasul</div> \
              </div> \
              <div class='pillas-currency'>P$ <span class='points'>754</span></div> \
            </li>";
          }
          $(".extract-list", page).append(items);
          $.mobile.loading("hide");

          myScroll.refresh();
        }, 1000);
        }
      }

      myScroll = new IScroll('#wrapper', {
        mouseWheel: true
      });

      myScroll.on('scrollEnd', addMore);

      document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);
    });
  </script>

</body>
</html>
