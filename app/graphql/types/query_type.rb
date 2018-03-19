Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allTrips, !types[Types::TripType] do
    resolve ->(obj, args, ctx) {
      Trip.all
    }
  end
end
