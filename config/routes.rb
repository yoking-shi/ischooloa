Rails.application.routes.draw do
  namespace :admin do
    root "dashboard#index"
  end
end
