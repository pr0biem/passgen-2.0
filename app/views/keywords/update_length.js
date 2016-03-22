$('#length_of_word').empty()
  .append("<%= escape_javascript(render(:partial => @length)) %>")