$(document).ready ->
  $('.tab').click ->
    if $('.card-action a').attr('href')
      btn_href = $('.card-action a').attr('href').split('#')[0];
      tab_anchor = $(this).find('a').attr('href')
      $('.card-action a').attr('href', btn_href + tab_anchor);
  if location.hash?
    setTimeout ( ->
      window.scrollTo(0, 0);
    ), 1

  $('.share').click ->
    $('#share-modal').openModal()
