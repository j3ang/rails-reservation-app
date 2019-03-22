// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery3
//= require popper
//= require moment
//= require jquery_ujs
//= require bootstrap
//=require jquery.mask.min.js
//= require_tree .
//= require tempusdominus-bootstrap-4.js

$(function () {
    $('#datetimepicker1').datetimepicker();
    $('#reservation_form_box input[type=tel]').mask("999-999-9999");
});
