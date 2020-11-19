class University < ApplicationRecord
  has_many :university_majors, dependent: :nullify
end
