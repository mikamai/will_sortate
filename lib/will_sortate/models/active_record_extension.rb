require 'will_sortate/models/active_record_model_extension'

module WillSortate
  module ActiveRecordExtension
    extend ActiveSupport::Concern

    included do
      # Future subclasses will pick up the model extension
      class << self
        def inherited_with_will_sortate(kls) #:nodoc:
          inherited_without_will_sortate kls
          kls.send(:extend, WillSortate::ActiveRecordModelExtension)
        end
        alias_method_chain :inherited, :will_sortate
      end
    end
  end
end