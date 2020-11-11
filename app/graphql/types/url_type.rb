module Types
  class UrlType < Types::BaseScalar
    description "A valid URL, transported as a string"

    # takes a GraphQL input and converts it into a Ruby value
    def self.coerce_input(input_value, context)
      # Parse the incoming object into a `URI`
      url = URI.parse(input_value)
      if url.is_a?(URI::HTTP) || url.is_a?(URI::HTTPS)
        # It's valid, return the URI object
        url
      else
        raise GraphQL::CoercionError, "#{input_value.inspect} is not a valid URL"
      end
    end

    # takes the return value of a field and prepares it for the GraphQL response JSON
    def self.coerce_result(ruby_value, context)
      # Override this to serialize a Ruby value for the GraphQL response
      ruby_value.to_s
    end
  end
end
