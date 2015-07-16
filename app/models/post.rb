class Post < ActiveRecord::Base
	belongs_to :user
	
	has_many :pairs, dependent: :destroy
  	has_many :tags, through: :pairs

end
