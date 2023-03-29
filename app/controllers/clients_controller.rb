class ClientsController < ApplicationController
  before_action :set_client, only: %i[ show update destroy ]

  # GET /clients
  def index
    @clients = Client.all.sort_by {|client| client.last_name}
    render json: @clients, status: :ok
  end

  # GET /clients/1
  def show
    render json: @client, status: :ok
  end

  # POST /clients
  def create
    @client = Client.create!(client_params)
    render json: @client, status: :created, location: @client
  end

  # PATCH/PUT /clients/1
  def update
    @client.update!(client_params)
    render json: @client, status: :accepted

  end

  # DELETE /clients/1
  def destroy
    @client.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      params.permit(:first_name, :last_name, :middle_initial, :age, :ethnicity, :gender, :hair_color, :eye_color, :height, :weight, :doc_number, :est_parole_eligibility_date, :next_parole_hearing_date, :est_mandatory_release_date, :est_sentence_discharge_date, :image, :facility_id, :organization_id)
    end

end
