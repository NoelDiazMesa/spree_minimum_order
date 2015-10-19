Spree::Order.class_eval do
  MINIMUM_ORDER_VALUE = Spree::Config[:minimum_order_value].to_f
  def checkout_allowed?
    return :not_empty     unless line_items.count > 0
    return :minimum_order_value unless total >= MINIMUM_ORDER_VALUE
    true
  end
end