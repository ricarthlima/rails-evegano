class UsuarioBuscaMarcasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_usuario_busca_marca, only: [:show, :edit, :update, :destroy]

  # GET /usuario_busca_marcas
  # GET /usuario_busca_marcas.json
  def index
    authorize! :menage, :all
    @usuario_busca_marcas = UsuarioBuscaMarca.all
  end

  # GET /usuario_busca_marcas/1
  # GET /usuario_busca_marcas/1.json
  def show
    authorize! :menage, :all
  end

  # GET /usuario_busca_marcas/new
  def new
    authorize! :menage, :all
    @usuario_busca_marca = UsuarioBuscaMarca.new
  end

  # GET /usuario_busca_marcas/1/edit
  def edit
    authorize! :menage, :all
  end

  # POST /usuario_busca_marcas
  # POST /usuario_busca_marcas.json
  def create
    authorize! :menage, :all
    @usuario_busca_marca = UsuarioBuscaMarca.new(usuario_busca_marca_params)

    respond_to do |format|
      if @usuario_busca_marca.save
        format.html { redirect_to @usuario_busca_marca, notice: 'Usuario busca marca was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_busca_marca }
      else
        format.html { render :new }
        format.json { render json: @usuario_busca_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_busca_marcas/1
  # PATCH/PUT /usuario_busca_marcas/1.json
  def update
    authorize! :menage, :all
    respond_to do |format|
      if @usuario_busca_marca.update(usuario_busca_marca_params)
        format.html { redirect_to @usuario_busca_marca, notice: 'Usuario busca marca was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_busca_marca }
      else
        format.html { render :edit }
        format.json { render json: @usuario_busca_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_busca_marcas/1
  # DELETE /usuario_busca_marcas/1.json
  def destroy
    authorize! :menage, :all
    @usuario_busca_marca.destroy
    respond_to do |format|
      format.html { redirect_to usuario_busca_marcas_url, notice: 'Usuario busca marca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_busca_marca
      @usuario_busca_marca = UsuarioBuscaMarca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_busca_marca_params
      params.require(:usuario_busca_marca).permit(:usuario_id, :marca_id, :dt_busca)
    end
end
