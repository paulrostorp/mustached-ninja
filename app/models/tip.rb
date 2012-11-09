class Tip < ActiveRecord::Base
  attr_accessible :body, :date, :tag, :plus, :min
  belongs_to :user
end
