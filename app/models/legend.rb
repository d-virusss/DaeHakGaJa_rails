class Legend < ApplicationRecord
  has_many :majors, dependent: :nullify
end
