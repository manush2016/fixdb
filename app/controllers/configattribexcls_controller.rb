class ConfigattribexclsController < ApplicationController
  before_action :set_configattribexcl, only: [:show, :edit, :update, :destroy]

  # GET /configattribexcls
  # GET /configattribexcls.json
  def index
    @configattribexcls = Configattribexcl.all
  end

  # GET /configattribexcls/1
  # GET /configattribexcls/1.json
  def show
  end

  # GET /configattribexcls/new
  def new
    @configattribexcl = Configattribexcl.new
  end

  # GET /configattribexcls/1/edit
  def edit
  end

  # POST /configattribexcls
  # POST /configattribexcls.json
  def create
    @configattribexcl = Configattribexcl.new(configattribexcl_params)

    respond_to do |format|
      if @configattribexcl.save
        format.html { redirect_to @configattribexcl, notice: 'Configattribexcl was successfully created.' }
        format.json { render :show, status: :created, location: @configattribexcl }
      else
        format.html { render :new }
        format.json { render json: @configattribexcl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /configattribexcls/1
  # PATCH/PUT /configattribexcls/1.json
  def update
    respond_to do |format|
      if @configattribexcl.update(configattribexcl_params)
        format.html { redirect_to @configattribexcl, notice: 'Configattribexcl was successfully updated.' }
        format.json { render :show, status: :ok, location: @configattribexcl }
      else
        format.html { render :edit }
        format.json { render json: @configattribexcl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configattribexcls/1
  # DELETE /configattribexcls/1.json
  def destroy
    @configattribexcl.destroy
    respond_to do |format|
      format.html { redirect_to configattribexcls_url, notice: 'Configattribexcl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_configattribexcl
      @configattribexcl = Configattribexcl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def configattribexcl_params
      params.require(:configattribexcl).permit(:configattribdetail_id, :excludemonitor)
    end
end
