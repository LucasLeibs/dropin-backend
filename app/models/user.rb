class User < ApplicationRecord
    has_many :events 
    has_many :attendings
    has_many :attending_events, through: :attendings, source: :event
    has_many :bookmarks
    has_many :bookmarked__events, through: :bookmarks, source: :event

    has_secure_password
    validates_presence_of :password
    validates_presence_of :email
    validates_uniqueness_of :email
end
