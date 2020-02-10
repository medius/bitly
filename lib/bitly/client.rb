module Bitly
  def self.new(access_token, timeout=nil)
    Bitly::V4::Client.new(access_token, timeout)
  end
end

class BitlyError < StandardError
  attr_reader :code
  alias :msg :message
  def initialize(msg, code)
    @code = code
    super("#{msg} - '#{code}'")
  end
end

class BitlyTimeout < BitlyError; end
