module SessionsHelper
  def session_list(project=false)
    @sessions = project ? Session.find_by_project_id(project).to_a : Session.find(:all)
  end

  def minutes_to_time(minutes)
    (minutes / 60).to_s + ":" + "%02d" % (minutes % 60)
  end
end

