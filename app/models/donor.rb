class Donor < ApplicationRecord
  belongs_to :blood_type
  belongs_to :city
  belongs_to :town
  belongs_to :branch
end
