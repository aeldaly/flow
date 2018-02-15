// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery
//= require_tree .

$(document).ready(function () {
  $('body').on('click', '#show-password', function () {
    var passwordField = $('#author_password');
    var passwordFieldType = passwordField.attr('type');

    if (passwordFieldType == 'password') {
      passwordField.attr('type', 'text');
      $(this).html('Hide Password');
    } else {
      passwordField.attr('type', 'password');
      $(this).html('Reveal Password');
    }
  });

});