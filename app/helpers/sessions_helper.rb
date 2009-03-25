module SessionsHelper
  def session_list(project=false)
    @sessions = project ? Session.find_by_project_id(project).to_a : Session.find(:all)
  end
end
