class ProdutoImagem < ApplicationRecord
    has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/logo.png"
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/
end
