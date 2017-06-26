require 'faraday'
require 'faraday_middleware'
require 'multi_json'

require_relative './base'

module XA
  module Clients
    class Tables < Base
      def table(id)
        get("/api/v1/tables/#{id}")
      end

      def create(name)
        send_event('create', { name: name })
      end
    end
  end
end
