class Restaurant < ActiveRecord::Base 
    has_many :reservations 
    has_many :guests, through: :reservations

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true 
    validates :restaurant_name, presence: true, uniqueness: true
    validates :cuisine_type, presence: true
    validates :capacity, presence: true
end 

# restaurant.errors.full_messages
# restaurant.errors.full_messages.to_sentence