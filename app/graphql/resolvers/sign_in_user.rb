module Resolvers
  class SignInUser < GraphQL::Function
    argument :authProvider, !Types::AuthProviderEmailInput

    type do
      name 'SigninPayload'

      field :token, types.String
      field :user, Types::UserType
    end

    def call(_obj, args, ctx)
      params = args[:authProvider]
      return unless params

      user = User.find_by! email: params[:email]

      return unless user.authenticate(params[:password])

      token = encrypt("user_id:#{user.id}")
      ctx[:session][:token] = token
      OpenStruct.new(user: user, token: token)
    end

    private

    def encrypt(message)
      secret = Rails.application.secrets.secret_key_base.byteslice(0..31)
      ActiveSupport::MessageEncryptor.new(secret).encrypt_and_sign(message)
    end
  end
end
