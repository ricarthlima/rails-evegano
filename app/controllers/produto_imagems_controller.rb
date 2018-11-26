require "rubygems"
require "rtesseract"
  
class ProdutoImagemsController < ApplicationController
  
  before_action :set_produto_imagem, only: [:show, :edit, :update, :destroy]

  # GET /produto_imagems/1
  # GET /produto_imagems/1.json
  def show
    img = RTesseract.new(@produto_imagem.cover.path, :lang => "por")
    #Imprime o texto convertido
    @ocr =  img.to_s
    #redirect_to busca_url(@sorry)
    redirect_to controller: 'busca', action: 'buscar_ocr', ocr: @ocr
    @produto_imagem.cover = nil #Código para apagar a imagem, falta só resolver o redirect_to
    @produto_imagem.save
  end

  # GET /produto_imagems/new
  def new
    @produto_imagem = ProdutoImagem.new
    @@tipo = params[:id]
  end

  # GET /produto_imagems/1/edit
  def edit
  end

  # POST /produto_imagems
  # POST /produto_imagems.json
  def create
    @produto_imagem = ProdutoImagem.new(produto_imagem_params)
    
    if @@tipo == "rotulo"
      @produto_imagem.tipo = 0
    elsif @@tipo == "barras"
      @produto_imagem.tipo = 1
    end
   
    respond_to do |format|
      if @produto_imagem.save
        format.html { redirect_to @produto_imagem, notice: 'Produto imagem was successfully created.' }
        format.json { render :show, status: :created, location: @produto_imagem }
      else
        format.html { render :new }
        format.json { render json: @produto_imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produto_imagems/1
  # PATCH/PUT /produto_imagems/1.json
  def update
    respond_to do |format|
      if @produto_imagem.update(produto_imagem_params)
        format.html { redirect_to @produto_imagem, notice: 'Produto imagem was successfully updated.' }
        format.json { render :show, status: :ok, location: @produto_imagem }
      else
        format.html { render :edit }
        format.json { render json: @produto_imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produto_imagems/1
  # DELETE /produto_imagems/1.json
  def destroy
    @produto_imagem.destroy
    respond_to do |format|
      format.html { redirect_to produto_imagems_url, notice: 'Produto imagem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto_imagem
      @produto_imagem = ProdutoImagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_imagem_params
      params.require(:produto_imagem).permit(:titulo, :descricao, :cover)
    end
end
