class Comment < ActiveRecord::Base
  belongs_to :program
  belongs_to :event
end
