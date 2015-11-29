class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments, dependent: :destroy
	validates :title, presence: true
	validates :url, presence: true
end
