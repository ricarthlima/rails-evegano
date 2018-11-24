class Componente < ApplicationRecord
    def valid
        errors.add(:nome, "não pode ficar em branco") if nome == "" or nome.nil?
        errors.add(:descricao, "não pode ficar em branco") if descricao == "" or descricao.nil?
        errors.add(:class_vegan, "não pode ficar em branco") if class_vegan.nil?
        errors.add(:justificativa, "não pode ficar em branco") if justificativa == "" or justificativa.nil?
    end
end
