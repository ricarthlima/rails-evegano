class UsuarioBuscaComponentesController < ApplicationController
  before_action :set_usuario_busca_componente, only: [:show, :edit, :update, :destroy]

  # GET /usuario_busca_componentes
  # GET /usuario_busca_componentes.json
  def index
    @usuario_busca_componentes = UsuarioBuscaComponente.all
  end

  # GET /usuario_busca_componentes/1
  # GET /usuario_busca_componentes/1.json
  def show
  end

  # GET /usuario_busca_componentes/new
  def new
    @usuario_busca_componente = UsuarioBuscaComponente.new
  end

  # GET /usuario_busca_componentes/1/edit
  def edit
  end

  # POST /usuario_busca_componentes
  # POST /usuario_busca_componentes.json
  def create
    @usuario_busca_componente = UsuarioBuscaComponente.new(usuario_busca_componente_params)

    respond_to do |format|
      if @usuario_busca_componente.save
        format.html { redirect_to @usuario_busca_componente, notice: 'Usuario busca componente was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_busca_componente }
      else
        format.html { render :new }
        format.json { render json: @usuario_busca_componente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_busca_componentes/1
  # PATCH/PUT /usuario_busca_componentes/1.json
  def update
    respond_to do |format|
      if @usuario_busca_componente.update(usuario_busca_componente_params)
        format.html { redirect_to @usuario_busca_componente, notice: 'Usuario busca componente was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_busca_componente }
      else
        format.html { render :edit }
        format.json { render json: @usuario_busca_componente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_busca_componentes/1
  # DELETE /usuario_busca_componentes/1.json
  def destroy
    @usuario_busca_componente.destroy
    respond_to do |format|
      format.html { redirect_to usuario_busca_componentes_url, notice: 'Usuario busca componente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_busca_componente
      @usuario_busca_componente = UsuarioBuscaComponente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_busca_componente_params
      params.require(:usuario_busca_componente).permit(:usuario_id, :componente_id, :dt_busca)
    end
end
