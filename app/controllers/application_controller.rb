class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

private

def render_not_found_response(exception_obj)
    render json: {error: "#{exception_obj.model} not found"}

end

def render_unprocessable_entity_response(exception)
render json: {error: exception.record.erros.full_messages}, status: :unprocessable_entity
end

end
