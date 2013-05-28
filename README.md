# WillSortate

will_sortate is [will\_paginate](https://github.com/mislav/will_paginate) for sorting. It helps you manage the sorting of an ActiveRecord dataset.

## Installation

Add this line to your application's Gemfile:

    gem 'will_sortate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install will_sortate

## Usage

### In your controller

```ruby
    @products = Product.sortate(params[:sort], 'my_field_asc')
```

The first param given to the `sortate` named scope is the sort argument, while the second param is the default sort argument.

The sort argument indicates the column and order direction, so `my_field_asc` will do an `ORDER BY my_field ASC`

### In your views

```erb
    <%= sortate_link_to 'One Field', @shorties, :one_field, options %>
    <%= sortate_link_to @shorties, :my_field, options do %>
        My Field
    <% end %>
```

The options argument is optional and will be passed to the underlying link_to. In addition you can pass in the options hash:

- `default_sort_order`: the default sort order to use (`asc` or `desc`).

E.g.:

```erb
    <%= sortate_link_to 'My Field', @shorties, :my_field, class: 'sort_link', default_sort_order: 'desc' %>
```

## TODO

Tests!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
