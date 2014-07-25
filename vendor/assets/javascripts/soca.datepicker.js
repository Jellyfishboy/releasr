ready = function() {
    $(".datepicker").datepicker({
      format: "dd/mm/yyyy"
      // startDate: "0"
    });
};
$(document).ready(ready);
$(document).on('page:load', ready)