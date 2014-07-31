ready = function() {
    $(".datepicker").datepicker(
    {
      format: "dd/mm/yyyy"
      // startDate: "0"
    });
    $('input[type=submit]').on('click', function()
    {
        $('.loading-overlay').css('height', '100%').addClass('active');
        $('.loading5').addClass('active');
    });
};
$(document).ready(ready);
$(document).on('page:load', ready)