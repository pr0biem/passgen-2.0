$(function() {
  $("#l_or_w").on("change", function() {
    $.ajax({ url: "keywords/update_length",
      dataType: 'script',
      type: "GET",
      data: {
        l_or_w: $("#l_or_w option:selected").val()
      }
    });
  });
});