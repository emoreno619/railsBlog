class Tag < ActiveRecord::Base

	has_many :pairs, dependent: :destroy
	has_many :posts, through: :pairs

end
