# Omniauth::Soup

[![Gem Version](https://badge.fury.io/rb/omniauth-soup.png)](http://badge.fury.io/rb/omniauth-soup)
[![Build Status](https://travis-ci.org/fliiiix/omniauth-soup.png?branch=master)](https://travis-ci.org/fliiiix/omniauth-soup)
[![Flattr](https://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=NichtAnonymHier&url=https%3A%2F%2Frubygems.org%2Fgems%2Fomniauth-soup)


Omniauth strategy for [soup](https://soup.io).

This gem provides a simple way to authenticate to soup using OmniAuth with [OAuth 1.0A](https://github.com/soup/clients/tree/master/v1.1#3-legged-oauth-flow).

## Usage

Install it with `gem install omniauth-soup` or if you want build it from source follow the [build](#build) instructions.

```ruby
use OmniAuth::Builder do
    provider :soup, "Client ID", "Client Secret"
end
```

[Sinatra example](/sinatra-example.md)

## Build

1. clone the repo `git clone https://github.com/fliiiix/omniauth-soup.git`
2. build `gem build omniauth-soup.gemspec`
3. install `gem install ./omniauth-soup-0.0.1.gem` 
4. use `require omniauth-soup` 

## Contributing

If you have a problem just open a issue.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
