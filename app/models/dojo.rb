class Dojo < ActiveRecord::Base
    has_many :ninjas, dependent: :destroy 
    validates :name, :city, :state, presence: true
    validates :name, :city, :state, length: { minimum: 2 }
end
