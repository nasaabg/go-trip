Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createTrip, function: Resolvers::CreateTrip.new
  field :updateTrip, function: Resolvers::UpdateTrip.new
  field :createUser, function: Resolvers::CreateUser.new
  field :signinUser, function: Resolvers::SignInUser.new
end
