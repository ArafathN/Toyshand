class Sale < ApplicationRecord
    before_create :populate_uuid

    belongs_to :toy
    validates_numericality of :price
    greater _than: 49, message: "Price must be atleast 50 cents"
    
    private

    def populate_uuid
        self.uuid = SecureRandom.uuid()
    end

end
