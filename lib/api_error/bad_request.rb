# frozen_string_literal: true

require_relative "http"

module ApiError
  # Exception thrown for 400 errors
  class BadRequest < Http
    def initialize(message = "Bad request")
      super(message, 400)
    end
  end
end
