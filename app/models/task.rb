class Task < ActiveRecord::Base
  attr_accessible :description, :task
belongs_to :user
end
