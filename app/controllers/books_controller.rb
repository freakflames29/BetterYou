class BooksController < ApplicationController
	before_action :set_user_point_for_current_user ,only:[:index]
	def index
		@books=Book.all
	end

	def set_user_point_for_current_user
		if logged_in?
			@userpoint=UserPoint.find_by(user:current_user).points
		end
	end
end