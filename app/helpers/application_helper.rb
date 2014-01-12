module ApplicationHelper
  def number_to_currency(number, options = {})
    options[:locale] ||= I18n.locale
    options[:precision] ||= 0
    options[:delimiter] ||= ' '
    super(number, options)
  end
end
