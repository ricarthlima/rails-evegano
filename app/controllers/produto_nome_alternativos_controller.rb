class ProdutoNomeAlternativosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_produto_nome_alternativo, only: [:show, :edit, :update, :destroy]

  # GET /produto_nome_alternativos
  # GET /produto_nome_alternativos.json
  def index
    @produto_nome_alternativos = ProdutoNomeAlternativo.all
  end

  # GET /produto_nome_alternativos/1
  # GET /produto_nome_alternativos/1.json
  def show
  end

  # GET /produto_nome_alternativos/new
  def new
    @produto_nome_alternativo = ProdutoNomeAlternativo.new
  end

  # GET /produto_nome_alternativos/1/edit
  def edit
  end

  # POST /produto_nome_alternativos
  # POST /produto_nome_alternativos.json
  def create
    @produto_nome_alternativo = ProdutoNomeAlternativo.new(produto_nome_alternativo_params)

    respond_to do |format|
      if @produto_nome_alternativo.save
        format.html { redirect_to @produto_nome_alternativo, notice: 'Produto nome alternativo was successfully created.' }
        format.json { render :show, status: :created, location: @produto_nome_alternativo }
      else
        format.html { render :new }
        format.json { render json: @produto_nome_alternativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produto_nome_alternativos/1
  # PATCH/PUT /produto_nome_alternativos/1.json
  def update
    respond_to do |format|
      if @produto_nome_alternativo.update(produto_nome_alternativo_params)
        format.html { redirect_to @produto_nome_alternativo, notice: 'Produto nome alternativo was successfully updated.' }
        format.json { render :show, status: :ok, location: @produto_nome_alternativo }
      else
        format.html { render :edit }
        format.json { render json: @produto_nome_alternativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produto_nome_alternativos/1
  # DELETE /produto_nome_alternativos/1.json
  def destroy
    @produto_nome_alternativo.destroy
    respond_to do |format|
      format.html { redirect_to produto_nome_alternativos_url, notice: 'Produto nome alternativo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto_nome_alternativo
      @produto_nome_alternativo = ProdutoNomeAlternativo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_nome_alternativo_params
      params.require(:produto_nome_alternativo).permit(:produto_id, :nome_alternativo)
    end
end
