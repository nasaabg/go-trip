Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createTrip, function: Resolvers::CreateTrip.new
end
