class VotePic < ActiveRecord::Base
	has_many :votes,dependent: :destroy
	SRC_REGEX = /\A\d{2}\.png\z/i
	validates :src, presence: true, format: { with: SRC_REGEX}
end
