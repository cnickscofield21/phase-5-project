class SentencesController < ApplicationController
  before_action :set_sentence, only: %i[ show update destroy ]

  # GET /sentences
  def index
    @sentences = Sentence.all
    render json: @sentences, status: :ok
  end

  # GET /sentences/1
  def show
    render json: @sentence, status: :ok
  end

  # POST /sentences
  def create
    @sentence = Sentence.create!(sentence_params)
    render json: @sentence, status: :created, location: @sentence
  end

  # PATCH/PUT /sentences/1
  def update
    @sentence.update!(sentence_params)
    render json: @sentence, status: :accepted
  end

  # DELETE /sentences/1
  def destroy
    @sentence.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sentence
      @sentence = Sentence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sentence_params
      params.permit(:sentence_date, :sentence, :county, :case_number, :client_id)
    end

end
