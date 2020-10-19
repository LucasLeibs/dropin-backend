class User < ApplicationRecord
    
    has_many :events 
    has_many :attendings
    has_many :attending_events, through: :attendings, source: :event
  
    has_many :comments
    has_many :commented_events, through: :comments, source: :event
    
   
    has_secure_password
    has_one_attached :file
    validates_presence_of :password
    validates_presence_of :email
    validates_uniqueness_of :email
end
