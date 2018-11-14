module ProdutoImagemsHelper
    def class_tipo_imagem(i)
        case i
        when 0
            return "Rótulo"
        when 1
            return "Código de Barras"
        end
    end
end
