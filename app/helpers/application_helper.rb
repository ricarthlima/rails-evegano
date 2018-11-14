module ApplicationHelper
    def class_pmc_vegano(i)
        case i
        when 0
            return "Vegano"
        when 1
            return "Potencialmente Não-Vegano"
        when 2
            return "Não-vegano"
        end
    end
    
    def class_usuario_vegano(i)
        case i
        when 0
            return "Vegano"
        when 1
            return "Vegetariano"
        when 2
            return "Lactovegetariano"
        when 3
            return "Ovolactovegetariano"
        else
            return "Outros"
        end
    end
    
    def class_dev(i)
        case i
        when true
            return "Desenvolvedor"
        else
            return "Não desenvolvedor"
        end
    end
end
