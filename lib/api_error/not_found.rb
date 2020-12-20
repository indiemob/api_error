# frozen_string_literal: true

require_relative "http"

module ApiError
  # Exception thrown for 404 errors
  class NotFound < Http
    def initialize(message = "Not found")
      super(message, 404)
    end
  end
end
