//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require soca

ready = function() {

    soca.animation.loading();
    soca.animation.colourCaveat();
    soca.misc.updateTableHeight();
    soca.mobile.disableScrolling();
    soca.mobile.disableTooltips();

    $(".datepicker").datepicker(
    {
      format: "dd/mm/yyyy"
      // startDate: "0"
    });
};
$(document).ready(ready);
$(document).on('page:load', ready)

