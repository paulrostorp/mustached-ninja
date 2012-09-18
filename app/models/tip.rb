class Tip < ActiveRecord::Base
  attr_accessible :body, :date, :tag
  belongs_to :user
end
