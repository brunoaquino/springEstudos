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
  <script src="http://maps.google.com/maps/api/js?sensor=true" type="text/javascript"></script>
  <script src="js/jquery-1.10.2.min.js"></script>
  <script src="js/jquery.mobile-1.4.5.js"></script>
  <script src="js/jquery.ui.maps.js"></script>
  <script src="js/pillas.js"></script>
  <title>Pillas</title>
</head>
<body>
  <div id="map" data-role="page">

    <div data-role="header" data-position="fixed" data-tap-toggle="false" class="header">
      <a href="index.html" class="ui-btn" data-transition="slide" data-direction="reverse">
        <span class="icon pillas-chevron-back"></span>
      </a>
      <h1>Pontos de Troca</h1>
      <a href="#" id="popup-back-btn" class="ui-btn" data-rel="back" style="display:none;"><span class="icon pillas-close"></span></a>
    </div><!-- /header -->
    <div id="limit"></div>

    <div data-role="content" class="content no-padding">
      <div id="map_canvas" style="height:100px;"></div>
    </div><!-- /content -->

    <div data-role="footer" data-position="fixed" data-tap-toggle="false" align="center" class="page-footer">
      <a href="#popup-search-shops" data-rel="popup" data-transition="pop" data-position-to="window" id="search-btn" class="ui-btn ui-btn-fullwidth uppercase token-btn pull-left" style="width: 50%!important;">Pesquisar <span class="icon pillas-search"></span></a>
      <a href="#popup-categories" data-rel="popup" data-transition="pop" data-position-to="window" class="ui-btn ui-btn-fullwidth uppercase token-btn" style="width: 50%!important;">Categorias <span class="icon pillas-shop"></span></a>
    </div><!-- /footer -->

    <!-- POPUP PESQUISAR -->
    <div data-role="popup" id="popup-search-shops" data-theme="a">
      <div class="ui-content" style="padding:1em;">
        <form class="ui-filterable">
            <input id="inset-autocomplete-input" data-type="search" data-icon="false" placeholder="Buscar pontos de troca...">
        </form>
      </div>
        <ul data-role="listview" data-inset="true" data-icon="false" data-filter="true" data-filter-reveal="true" data-input="#inset-autocomplete-input">
          <li><a href="#">Acura</a></li>
          <li><a href="#">Audi</a></li>
          <li><a href="#">BMW</a></li>
          <li><a href="#">Cadillac</a></li>
          <li><a href="#">Chrysler</a></li>
          <li><a href="#">Dodge</a></li>
          <li><a href="#">Ferrari</a></li>
          <li><a href="#">Ferrari</a></li>
          <li><a href="#">Ferrari</a></li>
          <li><a href="#">Ferrari</a></li>
          <li><a href="#">Ferrari</a></li>
          <li><a href="#">Ferrari</a></li>
          <li><a href="#">Ferrari</a></li>
          <li><a href="#">Ferrari</a></li>
          <li><a href="#">Ferrari</a></li>
          <li><a href="#">Ferrari</a></li>
          <li><a href="#">Ford</a></li>
          <li><a href="#">GMC</a></li>
          <li><a href="#">Honda</a></li>
          <li><a href="#">Hyundai</a></li>
          <li><a href="#">Infiniti</a></li>
          <li><a href="#">Jeep</a></li>
          <li><a href="#">Kia</a></li>
          <li><a href="#">Lexus</a></li>
          <li><a href="#">Mini</a></li>
          <li><a href="#">Nissan</a></li>
          <li><a href="#">Porsche</a></li>
          <li><a href="#">Subaru</a></li>
          <li><a href="#">Toyota</a></li>
          <li><a href="#">Volkswagen</a></li>
          <li><a href="#">Volvo</a></li>
        </ul>
    </div><!-- FIM POPUP -->

    <!-- POPUP CATEGORIAS -->
    <div data-role="popup" id="popup-categories" data-theme="a">
      <div class="ui-content" style="padding:1em;">
        <form class="ui-filterable">
            <input data-type="search"data-icon="false" id="category-filter" placeholder="Pesquise por uma categoria...
            ">
        </form>
      </div>
        <form>
            <fieldset data-role="controlgroup" data-filter="true" data-input="#category-filter">
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2a" value="on" checked="checked">
              <label for="radio-choice-v-2a">Farmácias e Drogarias</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2b" value="off">
              <label for="radio-choice-v-2b">Oficinas Mecânicas</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2c" value="other">
              <label for="radio-choice-v-2c">Lojas de Conveniências</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2d" value="pa">
              <label for="radio-choice-v-2d">Passagens Aéreas</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2e" value="e">
              <label for="radio-choice-v-2e">Entretenimento</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2f" value="es">
              <label for="radio-choice-v-2f">Esporte</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2g" value="ho">
              <label for="radio-choice-v-2g">Hotel</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2h" value="ho">
              <label for="radio-choice-v-2h">Hotel</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2i" value="ho">
              <label for="radio-choice-v-2i">Hotel</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2j" value="es">
              <label for="radio-choice-v-2j">Esporte</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2k" value="es">
              <label for="radio-choice-v-2k">Esporte</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2l" value="es">
              <label for="radio-choice-v-2l">Esporte</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2m" value="es">
              <label for="radio-choice-v-2m">Esporte</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2n" value="es">
              <label for="radio-choice-v-2n">Esporte</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2o" value="es">
              <label for="radio-choice-v-2o">Esporte</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2p" value="e">
              <label for="radio-choice-v-2p">Entretenimento</label>
              <input type="radio" name="radio-choice-v-2" id="radio-choice-v-2q" value="e">
              <label for="radio-choice-v-2q">Entretenimento</label>
            </fieldset>
          </form>
    </div><!-- FIM POPUP -->

    <!-- POPUP INFO -->
    <div data-role="popup" id="popupInfo" data-overlay-theme="b">
        <div class="main pull-left">
          <div class="container">
            <h1 class="title"></h1>
            <p class="address"></p>
          </div>
        </div>
        <div class="moreinfo">
          <div class="container">
            <p class="phone"></p>
            <a href="#" class="directions uppercase">Como chegar</a>
            <div class="divider-1"></div>
            <a href="#" class="url uppercase">Site</a>
          </div>
        </div>
    </div>

  </div><!-- /page -->


  <script type="text/javascript" src="cordova.js"></script>
  <script type="text/javascript" src="js/index.js"></script>
  <script type="text/javascript">
    app.initialize();
  </script>

  <script>
    $(document).on("pagecontainershow", function() {
      var defaultLatLng = new google.maps.LatLng(-16.680681, -49.256264);  // Default to Goiânia, Goiás when no geolocation support
      if ( navigator.geolocation ) {
        function success(pos) {
            // Location found, show map with these coordinates
            drawMap(new google.maps.LatLng(pos.coords.latitude, pos.coords.longitude));
          }
          function fail(error) {
            drawMap(defaultLatLng);  // Failed to find location, show default map
          }
        // Find the users current position.  Cache the location for 5 minutes, timeout after 6 seconds
        navigator.geolocation.getCurrentPosition(success, fail, {maximumAge: 500000, enableHighAccuracy:true, timeout: 6000});
      }

      function drawMap(latLong) {
        var markers = {"markers":[ {"phone": "(62) 3215-3399", "title":"Farmácia Reativa Homeopatia e Manipulação", "address":"Farmácia Reativa Homeopatia e Manipulação R. João de Abreu, 343 - St. Oeste Goiânia - GO 74120-110", "url":"farmaciareativa.com", "lat": -16.689392, "lon":-49.267599}, {phone:"(62) 3004-8005", title:"Drogasil", address:"Avenida T-10, 1.300 CVC Goiânia Shopping Setor Bueno Goiânia - GO, 74223-060", url:"drogasil.com", lat:-16.708020, lon:-49.272477} ]};
        $('#map_canvas').gmap({'center': latLong, 'zoom': 13, 'disableDefaultUI': true}).bind('init', function() { 

          $.each( markers.markers, function(i, marker) {
            $('#map_canvas').gmap('addMarker', { 
              'position': new google.maps.LatLng(marker.lat, marker.lon), 
              'bounds': false
            }).click(function() {
              var popupEl = $("#popupInfo");
              $(".title", popupEl).text(marker.title);
              $(".address", popupEl).text(marker.address);
              $(".phone", popupEl).text(marker.phone);
              $(".url", popupEl).attr("href", marker.url);
              $(".directions", popupEl).attr("href", "https://maps.google.com?saddr=Current+Location&daddr="+marker.lat+","+marker.lon);
              $('#map_canvas').gmap('option', 'center', new google.maps.LatLng(marker.lat, marker.lon));
              popupEl.popup("open", {"transition": "pop"});
            });
          });
        });

        updateMapHeight();
      }

      function updateMapHeight() {
        var screen = $.mobile.getScreenHeight();
        var header = $(".header").outerHeight();
        var footer = $(".page-footer").outerHeight();

        $("#map_canvas").height(screen - header - footer + 2);
        $("#map_canvas").gmap("refresh");
      }
    });
  </script>

  <script type="text/javascript">
    (function() {
      $(document).on("pagecontainershow", function() {
        // Binds de eventos no popup de busca
        $("#popup-search-shops, #popup-categories").popup({
          afteropen: function() {
            var header = $(".header").height() + 1;
            $(".ui-popup-container, .ui-popup-screen").css({"top": header + "px", "max-width": "100%", "left": 0, "width": "100%"});
            $("[href=#"+this.id+"]").addClass("active");
            $("#popup-back-btn").show();
          },
          afterclose: function() {
            $("[href=#"+this.id+"]").removeClass("active");
            $("#popup-back-btn").hide();
          },
          beforeposition: function() {
            var maxHeight = $(window).height() - $(".header").outerHeight();
            $('#popup-search-shops').css('max-height', (maxHeight - $(".page-footer").outerHeight() + 2) + 'px');
            $('#popup-categories').css('max-height', (maxHeight + 2) + 'px');
          }
        });
      });
    })(window);
  </script>

</body>
</html>
