class Song < ActiveRecord::Base
	has_many :comment
	has_many :like
	validates :song, presence: true
	validates :embed_code, presence: true
end
