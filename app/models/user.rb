class User < ApplicationRecord
  attr_accessor :renember_token, :reset_token

  has_many :films, dependent: :destroy

  validates :name, presence: true, length: {maximum: Settings.user.name_max_length,
  message: :user_name_maxlength}
end
