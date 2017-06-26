require 'faraday'
require 'faraday_middleware'
require 'multi_json'

module XA
  module Clients
    class Base
      def initialize(url)
        @conn = Faraday.new(url) do |f|
          f.request(:url_encoded)
          f.request(:json)
          f.response(:json, :content_type => /\bjson$/)
          f.adapter(Faraday.default_adapter)        
        end
      end

      def get(url)
        resp = @conn.get(url)
        resp.success? ? resp.body : nil
      end

      def send_event(name, payload)
        resp = @conn.post('/api/v1/events', { name: name, payload: payload })
        resp.success? ? resp.body : nil
      end
    end
  end
end
