# frozen_string_literal: true

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Mspcfo < OmniAuth::Strategies::OAuth2
      option :name, 'mspcfo'

      option :client_options, site: 'https://app.mspcfo.com'

      uid { raw_info['id'] }

      info do
        {
          name: raw_info['name'],
          email: raw_info['email']
        }
      end

      extra do
        {
          raw_info: raw_info
        }
      end

      def raw_info
        @raw_info ||= if (resp = access_token.get('/me').parsed)
                        resp['data'] || {}
                      else
                        {}
                      end
      end
    end
  end
end
