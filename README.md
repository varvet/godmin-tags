# Godmin Tagger

[![Gem Version](http://img.shields.io/gem/v/godmin-tagger.svg)](https://rubygems.org/gems/godmin-tagger)

Godmin Tagger is a tagger component for [Godmin](https://github.com/varvet/godmin) that adds an `f.tags_field` to forms.

## Installation

Add the gem to the application's `Gemfile`:
```ruby
gem "godmin-tagger"
```

Or to the admin engine's `gemspec`:
```ruby
s.add_dependency "godmin-tagger", "~> x.x.x"
```

## Usage

Use the tagger in your form like so:

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


















# Godmin::Tagger

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'godmin-tagger'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install godmin-tagger

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/godmin-tagger/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
