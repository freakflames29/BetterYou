class TopusersController < ApplicationController
	def top_users
		@users_points=UserPoint.all
		@all_points=[]
		@users_points.each do |up|
			@all_points << up.points.to_i
		end
		@all_points.sort!.reverse!
	end
end