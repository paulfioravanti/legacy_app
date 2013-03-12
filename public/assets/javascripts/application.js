(function() {

  $(function() {
    return $('button.close').click(function(e) {
      e.preventDefault();
      return $(this).parents('.alert').fadeOut();
    });
  });

}).call(this);
