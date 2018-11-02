require 'ffaker'

User.seed do |user|
  user.id = 1
  user.account = 'admin'
  user.password = '123456'
  user.password_confirmation = '123456'
  user.realname = FFaker::NameCN.name
  user.mobile = FFaker::PhoneNumberCU.e164_home_work_phone_number
  user.avatar = FFaker::Avatar.image
  user.school_id = 1
  user.kind = 0
end

10_000.times do |item|
  User.seed do |user|
    user.id = item + 2
    user.account = "user_#{item}"
    user.password = '123456'
    user.password_confirmation = '123456'
    user.realname = FFaker::NameCN.name
    user.mobile = FFaker::PhoneNumberCU.e164_home_work_phone_number
    user.avatar = FFaker::Avatar.image
    user.school_id = rand(2..10_000)
  end
end
