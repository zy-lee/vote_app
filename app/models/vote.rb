class Vote < ActiveRecord::Base
	belongs_to :vote_pic 
	validates :remote_ip, uniqueness: false 
end
