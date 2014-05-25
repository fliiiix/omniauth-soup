This is a full functional example in sinatra


```ruby
require 'sinatra'
require 'omniauth'
require 'omniauth-soup'

use Rack::Session::Cookie
use OmniAuth::Builder do
  provider :soup, "xxx", "xxxx"
end

get '/' do
  <<-HTML
  <a href='/auth/soup'>Sign in with soup</a>
  HTML
end
  
get '/auth/:name/callback' do
  auth = request.env['omniauth.auth']
  puts auth.inspect
  # do whatever you want with the information!
end
``` 
