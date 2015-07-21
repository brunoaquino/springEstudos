$(document).on("pagecontainershow", function() {
  var activePage = $.mobile.pageContainer.pagecontainer( "getActivePage" );
  var activePageId = $.mobile.activePage.attr("id");

  if (activePageId == "home") {
    console.log("home");
    updateHomeScreen();

  } else if (activePageId == "map") {
    console.log("map");
  }
});

// Atualiza a Home de acordo com as dimensões da tela
function updateHomeScreen() {
  var screen = $(document).height();
  var header = $(".header").outerHeight();
  var content_head = $(".content .head").outerHeight();

  var height = screen - (header + content_head + 24);

  $(".content .actions").height(height);

  // Atualizar a altura do panel-header
  $(".panel-header").height(header);
  $(".panel-header").css("line-height", header + "px");
}