module Resolvers
  class CreateTrip < GraphQL::Function
    type Types::TripType

    argument :name, !types.String
    argument :description, !types.String

    def call(_obj, args, _ctx)
      Trip.create!(
        name: args[:name],
        description: args[:description]
      )
    end
  end
end
