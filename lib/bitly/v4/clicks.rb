module Bitly
  module V4
    class Clicks
      attr_reader :units, :unit_reference, :unit, :link_clicks

      def initialize(client, data)
        @client = client
        @units = data['units']
        @unit_reference = data['unit_reference']
        @unit = data['unit']
        @link_clicks = data['link_clicks']
      end
    end
  end
end
