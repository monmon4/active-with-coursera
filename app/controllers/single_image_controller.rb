class SingleImageController < ApplicationController
	def single_image
		@image = Slide.find_by(id: 1).image 
		@likes = Slide.find_by(id: 1).likes
		@comm = Comment.all.to_a
	end
	def liking
		numOfLikes = Slide.find_by(id: 1).likes
		Slide.find_by(id: 1).update(likes: numOfLikes+1 )
		redirect_to :single_image
	end
end
