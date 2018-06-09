# OmniAuth MSPCFO OAuth2

This is the OmniAuth OAuth2 strategy for authentication to [MSPCFO](https://www.mspcfo.com).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-mspcfo'
```

And then, you need to add the following to your `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :mspcfo, ENV['MSPCFO_KEY'], ENV['MSPCFO_SECRET'] 
end
```
