require 'will_sortate/helpers/sorter_helper'
module WillSortate
  module ActionViewExtension
    def sortate_link_to *args, &block
      if block_given?
        collection, field, options = args[0], args[1], args[2]
      else
        block = proc { args[0].to_s }
        collection, field, options = args[1], args[2], args[3]
      end
      helper = SorterHelper.new :collection         => collection,
                                :sort_field         => field,
                                :default_sort_order => options.try(:delete, :default_sort_order),
                                :params             => params
      link_to url_for(helper.params), options, &block
    end
  end
end