class ComponentesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_componente, only: [:show, :edit, :update, :destroy]

  def valido?
    errors.add(:nome, "não pode ficar em branco") if componente.nome == "" or componente.nome == nil
  end
  # GET /componentes
  # GET /componentes.json
  def index
    @componentes = Componente.all
  end

  # GET /componentes/1
  # GET /componentes/1.json
  def show
  end

  # GET /componentes/new
  def new
    @componente = Componente.new
  end

  # GET /componentes/1/edit
  def edit
  end

  # POST /componentes
  # POST /componentes.json
  def create
    @componente = Componente.new(componente_params)

    respond_to do |format|
      if @componente.save
        format.html { redirect_to @componente, notice: 'Componente was successfully created.' }
        format.json { render :show, status: :created, location: @componente }
      else
        format.html { render :new }
        format.json { render json: @componente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /componentes/1
  # PATCH/PUT /componentes/1.json
  def update
    respond_to do |format|
      if @componente.update(componente_params)
        format.html { redirect_to @componente, notice: 'Componente was successfully updated.' }
        format.json { render :show, status: :ok, location: @componente }
      else
        format.html { render :edit }
        format.json { render json: @componente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /componentes/1
  # DELETE /componentes/1.json
  def destroy
    @componente.destroy
    respond_to do |format|
      format.html { redirect_to componentes_url, notice: 'Componente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_componente
      @componente = Componente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def componente_params
      params.require(:componente).permit(:cod_europeu, :cod_INS, :nome, :descricao, :class_vegan, :justificativa)
    end
end
