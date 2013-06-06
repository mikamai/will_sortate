module WillSortate
  module ActiveRecordModelExtension
    attr_reader :sortated_field, :sortated_order

    def sortate order_by, default_order_by
      regexp = /([\w\.-]+)_(asc|desc)$/
      md = order_by.try(:match, regexp) || default_order_by.match(regexp)
      raise "OrderBy argument has to be specified in the format :field_:direction" unless md

      @sortated_field, @sortated_order = md[1], md[2]
      order("#{sortated_field} #{sortated_order}")
    end
  end
end