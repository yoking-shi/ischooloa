# frozen_string_literal: true

require 'ffaker'

School.seed do |school|
  school.id = 1
  school.name = FFaker::CompanyCN.name
  school.address = FFaker::AddressJA.address
  school.logo = FFaker::Avatar.image
end

10_000.times do |item|
  School.seed do |school|
    school.id = item + 2
    school.name = FFaker::CompanyCN.name
    school.address = FFaker::AddressJA.address
    school.logo = FFaker::Avatar.image
  end
end
