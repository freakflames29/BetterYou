class WelcomeController < ApplicationController
  before_action :require_user ,only:[:today_task]
  def index; end

  def gen_random_task
    # gentraate random no task from db and save it usertask
    random_number = rand(Task.count) + 1
    task_is = Task.find random_number.to_i
    @challenge = UserTask.new user: current_user, task: task_is
    @challenge.save
  end


  def check_if_this_is_new_day

    task_list_of_user = UserTask.where user: current_user
    if task_list_of_user.size >0 &&  task_list_of_user.last.created_at.to_date < Time.now.to_date 
      task_list_of_user.last.update(status:'pending')
      gen_random_task
    end

  end



  def today_task
    check_if_this_is_new_day

    task_list_of_user = UserTask.where user: current_user
    if task_list_of_user.size > 0
      if !task_list_of_user.last.status.eql?('pending')

        if task_list_of_user.last.status.eql?('done') && (task_list_of_user.last.created_at.to_date.eql?(task_list_of_user.last.updated_at.to_date))

          @challenge=nil

        elsif task_list_of_user.last.status.eql?('canceled') && (task_list_of_user.last.created_at.to_date.eql?(task_list_of_user.last.updated_at.to_date))
          
            @challenge=nil

        end

      else
        # then task is already the allocated task
        @challenge = task_list_of_user.last

      end
    else
      # generate a random new task for user
      gen_random_task

    end
  end
  
end

# note
# aj ami ekane rak6 karon ami jei code ta like6 ote check kra66 jodi ajker date jodi last taskeer updated_at er date er theke besi hy tale new task gen kro otherwise the logic jta te task jodi na thake tle notun task dao ar jodi task thake tle dekho j task status pending a6 kina jodi na thake tle deko status done kina ar updated_at ki created_at er same kina tale notun task ar noy noile notun task abar dao