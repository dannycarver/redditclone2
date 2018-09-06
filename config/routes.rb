Rails.application.routes.draw do
 root 'subs#index'
 resources :subs do
  resources :topics
 end
 get'/people',to:'people#index', as: 'all_the_people'
 get'/person/:id',to:'people#show', as: 'the_one_person'
 delete'/person/:id',to:'people#destroy', as: 'destroy_the_person'
end
