class TextTauntsController < ApplicationController
  before_action :set_text_taunt, only: [:show, :edit, :update, :destroy]

  # GET /text_taunts
  # GET /text_taunts.json
  def index
    @text_taunts = TextTaunt.all
  end

  # GET /text_taunts/1
  # GET /text_taunts/1.json
  def show
  end

  # GET /text_taunts/new
  def new
    @text_taunt = TextTaunt.new
  end

  # GET /text_taunts/1/edit
  def edit
  end

  # POST /text_taunts
  # POST /text_taunts.json
  def create
    @text_taunt = TextTaunt.new(text_taunt_params)

    respond_to do |format|
      if @text_taunt.save
        format.html { redirect_to @text_taunt, notice: 'Text taunt was successfully created.' }
        format.json { render :show, status: :created, location: @text_taunt }
      else
        format.html { render :new }
        format.json { render json: @text_taunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_taunts/1
  # PATCH/PUT /text_taunts/1.json
  def update
    respond_to do |format|
      if @text_taunt.update(text_taunt_params)
        format.html { redirect_to @text_taunt, notice: 'Text taunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_taunt }
      else
        format.html { render :edit }
        format.json { render json: @text_taunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_taunts/1
  # DELETE /text_taunts/1.json
  def destroy
    @text_taunt.destroy
    respond_to do |format|
      format.html { redirect_to text_taunts_url, notice: 'Text taunt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_taunt
      @text_taunt = TextTaunt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_taunt_params
      params.require(:text_taunt).permit(:description)
    end
end
