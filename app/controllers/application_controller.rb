class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  include Pundit
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found  
  rescue_from Pundit::NotAuthorizedError, :with => :render_forbidden  

  respond_to :json

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user

  def current_user
    @current_user ||= super || RegisteredUser.find(@current_user_id)
  end

  def pundit_user
    current_user
  end

  private

  def render_error(message, status, additional_data = {})
    render json: additional_data.merge({ message: message }), status: status
  end

  def render_forbidden(exception = nil)
    render_error(exception ? exception.message : 'You are not authorized to perform this action', :forbidden)
  end

  def record_not_found(error)
    render json: {error: error.message}, status: :not_found
  end 

  def authenticate_user!(options = {})
    head :unauthorized unless signed_in?
  end

  def signed_in?
    @current_user_id.present?
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def authenticate_user
    if request.headers['Authorization'].present?
      authenticate_or_request_with_http_token do |token|
        begin
          jwt_payload = JWT.decode(token, Rails.application.secrets.secret_key_base).first

          @current_user_id = jwt_payload['id']
        rescue JWT::ExpiredSignature, JWT::VerificationError, JWT::DecodeError
          head :unauthorized
        end
      end
    end
  end
end
