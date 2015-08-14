# Capistrano::Hipchat

Notifies in a hipchat room about a new deployment showing the git log
for the latests commits included in the current deploy.

## Installation

Add this line to your application's Gemfile:

    group :deployment do
      gem 'capistrano-hipchat'
    end
    
The group declaration is optional, but it's important to make sure you only load this gem within a Capistrano script 
(as explained below) and never within your application (eg. rails does the require of the default bundler group and
the current environment group.

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-hipchat

## Usage

Add this to your `Capfile`

```ruby
require 'capistrano/hipchat'
```

Then you need to configure your hipchat token and the room you want to notify
about the new deployment


```ruby
set :hipchat_token, "YOUR TOKEN"
set :hipchat_room_name, "Hackers"
```

You can also configure:

- :hipchat_bot_name (default: Deployer)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
