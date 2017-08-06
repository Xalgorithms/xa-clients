require 'faraday'
require 'faraday_middleware'
require 'multi_json'

require_relative './base'

module XA
  module Clients
    class Documents < Base
      def document(id)
        get("/api/v1/documents/#{id}")
      end

      def envelope(id)
        get("/api/v1/documents/#{id}/envelope")
      end
    end
  end
end
