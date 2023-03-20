class OrganizationsController < ApplicationController
  before_action :set_organization, only: %i[ show update destroy ]

  # GET /organizations
  def index
    @organizations = Organization.all
    render json: @organizations, status: :ok
  end

  # GET /organizations/1
  def show
    render json: @organization, status: :ok
  end

  # POST /organizations
  def create
    @organization = Organization.create!(organization_params)
    render json: @organization, status: :created, location: @organization
  end

  # PATCH/PUT /organizations/1
  def update
    @organization.update!(organization_params)
      render json: @organization, status: :accepted
  end

  # DELETE /organizations/1
  def destroy
    @organization.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_params
      params.permit(:name, :physical_address, :physical_city, :physical_state, :physical_zip, :phone_number, :mailing_address, :mailing_city, :mailing_state, :mailing_zip, :ein, :valid_non_profit)
    end

end
