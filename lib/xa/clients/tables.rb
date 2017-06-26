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
    end
  end
end
