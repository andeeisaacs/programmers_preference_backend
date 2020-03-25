class Programmer < ApplicationRecord
     validates :name, :age, presence: true
     validates :name, length: {minimum: 3 }
end
