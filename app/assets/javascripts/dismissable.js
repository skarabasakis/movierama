$(function() {
  $('.dismiss').click(function (e) {
    e.preventDefault();
    $(this).closest('.dismissable').remove();
  });
})