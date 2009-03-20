module SessionsHelper
  def session_list(project)
    @sessions = project ? Session.find(:all, :options => {:project_id => project.id}) : Session.find(:all)
  end
end
