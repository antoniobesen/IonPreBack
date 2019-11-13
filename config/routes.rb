Rails.application.routes.draw do
  resources :users
  resources :companies
  resources :events
  post "events/import-csv", to: "events#import_csv"
end
