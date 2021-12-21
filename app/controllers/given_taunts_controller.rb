class GivenTauntsController < ApplicationController
  before_action :set_given_taunt, only: [:show, :edit, :update, :destroy]

  # GET /given_taunts
  # GET /given_taunts.json
  def index
    @given_taunts = GivenTaunt.all
  end

  # GET /given_taunts/1
  # GET /given_taunts/1.json
  def show
  end

  # GET /given_taunts/new
  def new
    @given_taunt = GivenTaunt.new
  end

  # GET /given_taunts/1/edit
  def edit
  end

  # POST /given_taunts
  # POST /given_taunts.json
  def create
    @given_taunt = GivenTaunt.new(given_taunt_params)

    respond_to do |format|
      if @given_taunt.save
        format.html { redirect_to @given_taunt, notice: 'Given taunt was successfully created.' }
        format.json { render :show, status: :created, location: @given_taunt }
      else
        format.html { render :new }
        format.json { render json: @given_taunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /given_taunts/1
  # PATCH/PUT /given_taunts/1.json
  def update
    respond_to do |format|
      if @given_taunt.update(given_taunt_params)
        format.html { redirect_to @given_taunt, notice: 'Given taunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @given_taunt }
      else
        format.html { render :edit }
        format.json { render json: @given_taunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /given_taunts/1
  # DELETE /given_taunts/1.json
  def destroy
    @given_taunt.destroy
    respond_to do |format|
      format.html { redirect_to given_taunts_url, notice: 'Given taunt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_given_taunt
      @given_taunt = GivenTaunt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def given_taunt_params
      params.require(:given_taunt).permit(:available_taunt_id, :profile_id)
    end
end
