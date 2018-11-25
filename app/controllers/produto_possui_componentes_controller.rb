class ProdutoPossuiComponentesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_produto_possui_componente, only: [:show, :edit, :update, :destroy]

  # GET /produto_possui_componentes
  # GET /produto_possui_componentes.json
  def index
    @produto_possui_componentes = ProdutoPossuiComponente.all
  end

  # GET /produto_possui_componentes/1
  # GET /produto_possui_componentes/1.json
  def show
  end

  # GET /produto_possui_componentes/new
  def new
    @produto_possui_componente = ProdutoPossuiComponente.new
  end

  # GET /produto_possui_componentes/1/edit
  def edit
  end

  # POST /produto_possui_componentes
  # POST /produto_possui_componentes.json
  def create
    @produto_possui_componente = ProdutoPossuiComponente.new(produto_possui_componente_params)

    respond_to do |format|
      if @produto_possui_componente.save
        format.html { redirect_to @produto_possui_componente, notice: 'Produto possui componente was successfully created.' }
        format.json { render :show, status: :created, location: @produto_possui_componente }
      else
        format.html { render :new }
        format.json { render json: @produto_possui_componente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produto_possui_componentes/1
  # PATCH/PUT /produto_possui_componentes/1.json
  def update
    respond_to do |format|
      if @produto_possui_componente.update(produto_possui_componente_params)
        format.html { redirect_to @produto_possui_componente, notice: 'Produto possui componente was successfully updated.' }
        format.json { render :show, status: :ok, location: @produto_possui_componente }
      else
        format.html { render :edit }
        format.json { render json: @produto_possui_componente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produto_possui_componentes/1
  # DELETE /produto_possui_componentes/1.json
  def destroy
    @produto_possui_componente.destroy
    respond_to do |format|
      format.html { redirect_to produto_possui_componentes_url, notice: 'Produto possui componente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto_possui_componente
      @produto_possui_componente = ProdutoPossuiComponente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_possui_componente_params
      params.require(:produto_possui_componente).permit(:produto_id, :componente_id)
    end
end
