class FedsController < ApplicationController
  before_action :set_fed, only: [:show, :edit, :update, :destroy]


  def maxLen
    l = 0
    Fed.all.each do |f|
      if f.ate.length > l
	l = f.ate.length
      end
    end
    puts l
    return l
  end

  helper_method :maxLen

  # GET /feds
  # GET /feds.json
  def index
    @feds = Fed.all
  end

  # GET /feds/1
  # GET /feds/1.json
  def show
  end

  # GET /feds/new
  def new
    @fed = Fed.new
  end

  # GET /feds/1/edit
  def edit
  end

  # POST /feds
  # POST /feds.json
  def create
    @fed = Fed.new(fed_params)

    respond_to do |format|
      if @fed.save
        format.html { redirect_to @fed, notice: 'Fed was successfully created.' }
        format.json { render :show, status: :created, location: @fed }
      else
        format.html { render :new }
        format.json { render json: @fed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feds/1
  # PATCH/PUT /feds/1.json
  def update
    respond_to do |format|
      if @fed.update(fed_params)
        format.html { redirect_to @fed, notice: 'Fed was successfully updated.' }
        format.json { render :show, status: :ok, location: @fed }
      else
        format.html { render :edit }
        format.json { render json: @fed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feds/1
  # DELETE /feds/1.json
  def destroy
    @fed.destroy
    respond_to do |format|
      format.html { redirect_to feds_url, notice: 'Fed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fed
      @fed = Fed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fed_params
      params.require(:fed).permit(:date, :buyer, :ate)
    end
end
