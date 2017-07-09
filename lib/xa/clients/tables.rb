require 'faraday'
require 'faraday_middleware'
require 'multi_json'

require_relative './base'

module XA
  module Clients
    class Tables < Base
      def tables
        get("/api/v1/tables/")
      end
      
      def table(id)
        get("/api/v1/tables/#{id}")
      end

      def table_by_name(name)
        get("/api/v1/tables/by_name/#{name}")
      end

      def create(name, rows=[])
        send_event('create', { name: name, rows: MultiJson.encode(rows) })
      end

      def append(id, row)
        send_event('append', { table_id: id, row: MultiJson.encode(row) })
      end
    end
  end
end
