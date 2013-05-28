module WillSortate
  class SorterHelper
    def initialize args
      @collection = args[:collection]
      @sort_field = args[:sort_field]
      @default_sort_order = args[:default_sort_order] || 'asc'
      @params = args[:params]
    end

    def next_sort_order
      if @collection.sortated_field == @sort_field.to_s
        @collection.sortated_order == 'asc' && 'desc' || 'asc'
      else
        @default_sort_order
      end
    end

    def params
      @params.merge sort: "#{@sort_field}_#{next_sort_order}"
    end
  end
end