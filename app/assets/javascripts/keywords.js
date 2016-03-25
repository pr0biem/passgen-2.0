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
  $("#submit").on("click", function(e) {
    e.stopImmediatePropagation();
    e.preventDefault();
    $.ajax({ url: "keywords/generate",
      dataType: "script",
      type: "GET",
      data: {
        l_or_w: $("#l_or_w option:selected").val(),
        separator: $("#separator").val(),
        length_of_password: $("#length_of_word option:selected").val()
      }
    });
  });
});