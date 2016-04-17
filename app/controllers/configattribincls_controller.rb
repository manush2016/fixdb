class ConfigattribinclsController < ApplicationController
  before_action :set_configattribincl, only: [:show, :edit, :update, :destroy]

  # GET /configattribincls
  # GET /configattribincls.json
  def index
    @configattribincls = Configattribincl.all
  end

  # GET /configattribincls/1
  # GET /configattribincls/1.json
  def show
  end

  # GET /configattribincls/new
  def new
    @configattribincl = Configattribincl.new
  end

  # GET /configattribincls/1/edit
  def edit
  end

  # POST /configattribincls
  # POST /configattribincls.json
  def create
    @configattribincl = Configattribincl.new(configattribincl_params)

    respond_to do |format|
      if @configattribincl.save
        format.html { redirect_to @configattribincl, notice: 'Configattribincl was successfully created.' }
        format.json { render :show, status: :created, location: @configattribincl }
      else
        format.html { render :new }
        format.json { render json: @configattribincl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /configattribincls/1
  # PATCH/PUT /configattribincls/1.json
  def update
    respond_to do |format|
      if @configattribincl.update(configattribincl_params)
        format.html { redirect_to @configattribincl, notice: 'Configattribincl was successfully updated.' }
        format.json { render :show, status: :ok, location: @configattribincl }
      else
        format.html { render :edit }
        format.json { render json: @configattribincl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configattribincls/1
  # DELETE /configattribincls/1.json
  def destroy
    @configattribincl.destroy
    respond_to do |format|
      format.html { redirect_to configattribincls_url, notice: 'Configattribincl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_configattribincl
      @configattribincl = Configattribincl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def configattribincl_params
      params.require(:configattribincl).permit(:configattribdetail_id, :th_warning, :th_critical)
    end
end