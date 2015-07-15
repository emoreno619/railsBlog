class Post < ActiveRecord::Base

	has_many :pairs, dependent: :destroy
  	has_many :tags, through: :pairs

end
