Fabericious::Application.routes.draw do

  mount Lti2Tp::Engine, at: '/lti2_tp'

  resources :echoes
  resources :settings
  resources :iresources
  resources :lti_registration_wips
  resources :record_of_performances

  delete 'delete_all_record_of_performances' => 'record_of_performances#destroy_all'

  post 'lti_registrations' => 'lti_registrations#create', as: 'lti_registration'

  post 'record_of_performances', to: 'record_of_performances#create'

  root 'home#index'

end
