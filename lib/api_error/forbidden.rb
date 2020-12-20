# frozen_string_literal: true

require_relative "http"

module ApiError
  # Exception thrown for 403 errors
  class Forbidden < Http
    def initialize(message = "Forbidden")
      super(message, 403)
    end
  end
end
