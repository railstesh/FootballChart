class Team < ApplicationRecord
  validates :team_name, uniqueness: true, presence: true
end
