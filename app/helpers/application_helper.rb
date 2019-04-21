module ApplicationHelper
    def class_pmc_vegano(i)
        case i
        when 0
            return "É vegano!"
        when 1
            return "Potencialmente não vegano!"
        when 2
            return "Não vegano!"
        end
    end
    
    def class_pmc_vegano_image(i)
        case i
        when 0
            return "logos/logo-512.png"
        when 1
            return "warning.png"
        when 2
            return "cancel.png"
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
    
    def provider_to_name(prov)
        case prov.to_s
        when "facebook"
            return "Facebook"
        when "google_oauth2"
            return "Google"
        end
    end
    
    
    #Para o login no modal!
    
    def resource_name
        :usuario
    end
    
    def resource
        @resource ||= Usuario.new
    end
    
    def resource_class
      Usuario
    end
    
    def devise_mapping
        @devise_mapping ||= Devise.mappings[:usuario]
    end
end
