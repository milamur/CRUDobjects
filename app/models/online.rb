class Online < ApplicationRecord
    has_many :students

    validates_presence_of :class_name, :hours_per_week
    validates :class_name, length: {minimum:1, maximum:8}
end
