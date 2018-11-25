class UsuarioBuscaProdutosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_usuario_busca_produto, only: [:show, :edit, :update, :destroy]

  # GET /usuario_busca_produtos
  # GET /usuario_busca_produtos.json
  def index
    authorize! :menage, :all
    @usuario_busca_produtos = UsuarioBuscaProduto.all
  end

  # GET /usuario_busca_produtos/1
  # GET /usuario_busca_produtos/1.json
  def show
    authorize! :menage, :all
  end

  # GET /usuario_busca_produtos/new
  def new
    authorize! :menage, :all
    @usuario_busca_produto = UsuarioBuscaProduto.new
  end

  # GET /usuario_busca_produtos/1/edit
  def edit
    authorize! :menage, :all
  end

  # POST /usuario_busca_produtos
  # POST /usuario_busca_produtos.json
  def create
    authorize! :menage, :all
    @usuario_busca_produto = UsuarioBuscaProduto.new(usuario_busca_produto_params)

    respond_to do |format|
      if @usuario_busca_produto.save
        format.html { redirect_to @usuario_busca_produto, notice: 'Usuario busca produto was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_busca_produto }
      else
        format.html { render :new }
        format.json { render json: @usuario_busca_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_busca_produtos/1
  # PATCH/PUT /usuario_busca_produtos/1.json
  def update
    authorize! :menage, :all
    respond_to do |format|
      if @usuario_busca_produto.update(usuario_busca_produto_params)
        format.html { redirect_to @usuario_busca_produto, notice: 'Usuario busca produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_busca_produto }
      else
        format.html { render :edit }
        format.json { render json: @usuario_busca_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_busca_produtos/1
  # DELETE /usuario_busca_produtos/1.json
  def destroy
    authorize! :menage, :all
    @usuario_busca_produto.destroy
    respond_to do |format|
      format.html { redirect_to usuario_busca_produtos_url, notice: 'Usuario busca produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_busca_produto
      @usuario_busca_produto = UsuarioBuscaProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_busca_produto_params
      params.require(:usuario_busca_produto).permit(:usuario_id, :produto_id, :dt_busca)
    end
end
