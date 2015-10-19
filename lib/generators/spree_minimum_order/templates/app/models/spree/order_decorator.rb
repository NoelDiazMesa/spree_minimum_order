Spree::Order.class_eval do
  @minimum = Spree::Config[:minimum_order_value].to_f
  def checkout_allowed?
    return :not_empty     unless line_items.count > 0
    return :minimum_order_value unless total >= @minimum
    true
  end
end