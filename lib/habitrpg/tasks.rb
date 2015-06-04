require 'json'

module Tasks
  def score_task(task_id, direction, task)
    post("user/tasks/#{task_id}/#{direction}", task)
  end

  def list_tasks()
    get("user/tasks")
  end

  def get_task(task_id)
    get("user/tasks/#{task_id}")
  end

  def create_task(task)
    post("user/tasks", task)
  end
end

