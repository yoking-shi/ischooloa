require 'ffaker'

10_000.times do |item|
  User.seed do |user|
    user.id = item + 1
    user.account = "user_#{item}"
    user.password = '123456'
    user.password_confirmation = '123456'
    user.email = FFaker::Internet.email
    user.qq = rand(2..10_000)
    user.mobile = FFaker::PhoneNumberCU.e164_home_work_phone_number
  end
end
