class TopsController < ApplicationController
	def index
		@comments = Comment.where(page: 1)
	end
end
