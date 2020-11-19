class Major < ApplicationRecord
  belongs_to :legend, optional: true

  has_many :university_majors, dependent: :nullify
  has_many :charts, dependent: :nullify
end