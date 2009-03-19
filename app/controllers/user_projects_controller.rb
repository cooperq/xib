class UserProjectsController < ApplicationController
  # GET /user_projects
  # GET /user_projects.xml
  def index
    @user_projects = UserProjects.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_projects }
    end
  end

  # GET /user_projects/1
  # GET /user_projects/1.xml
  def show
    @user_projects = UserProjects.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_projects }
    end
  end

  # GET /user_projects/new
  # GET /user_projects/new.xml
  def new
    @user_projects = UserProjects.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_projects }
    end
  end

  # GET /user_projects/1/edit
  def edit
    @user_projects = UserProjects.find(params[:id])
  end

  # POST /user_projects
  # POST /user_projects.xml
  def create
    @user_projects = UserProjects.new(params[:user_projects])

    respond_to do |format|
      if @user_projects.save
        flash[:notice] = 'UserProjects was successfully created.'
        format.html { redirect_to(@user_projects) }
        format.xml  { render :xml => @user_projects, :status => :created, :location => @user_projects }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_projects.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_projects/1
  # PUT /user_projects/1.xml
  def update
    @user_projects = UserProjects.find(params[:id])

    respond_to do |format|
      if @user_projects.update_attributes(params[:user_projects])
        flash[:notice] = 'UserProjects was successfully updated.'
        format.html { redirect_to(@user_projects) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_projects.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_projects/1
  # DELETE /user_projects/1.xml
  def destroy
    @user_projects = UserProjects.find(params[:id])
    @user_projects.destroy

    respond_to do |format|
      format.html { redirect_to(user_projects_url) }
      format.xml  { head :ok }
    end
  end
end
