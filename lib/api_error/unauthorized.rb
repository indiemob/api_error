# frozen_string_literal: true

require_relative "http"

module ApiError
  # Exception thrown for 401 errors
  class Unauthorized < Http
    def initialize(message = "Unauthorized")
      super(message, 401)
    end
  end
end
