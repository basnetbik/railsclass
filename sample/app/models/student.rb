class Student < ActiveRecord::Base
  attr_accessible :name, :program_id
  validates :name, :presence => "true"
  belongs_to :program
end
