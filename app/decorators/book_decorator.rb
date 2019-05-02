class BookDecorator < Draper::Decorator
  delegate_all
  include ActionView::Helpers::NumberHelper
  include ActionView::Helpers::TextHelper

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  def author_full_name
    return if author.nil?
    "#{author.first_name} #{author.last_name}"
  end

  def price_in_euro
    number_to_currency(price, unit:'€')
  end

  def short_description
    truncate(description, length: 200)
  end
end
