module Resolvers
  class CreateUser < GraphQL::Function
    type Types::UserType

    argument :name, !types.String
    argument :authProvider, !Types::AuthProviderEmailInput

    def call(_obj, args, _ctx)
      User.create!(
        name: args[:name],
        email: args[:authProvider][:email],
        password: args[:authProvider][:password]
      )
    end
  end
end
