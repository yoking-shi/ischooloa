# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_token
  has_secure_password
  extend FriendlyId
  extend Enumerize
  extend ActiveModel::Naming
  
  enumerize :kind, in: { admin: 0, normal: 1 }, default: 1, predicates: true, scope: true, i18n_scope: 'kind'

  friendly_id :slug, use: %i[slugged finders]

  belongs_to :school, counter_cache: true
end
