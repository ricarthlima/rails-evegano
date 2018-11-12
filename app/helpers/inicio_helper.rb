module InicioHelper
    def busca_vazia
        if @nome_busca == ""
            return true
        else
            return false
        end
    end
end
