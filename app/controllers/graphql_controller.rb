class GraphqlController < ApplicationController
  def execute
    variables = ensure_hash(params[:variables])
    query = params[:query]
    operation_name = params[:operationName]
    context = {
      # Query context goes here, for example:
      # current_user: current_user,
    }
    result = Schema.execute(query, variables: variables, context: context, operation_name: operation_name)
    render json: result
  end

  private

  # Handle form data, JSON body, or a blank value
  def ensure_hash(ambiguous_param)
    return {} if ambiguous_param.blank?

    case ambiguous_param
    when String
      ensure_hash(JSON.parse(ambiguous_param))
    when Hash, ActionController::Parameters
      ambiguous_param
    else
      raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
    end
  end
end
