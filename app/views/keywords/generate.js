$('#display').empty()
  .append("<%= escape_javascript(render(:partial => @show)) %>")