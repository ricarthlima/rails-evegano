class CadastroExternosController < ApplicationController
  before_action :set_cadastro_externo, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_externos
  # GET /cadastro_externos.json
  def index
    @cadastro_externos = CadastroExterno.all
  end

  # GET /cadastro_externos/1
  # GET /cadastro_externos/1.json
  def show
  end

  # GET /cadastro_externos/new
  def new
    @cadastro_externo = CadastroExterno.new
  end

  # GET /cadastro_externos/1/edit
  def edit
  end

  # POST /cadastro_externos
  # POST /cadastro_externos.json
  def create
    @cadastro_externo = CadastroExterno.new(cadastro_externo_params)

    respond_to do |format|
      if @cadastro_externo.save
        format.html { redirect_to @cadastro_externo, notice: 'Obrigado, você fez o É vegano? melhor!' }
        format.json { render :show, status: :created, location: @cadastro_externo }
      else
        format.html { render :new }
        format.json { render json: @cadastro_externo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_externos/1
  # PATCH/PUT /cadastro_externos/1.json
  def update
    respond_to do |format|
      if @cadastro_externo.update(cadastro_externo_params)
        format.html { redirect_to @cadastro_externo, notice: 'Cadastro externo was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastro_externo }
      else
        format.html { render :edit }
        format.json { render json: @cadastro_externo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_externos/1
  # DELETE /cadastro_externos/1.json
  def destroy
    @cadastro_externo.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_externos_url, notice: 'Cadastro externo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_externo
      @cadastro_externo = CadastroExterno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_externo_params
      params.require(:cadastro_externo).permit(:cod_barras, :nome, :marca, :descricao, :componentes)
    end
end
