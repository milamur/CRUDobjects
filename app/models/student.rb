class Student < ApplicationRecord
  belongs_to :online

  validates_presence_of :name, :email
end
