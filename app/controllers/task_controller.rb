class TaskController < ApplicationController
  def win
    ut = UserTask.where user: current_user
    user = UserPoint.find_by user: current_user
    new_status = 'done'
    ut.last.status = new_status
    points = user.points.to_i + ut.last.task.points.to_i
    user.points = points.to_s
    # puts '*********-----*****---***--- '+ut.last.status+'-------------------------'

    if ut.last.update(status:'done') && user.save
      flash[:ok] = 'Bravo ! you did it! and you earned ' + ut.last.task.points + ' 	points'
      puts '*********-----*****---***--- '+ut.last.status+'-------------------------'
      redirect_to user_path current_user
      # render plain:ut.last.inspect
    else
      redirect_to root_path
    end
  end

  def lose; end
end
