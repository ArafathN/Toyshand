class Toy < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    
    belongs_to :user
    has_many :sales
    has_attached_file :image

    validates_numericality_of :price,
    greater_than: 1, message: "Price must be atleast 1 euro"
end
