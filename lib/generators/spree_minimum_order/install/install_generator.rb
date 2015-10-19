module SpreeMinimumOrder
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)
      def copy_order_file
        copy_file "app/models/spree/order_decorator", "app/models/spree/order_decorator"
      end
    end
  end
end
