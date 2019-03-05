# Raven::InMemoryAsyncSender

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sentry-raven'
gem 'sentry-raven-in_memory_async_sender'
```

## Usage

```ruby
require 'sentry-raven'
require 'sentry-raven/in_memory_async_sender'

Raven.configure do |c|
  c.async = Raven::InMemoryAsyncSender.new
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/salemove/sentry-raven-in_memory_async_sender.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
