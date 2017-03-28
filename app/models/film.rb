class Film < ApplicationRecord
  belongs_to :user

  enum type: [:cartoon, :action, :sport]

end
