# frozen_string_literal: true

RSpec.describe ApiError do # rubocop:disable Metrics/BlockLength
  it "has a version number" do
    expect(ApiError::VERSION).not_to be nil
  end

  it "has code 400 when raising bad request" do
    expect do
      raise ApiError::BadRequest
    end.to raise_error(
      an_instance_of(ApiError::BadRequest)
      .and(having_attributes(code: 400))
    )
  end

  it "has code 403 when raising forbidden" do
    expect do
      raise ApiError::Forbidden
    end.to raise_error(
      an_instance_of(ApiError::Forbidden)
      .and(having_attributes(code: 403))
    )
  end

  it "has code 404 when raising not found" do
    expect do
      raise ApiError::NotFound
    end.to raise_error(
      an_instance_of(ApiError::NotFound)
      .and(having_attributes(code: 404))
    )
  end

  it "has code 401 when raising unauthorized" do
    expect do
      raise ApiError::Unauthorized
    end.to raise_error(
      an_instance_of(ApiError::Unauthorized)
      .and(having_attributes(code: 401))
    )
  end

  it "has code 400 and error detail when raising validation_errors" do
    expect do
      raise ApiError::ValidationErrors.new(
        some_field: ["is_required"]
      )
    end.to raise_error(
      an_instance_of(ApiError::ValidationErrors)
      .and(having_attributes(code: 400))
      .and(having_attributes(errors: { some_field: ["is_required"] }))
    )
  end
end
