class UsersController < ApplicationController
  # Removing show from this array allowed authorization to work!?
  before_action :set_user, only: %i[ update destroy ]
  skip_before_action :authorize, only: :create

  # GET /users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  # GET /users/1
  def show
    user = User.find_by(id: session[:user_id])
    render json: user, status: :ok
  end

  # POST /users
  def create
    @user = User.create!(user_params)
    render json: @user, status: :created, location: @user
  end

  # PATCH/PUT /users/1
  def update
    @user.update!(user_params)
    render json: @user, status: :accepted
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:email, :password, :first_name, :last_name, :organization_admin, :organization_id)
    end

end
