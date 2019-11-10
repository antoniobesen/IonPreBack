Rails.application.routes.draw do
  namespace 'api' do
    resources :users
  end
  namespace 'api' do
    resources :companies
  end
  namespace 'api' do
    resources :events
  end
end
