# frozen_string_literal: true

module ApiError
  # Base http exception
  class Http < StandardError
    attr_reader :code

    def initialize(message, code)
      super(message)
      @code = code
    end
  end
end
