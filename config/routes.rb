Rails.application.routes.draw do
  namespace 'api' do
    resources :users
  end
    
  namespace 'api' do
    resources :companies
  end

  namespace 'api' do
    resources :events
    # post "events/import-csv", to: "events#import_csv"
  end
  

  
end
