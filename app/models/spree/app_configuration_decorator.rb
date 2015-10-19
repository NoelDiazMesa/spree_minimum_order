Spree::AppConfiguration.class_eval do
    preference :minimum_order_value, :float, default: '0'
end

