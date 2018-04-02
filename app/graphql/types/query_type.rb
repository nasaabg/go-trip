Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :allTrips, !types[Types::TripType] do
    resolve ->(_obj, _args, _ctx) do
      Trip.all
    end
  end
end
