$ ->
  $('#read-more').on 'click', ->
    full_description = $(@).data('description')
    $('#book-description').html(full_description)
    $(@).hide()

  $('#add-to-cart').on 'click', ->
    $.post '/orders/create', { book_id: 1, count: $('.quantity-input').val() }, (data) ->

      $('.result').html data

  $('#plus').on 'click', ->
    if $('.quantity-input').val() == ''
      $('.quantity-input').val(1)
    else
      current_value = $('.quantity-input').val()
      $('.quantity-input').val(parseInt(current_value) + 1)

  $('#minus').on 'click', ->
    return if $('.quantity-input').val() == '0'

    if $('.quantity-input').val() == ''
      $('.quantity-input').val(1)
    else
      current_value = $('.quantity-input').val()
      $('.quantity-input').val(parseInt(current_value) - 1)
