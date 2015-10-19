Spree::Order.class_eval do
  def checkout_allowed?
    return :not_empty     unless line_items.count > 0
    return :minimum_order_value unless total >= Spree::Config[:minimum_order_value].to_f
    true
  end
end