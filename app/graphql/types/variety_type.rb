module Types
  class VarietyType < Types::BaseEnum
    value "TEXT", value: string
    value "TWEET", value: string
    value "AUDIO", value: string
    value "VIDEO", value: string
  end
end
