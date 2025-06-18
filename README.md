# ⚠️ THIS REPOSITORY IS DEPRECATED AND WILL BE CLOSED

**This repository will be made read-only and permanently closed on July 18, 2025.**

The functionality of this project has been superseded by a new, actively maintained SDK. This repository is now in maintenance mode, and we will not be providing further feature updates or support.

---

### **Migration Required**

If you are using this client, we strongly recommend you migrate to the new SDK to continue receiving updates, bugfixes, and new features. Please see details in **[sentry-ruby](https://github.com/getsentry/sentry-ruby?tab=readme-ov-file#migrate-from-sentry-raven)**.

* **Migration guide:** Please see migration guide for sentry-raven **[Migration Guide](https://docs.sentry.io/platforms/ruby/migration/)**.


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
