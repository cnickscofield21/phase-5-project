class FacilitiesController < ApplicationController
  before_action :set_facility, only: %i[ show update destroy ]

  # GET /facilities
  def index
    @facilities = Facility.all
    render json: @facilities, status: :ok
  end

  # GET /facilities/1
  def show
    render json: @facility, status: :ok
  end

  # POST /facilities
  def create
    @facility = Facility.create!(facility_params)
    render json: @facility, status: :created, location: @facility
  end

  # PATCH/PUT /facilities/1
  def update
    @facility.update!(facility_params)
    render json: @facility, status: :accepted
  end

  # DELETE /facilities/1
  def destroy
    @facility.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facility
      @facility = Facility.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def facility_params
      params.permit(:name, :acronymn, :facility_group, :physical_address, :physical_city, :physical_state, :physical_zip, :phone_number, :mailing_address, :mailing_city, :mailing_state, :mailing_zip, :security_level)
    end

end
