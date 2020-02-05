class Student < ApplicationRecord
    validates :name, presence: true
    validates :mod, :inclusion => 1..5
end
