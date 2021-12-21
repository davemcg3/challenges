class AvailableTauntsController < ApplicationController
  before_action :set_available_taunt, only: [:show, :edit, :update, :destroy]

  # GET /available_taunts
  # GET /available_taunts.json
  def index
    @available_taunts = AvailableTaunt.all
  end

  # GET /available_taunts/1
  # GET /available_taunts/1.json
  def show
  end

  # GET /available_taunts/new
  def new
    @available_taunt = AvailableTaunt.new
  end

  # GET /available_taunts/1/edit
  def edit
  end

  # POST /available_taunts
  # POST /available_taunts.json
  def create
    @available_taunt = AvailableTaunt.new(available_taunt_params)

    respond_to do |format|
      if @available_taunt.save
        format.html { redirect_to @available_taunt, notice: 'Available taunt was successfully created.' }
        format.json { render :show, status: :created, location: @available_taunt }
      else
        format.html { render :new }
        format.json { render json: @available_taunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_taunts/1
  # PATCH/PUT /available_taunts/1.json
  def update
    respond_to do |format|
      if @available_taunt.update(available_taunt_params)
        format.html { redirect_to @available_taunt, notice: 'Available taunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @available_taunt }
      else
        format.html { render :edit }
        format.json { render json: @available_taunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_taunts/1
  # DELETE /available_taunts/1.json
  def destroy
    @available_taunt.destroy
    respond_to do |format|
      format.html { redirect_to available_taunts_url, notice: 'Available taunt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_taunt
      @available_taunt = AvailableTaunt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def available_taunt_params
      params.require(:available_taunt).permit(:tauntable_id, :tauntable_type)
    end
end
