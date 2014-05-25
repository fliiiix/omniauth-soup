require 'omniauth-oauth'
require 'json'

module OmniAuth
  module Strategies
    class Soup < OmniAuth::Strategies::OAuth
      
      option :client_options, {
        :site => 'https://api.soup.io',
        :authorize_path => '/oauth/authorize',
        :access_token_path => '/oauth/access_token',
        :request_token_path => '/oauth/request_token'
      }

      def request_phase
        super
      end

      uid { raw_info["name"] }

      info do
        {
          'name' => raw_info["name"] ,
          'email' => "",
          'nickname' => raw_info["name"],
        }
      end

      extra do
        {:raw_info => raw_info}
      end

      def raw_info
        @raw_info ||= JSON.parse(access_token.get("/api/v1.1/authenticate").body)["user"]
      end

    end
  end
end

OmniAuth.config.add_camelization 'soup', 'Soup'
