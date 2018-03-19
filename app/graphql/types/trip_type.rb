Types::TripType = GraphQL::ObjectType.define do
  name 'Trip'

  field :id, !types.ID
  field :name, !types.String
  field :description, !types.String
end
