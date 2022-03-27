class TopusersController < ApplicationController
	def top_users
		@users_points=UserPoint.order('points DESC').limit(5)
	end
end
