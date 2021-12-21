class WagersController < ApplicationController
  before_action :set_wager, only: [:show, :edit, :update, :destroy]

  # GET /wagers
  # GET /wagers.json
  def index
    @wagers = Wager.all
  end

  # GET /wagers/1
  # GET /wagers/1.json
  def show
  end

  # GET /wagers/new
  def new
    @wager = Wager.new
  end

  # GET /wagers/1/edit
  def edit
  end

  # POST /wagers
  # POST /wagers.json
  def create
    @wager = Wager.new(wager_params)

    respond_to do |format|
      if @wager.save
        format.html { redirect_to @wager, notice: 'Wager was successfully created.' }
        format.json { render :show, status: :created, location: @wager }
      else
        format.html { render :new }
        format.json { render json: @wager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wagers/1
  # PATCH/PUT /wagers/1.json
  def update
    respond_to do |format|
      if @wager.update(wager_params)
        format.html { redirect_to @wager, notice: 'Wager was successfully updated.' }
        format.json { render :show, status: :ok, location: @wager }
      else
        format.html { render :edit }
        format.json { render json: @wager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wagers/1
  # DELETE /wagers/1.json
  def destroy
    @wager.destroy
    respond_to do |format|
      format.html { redirect_to wagers_url, notice: 'Wager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wager
      @wager = Wager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wager_params
      params.require(:wager).permit(:challenge_id, :description)
    end
end
