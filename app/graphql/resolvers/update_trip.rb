module Resolvers
  class UpdateTrip < GraphQL::Function
    type Types::TripType

    argument :id, !types.ID
    argument :name, types.String
    argument :description, types.String

    def call(_obj, args, _ctx)
      Trip.find(args[:id]).tap do |obj|
        obj.update(args.to_h)
      end
    end
  end
end
