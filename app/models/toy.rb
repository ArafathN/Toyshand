class Toy < ApplicationRecord
    belongs_to :user
    has_many :sales
    has_attached_file :image
end
