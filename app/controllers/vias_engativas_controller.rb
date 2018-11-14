class ViasEngativasController < ApplicationController
  before_action :set_vias_engativa, only: [:show, :edit, :update, :destroy]

  # GET /vias_engativas
  # GET /vias_engativas.json
  def index
    #@vias_engativas = ViasEngativa.all
    query = "SELECT ST_X((dp).geom) AS lon, ST_Y((dp).geom) AS lat FROM (SELECT ST_DumpPoints(geom) AS dp from vias_engativas) AS qr"
    @vias_engativas = ActiveRecord::Base.connection.execute(query)
    render json: {data:@vias_engativas},status: :ok 
  end

  # GET /vias_engativas/1
  # GET /vias_engativas/1.json
  def show
  end

  # GET /vias_engativas/new
  def new
    @vias_engativa = ViasEngativa.new
  end

  # GET /vias_engativas/1/edit
  def edit
  end

  # POST /vias_engativas
  # POST /vias_engativas.json
  def create
    @vias_engativa = ViasEngativa.new(vias_engativa_params)

    respond_to do |format|
      if @vias_engativa.save
        format.html { redirect_to @vias_engativa, notice: 'Vias engativa was successfully created.' }
        format.json { render :show, status: :created, location: @vias_engativa }
      else
        format.html { render :new }
        format.json { render json: @vias_engativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vias_engativas/1
  # PATCH/PUT /vias_engativas/1.json
  def update
    respond_to do |format|
      if @vias_engativa.update(vias_engativa_params)
        format.html { redirect_to @vias_engativa, notice: 'Vias engativa was successfully updated.' }
        format.json { render :show, status: :ok, location: @vias_engativa }
      else
        format.html { render :edit }
        format.json { render json: @vias_engativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vias_engativas/1
  # DELETE /vias_engativas/1.json
  def destroy
    @vias_engativa.destroy
    respond_to do |format|
      format.html { redirect_to vias_engativas_url, notice: 'Vias engativa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vias_engativa
      @vias_engativa = ViasEngativa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vias_engativa_params
      params.require(:vias_engativa).permit(:mviccalzadad)
    end
end
