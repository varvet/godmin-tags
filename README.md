# Godmin Tags

[![Gem Version](http://img.shields.io/gem/v/godmin-tags.svg)](https://rubygems.org/gems/godmin-tags)

Godmin Tags is a tags component for [Godmin](https://github.com/varvet/godmin) that adds an `f.tags_field` to forms.

## Installation

Add the gem to the application's `Gemfile`:
```ruby
gem "godmin-tags"
```

Or to the admin engine's `gemspec`:
```ruby
s.add_dependency "godmin-tags", "~> x.x.x"
```

## Usage

Use the tags field in your form like so:

```erb
<%= form_for(@resource) do |f| %>
  <%= f.input_field :title %>
  <%= f.text_field :body %>

  <%= f.tags_field :tags, data: { collection: Tag.all.pluck(:name) } %>
<% end %>
```

## Contributors

https://github.com/varvet/godmin-uploads/graphs/contributors

## License

Licensed under the MIT license. See the separate MIT-LICENSE file.
