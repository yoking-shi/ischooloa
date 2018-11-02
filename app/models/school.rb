class School < ApplicationRecord
  extend FriendlyId
  friendly_id :uuid, use: %i[slugged finders]

  has_many :users, dependent: :destroy
end
