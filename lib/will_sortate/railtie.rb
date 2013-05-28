module WillSortate
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'will_sortate' do |_app|
      ActiveSupport.on_load(:active_record) do
        require 'will_sortate/models/active_record_extension'
        ActiveRecord::Base.send :include, WillSortate::ActiveRecordExtension
      end

      ActiveSupport.on_load(:action_view) do
        require 'will_sortate/helpers/action_view_extension'
        ::ActionView::Base.send :include, WillSortate::ActionViewExtension
      end
    end
  end
end