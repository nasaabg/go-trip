module Resolvers
  class CreateTrip < GraphQL::Function
    argument :name, !types.String
    argument :description, !types.String

    type Types::TripType

    def call(_obj, args, _ctx)
      Trip.create!(
        name: args[:name],
        description: args[:description]
      )
    end
  end
end
