class UsuarioAvaliaMarcasController < ApplicationController
  before_action :set_usuario_avalia_marca, only: [:show, :edit, :update, :destroy]

  # GET /usuario_avalia_marcas
  # GET /usuario_avalia_marcas.json
  def index
    @usuario_avalia_marcas = UsuarioAvaliaMarca.all
  end

  # GET /usuario_avalia_marcas/1
  # GET /usuario_avalia_marcas/1.json
  def show
  end

  # GET /usuario_avalia_marcas/new
  def new
    @usuario_avalia_marca = UsuarioAvaliaMarca.new
  end

  # GET /usuario_avalia_marcas/1/edit
  def edit
  end

  # POST /usuario_avalia_marcas
  # POST /usuario_avalia_marcas.json
  def create
    @usuario_avalia_marca = UsuarioAvaliaMarca.new(usuario_avalia_marca_params)

    respond_to do |format|
      if @usuario_avalia_marca.save
        format.html { redirect_to @usuario_avalia_marca, notice: 'Usuario avalia marca was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_avalia_marca }
      else
        format.html { render :new }
        format.json { render json: @usuario_avalia_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_avalia_marcas/1
  # PATCH/PUT /usuario_avalia_marcas/1.json
  def update
    respond_to do |format|
      if @usuario_avalia_marca.update(usuario_avalia_marca_params)
        format.html { redirect_to @usuario_avalia_marca, notice: 'Usuario avalia marca was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_avalia_marca }
      else
        format.html { render :edit }
        format.json { render json: @usuario_avalia_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_avalia_marcas/1
  # DELETE /usuario_avalia_marcas/1.json
  def destroy
    @usuario_avalia_marca.destroy
    respond_to do |format|
      format.html { redirect_to usuario_avalia_marcas_url, notice: 'Usuario avalia marca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_avalia_marca
      @usuario_avalia_marca = UsuarioAvaliaMarca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_avalia_marca_params
      params.require(:usuario_avalia_marca).permit(:usuario_id, :marca_id, :estrelas, :comentario, :dt_avaliacao)
    end
end
