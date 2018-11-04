class MarcaPertenceMarcasController < ApplicationController
  before_action :set_marca_pertence_marca, only: [:show, :edit, :update, :destroy]

  # GET /marca_pertence_marcas
  # GET /marca_pertence_marcas.json
  def index
    @marca_pertence_marcas = MarcaPertenceMarca.all
  end

  # GET /marca_pertence_marcas/1
  # GET /marca_pertence_marcas/1.json
  def show
  end

  # GET /marca_pertence_marcas/new
  def new
    @marca_pertence_marca = MarcaPertenceMarca.new
  end

  # GET /marca_pertence_marcas/1/edit
  def edit
  end

  # POST /marca_pertence_marcas
  # POST /marca_pertence_marcas.json
  def create
    @marca_pertence_marca = MarcaPertenceMarca.new(marca_pertence_marca_params)

    respond_to do |format|
      if @marca_pertence_marca.save
        format.html { redirect_to @marca_pertence_marca, notice: 'Marca pertence marca was successfully created.' }
        format.json { render :show, status: :created, location: @marca_pertence_marca }
      else
        format.html { render :new }
        format.json { render json: @marca_pertence_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marca_pertence_marcas/1
  # PATCH/PUT /marca_pertence_marcas/1.json
  def update
    respond_to do |format|
      if @marca_pertence_marca.update(marca_pertence_marca_params)
        format.html { redirect_to @marca_pertence_marca, notice: 'Marca pertence marca was successfully updated.' }
        format.json { render :show, status: :ok, location: @marca_pertence_marca }
      else
        format.html { render :edit }
        format.json { render json: @marca_pertence_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marca_pertence_marcas/1
  # DELETE /marca_pertence_marcas/1.json
  def destroy
    @marca_pertence_marca.destroy
    respond_to do |format|
      format.html { redirect_to marca_pertence_marcas_url, notice: 'Marca pertence marca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marca_pertence_marca
      @marca_pertence_marca = MarcaPertenceMarca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marca_pertence_marca_params
      params.require(:marca_pertence_marca).permit(:marca_id, :marca_id)
    end
end
