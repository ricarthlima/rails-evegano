class ProdutosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_produto, only: [:show, :edit, :update, :destroy]

  # GET /produtos
  # GET /produtos.json
  def index
    authorize! :menage, :all
    @produtos = Produto.all
  end

  # GET /produtos/1
  # GET /produtos/1.json
  def show
    UsuarioBuscaProduto.create(usuario_id: current_usuario.id, produto_id: @produto.id, dt_busca: Time.now.to_s)
  end

  # GET /produtos/new
  def new
    authorize! :menage, :all
    @ipp = params[:id]
    @produto = Produto.new
  end

  # GET /produtos/1/edit
  def edit
    authorize! :menage, :all
  end

  # POST /produtos
  # POST /produtos.json
  def create
    authorize! :menage, :all
    @produto = Produto.new(produto_params)

    respond_to do |format|
      if @produto.save
        format.html { redirect_to @produto, notice: 'Produto was successfully created.' }
        format.json { render :show, status: :created, location: @produto }
      else
        format.html { render :new }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produtos/1
  # PATCH/PUT /produtos/1.json
  def update
    authorize! :menage, :all
    respond_to do |format|
      if @produto.update(produto_params)
        format.html { redirect_to @produto, notice: 'Produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @produto }
      else
        format.html { render :edit }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produtos/1
  # DELETE /produtos/1.json
  def destroy
    authorize! :menage, :all
    @produto.destroy
    respond_to do |format|
      format.html { redirect_to produtos_url, notice: 'Produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = Produto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_params
      params.require(:produto).permit(:cod_barras, :nome, :marca_id, :descricao, :class_vegan, :justificativa)
    end
end
