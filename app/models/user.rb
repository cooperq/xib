class User < ActiveRecord::Base
  has_many :sessions
  has_many :user_projects
  has_many :projects, :through => :user_projects
end
