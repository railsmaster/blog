class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy

	has_many :comment_counts, class_name: "Comment"

	validates :name, :content, presence: true, length: {minimum: 5}

	def self.all_posts
		self.all
	end

	def post_name
		name 
	end
end
