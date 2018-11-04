class ComponenteNomeAlternativosController < ApplicationController
  before_action :set_componente_nome_alternativo, only: [:show, :edit, :update, :destroy]

  # GET /componente_nome_alternativos
  # GET /componente_nome_alternativos.json
  def index
    @componente_nome_alternativos = ComponenteNomeAlternativo.all
  end

  # GET /componente_nome_alternativos/1
  # GET /componente_nome_alternativos/1.json
  def show
  end

  # GET /componente_nome_alternativos/new
  def new
    @componente_nome_alternativo = ComponenteNomeAlternativo.new
  end

  # GET /componente_nome_alternativos/1/edit
  def edit
  end

  # POST /componente_nome_alternativos
  # POST /componente_nome_alternativos.json
  def create
    @componente_nome_alternativo = ComponenteNomeAlternativo.new(componente_nome_alternativo_params)

    respond_to do |format|
      if @componente_nome_alternativo.save
        format.html { redirect_to @componente_nome_alternativo, notice: 'Componente nome alternativo was successfully created.' }
        format.json { render :show, status: :created, location: @componente_nome_alternativo }
      else
        format.html { render :new }
        format.json { render json: @componente_nome_alternativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /componente_nome_alternativos/1
  # PATCH/PUT /componente_nome_alternativos/1.json
  def update
    respond_to do |format|
      if @componente_nome_alternativo.update(componente_nome_alternativo_params)
        format.html { redirect_to @componente_nome_alternativo, notice: 'Componente nome alternativo was successfully updated.' }
        format.json { render :show, status: :ok, location: @componente_nome_alternativo }
      else
        format.html { render :edit }
        format.json { render json: @componente_nome_alternativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /componente_nome_alternativos/1
  # DELETE /componente_nome_alternativos/1.json
  def destroy
    @componente_nome_alternativo.destroy
    respond_to do |format|
      format.html { redirect_to componente_nome_alternativos_url, notice: 'Componente nome alternativo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_componente_nome_alternativo
      @componente_nome_alternativo = ComponenteNomeAlternativo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def componente_nome_alternativo_params
      params.require(:componente_nome_alternativo).permit(:componente_id, :nome_alternativo)
    end
end
