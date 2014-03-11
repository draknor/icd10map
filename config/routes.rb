Icd10map::Application.routes.draw do

  resources :icd10dxes

  resources :icd9dxes

  root :to => "home#index"
  
end
