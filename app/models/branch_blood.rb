class BranchBlood < ApplicationRecord
  belongs_to :branch
  belongs_to :city
  belongs_to :blood_type
end
