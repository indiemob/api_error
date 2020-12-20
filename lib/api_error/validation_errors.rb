# frozen_string_literal: true

require_relative "bad_request"

module ApiError
  # Exception thrown for 400 errors with validation error detail
  class ValidationErrors < BadRequest
    attr_reader :errors
    def initialize(errors, message = "Validation errors found")
      super(message)
      @errors = errors
    end
  end
end
