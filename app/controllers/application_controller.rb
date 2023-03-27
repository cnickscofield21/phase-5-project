class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  # before_action :authorize

  # def current_user
  #   user = User.find_by(id: session[:user_id])
  #   user
  # end

  # def authorize
  #   if !current_user
  #     render json: {errors: ["Not Authorized"]}, status: :unauthorized
  #   end

  # end

  def render_unprocessable_entity(invalid)
    render json: {errors: invalid.record.errors}, status: :unprocessable_entity
  end

  def render_not_found(error)
    #confiure the response to work with the error handling on frontend
    render json: {errors: {error.model => "Not Found"}}, status: :not_found
  end

  # Testing
  def hello_world
    session[:count] = (session[:count] || 0) + 1
    render json: { count: session[:count] }
  end

end
